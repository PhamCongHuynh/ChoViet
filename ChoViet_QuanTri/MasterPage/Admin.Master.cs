using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_QuanTri.MasterPage
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                checkid();
                loadmenu(); 
            }
        }
        public void loadmenu()
        {
            
            int id = int.Parse(Session["id"].ToString());
            Account_Manager_Controller ac = new Account_Manager_Controller();
            var tk = ac.GetById(id).ToList();
            string role = tk.FirstOrDefault().position.ToString() ;
            string name = tk.FirstOrDefault().name.ToString();
            btncanhan.Text = name;
            Control menu = new Control();
            
            if(role.Equals("1"))
            {
                menu = Page.LoadControl("~/MenuAdmin.ascx");
            }
            else if (role.Equals("2"))
            {
                menu = Page.LoadControl("~/MenuQuanTri.ascx");
            }
            phMenu.Controls.Add(menu);
        }
        public void checkid()
        {
            if(Session["id"].ToString().Equals(""))
            {
                Response.Redirect("login.aspx");
            }
        }
   
        //public string checkids()
        //{
        //    int id = Int32.Parse(Session["id"].ToString());
        //    var list = Account_Manager_Controller.CheckIdAccount(id);
        //    string name = list.FirstOrDefault().name;
        //    return name;
        //}

        protected void btnthoat_Click(object sender, EventArgs e)
        {
            Session["id"] = "";
            Response.Redirect("login.aspx");
        }
    }
}