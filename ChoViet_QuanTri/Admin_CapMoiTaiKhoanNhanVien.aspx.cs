using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;
using DATA;

namespace ChoViet_QuanTri
{
    public partial class CapMoiTaiKhoanNhanVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
              
        }

        protected void btlxacnhan_Click(object sender, EventArgs e)
        {
            Account_Manager ac = new Account_Manager();
            ac.name = txthoten.Text;
            ac.email = txtemail.Text;
            ac.phonenumber = txtsodienthoai.Text;
            ac.position = drchucvu.SelectedValue;
            ac.datecreate = DateTime.Now.ToString();
            Account_Manager_Controller acm = new Account_Manager_Controller();
            acm.InsertAC(ac);
            Response.Redirect("Admin_phancong.aspx?email="+txtemail.Text);
        }
        
    }
}