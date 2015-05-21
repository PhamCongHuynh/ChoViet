using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChoViet_QuanTri
{
    public partial class CapMoiTaiKhoanNhanVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
              
        }

        protected void btlxacnhan_Click(object sender, EventArgs e)
        {
            lbtxthoten.Text = txthoten.Text;
            lbtxtemail.Text = txtemail.Text;
            lblsodienthoai.Text = txtsodienthoai.Text;
            lbltxtchucvu.Text = drchucvu.SelectedValue.ToString();
            lbltxtngaysinh.Text = txtngaysinh.Text;
            lbltxtdiachi.Text = txtdiachi.Text;
            lbltxtdanhmuc.Text = drdanhmucquanly.SelectedItem.ToString();
        }
    }
}