using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_QuanTri
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndangnhap_Click(object sender, EventArgs e)
        {
            //int mataikhoan = Int32.Parse(txttmaaikhoan.Text.ToString());
            //string matkhau = txtmatkhau.Text;
            //Boolean flag = Account_Manager_Controller.CheckAccount(mataikhoan, matkhau);
            //if(flag)
            //{
            //    //Account_Manager_Controller ac = new Account_Manager_Controller();
            //    //var tk = ac.GetById(mataikhoan).ToList();
            //    //int idd = tk.FirstOrDefault().Id;
            //    //Session["id"] =idd;
            //    HttpCookie cookieID = new HttpCookie("id");
            //    cookieID.Value = mataikhoan.ToString();
            //    cookieID.Expires = DateTime.Now.AddDays(1);
            //    Response.Cookies.Add(cookieID);
            //    Response.Redirect("index.aspx");
            //}
            //else
            //{
            //    string loi = "Ma tai khoan hoac mat khau khong dung";
            //    Response.Redirect("login.aspx");
            //}
        }
    }
}