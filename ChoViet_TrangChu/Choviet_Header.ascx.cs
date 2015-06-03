using System;
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
                DrCatgory.Items.Add(new ListItem(obj.Name.ToString(), obj.Id.ToString()));
            }
        }
        public void hirenButton()
        {
            if (Session["id"].ToString() != "")
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
                //Account_Manager_Controller ac = new Account_Manager_Controller();
                //var tk = ac.GetById(mataikhoan).ToList();
                //int idd = tk.FirstOrDefault().Id;
                //Session["id"] =idd;
                int id = checkids(email);
                HttpCookie cookieID = new HttpCookie("id");
                cookieID.Value = id.ToString();
                cookieID.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(cookieID);
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
            string[] cookies = Request.Cookies.AllKeys;
            foreach (string cookie in cookies)
            {
                Response.Cookies[cookie].Expires = DateTime.Now.AddDays(-1);
                Response.Redirect(Request.RawUrl);
            }
        }
    }
}