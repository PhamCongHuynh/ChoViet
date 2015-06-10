using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_TrangChu
{
    public partial class ChoViet_DoiThongTinCaNhan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                checkID();
            }
        }
        public void checkID()
        {
            if (Session["id"].ToString().Equals(""))
            {
                Response.Redirect("index.aspx");
            }

        }
        public void loadcheck()
        {
            txtid.Text = Session["id"].ToString();
            txtemail.Text = Session["email"].ToString();
        }

        protected void btnluulai_Click(object sender, EventArgs e)
        {
            int idtk = Int32.Parse(Session["id"].ToString());
            Account_Member_Controller.UpdateTK(txthovaten.Text,txtsodienthoai.Text,idtk);
            lblthongbao.Text = "Thay đổi thông tin thành công !";
        }
    }
}