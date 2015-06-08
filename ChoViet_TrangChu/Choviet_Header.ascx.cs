﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;
using DATA;

namespace ChoViet_TrangChu
{
    public partial class Header : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadRegions();
                hirenButton();
            }

        }
        
        public void loadRegions()
        {
            Regions_Controller re = new Regions_Controller();
            var listds = re.GetALLRegions();
            foreach (Regions obj in listds)
            {
                Drkhuvuc.Items.Add(new ListItem(obj.Name.ToString(), obj.Id.ToString()));
            }
        }
        //ẩn hiện button đăng nhập hoặc đăng xuất 

        public void hirenButton()
        {
            if (!Session["id"].ToString().Equals(""))
            {              
                btnlogin.Visible = false;
                btnlogout.Visible = true;
            }
            else
            {
                btnlogin.Visible = true;
                btnlogout.Visible = false;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = txtemail.Text;
            string matkhau = txtpass.Text;
            Boolean flag = Account_Member_Controller.CheckAccount(email, matkhau);
            if (flag)
            {               
                int ids = checkids(email);
                Session["id"] = ids;
                Response.Redirect("ChoViet_DoiThongTinCaNhan.aspx");
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
        public int checkids(string emails)
        {
            
            var list = Account_Member_Controller.CheckIdAccount(emails);
            int ma = list.FirstOrDefault().Id;
            return ma;
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session["id"] = "";
            Response.Redirect("index.aspx");
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            //Response.Redirect("product_search.aspx?ma=1");
            ////try
            ////{
            ////    Response.Redirect("product_search.aspx?id=1");
            ////}
            ////catch(Exception)
            ////{
            ////    Response.Redirect(Request.RawUrl);
            ////}

            Response.Redirect("product_search.aspx?key=" + txtseacrch.Text + "&kv=" + Drkhuvuc.SelectedValue);
        }
    }
}