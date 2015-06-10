using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_QuanTri
{
    public partial class QuanTri_DoiMK : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnthaydoi_Click(object sender, EventArgs e)
        {

            int idma = Int32.Parse(Session["id"].ToString());
            Account_Manager_Controller.changesMK(txtmatkhaumoi.Text,idma);
            lblthongbao.Text = "Thay đổi mật khẩu thành công !";
        }
    }
}