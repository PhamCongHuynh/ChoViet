using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_QuanTri
{
    public partial class QuanTri_ThongTinNguoiDung : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadDanhSachNguoiDung();
            }
        }

        public void loadDanhSachNguoiDung()
        {
            Account_Member_Controller ac=new Account_Member_Controller();
            Grdanhsachnguoidung.DataSource = ac.getALL().ToList();
            Grdanhsachnguoidung.DataBind();
        }
   
    }
}