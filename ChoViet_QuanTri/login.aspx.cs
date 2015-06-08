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
            int mataikhoan = Int32.Parse(txttmaaikhoan.Text);
            string matkhau = txtmatkhau.Text;
            Boolean flag = Account_Manager_Controller.CheckAccount(mataikhoan, matkhau);
            if (flag)
            {
                Session["id"] = mataikhoan;
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}