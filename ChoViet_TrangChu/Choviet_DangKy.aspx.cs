using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DATA;
using BUSINESS;

namespace ChoViet_TrangChu
{
    public partial class Choviet_DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndangky_Click(object sender, EventArgs e)
        {
            Account_Member acm = new Account_Member();
            acm.name = txthoten.Text;
            acm.email = txtemail.Text;
            acm.password = txtmatkhau.Text;
            acm.phonenumber = txtsodienthoai.Text;
            acm.address = txtdiachi.Text;
            acm.birthday = txtngaysinh.Text;
            acm.gender = Drgioitinh.SelectedValue.ToString();
            acm.datecreate = DateTime.Now.ToString(" ddd - yyyy.MM.dd HH:mm:ss");
            Account_Member_Controller sccontroll = new Account_Member_Controller();
            sccontroll.insertMember(acm);

        }
    }
}