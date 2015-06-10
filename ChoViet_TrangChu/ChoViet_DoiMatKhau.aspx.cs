using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_TrangChu
{
    public partial class ChoViet_DoiMatKhau : System.Web.UI.Page
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

        protected void btnthaydoi_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(Session["id"].ToString());
            Account_Member_Controller.changesMK(txtmatkhaumoi.Text, id);
            lblthongbao.Text = "Thay đổi mật khẩu thành công !";
        }

    }
}