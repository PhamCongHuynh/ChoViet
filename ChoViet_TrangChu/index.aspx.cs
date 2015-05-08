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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DanhsachLaterProduct();
                DanhsachDacBiet();

            }
        }
        
        public void DanhsachLaterProduct()
        {
            DLlatestproducts.DataSource = News_Controller.ViewLastProduct();
            DLlatestproducts.DataBind();
        }
        public void DanhsachDacBiet()
        {
            DLDanhSachDB.DataSource = News_Controller.ViewSPnoibat();
            DLDanhSachDB.DataBind();
        }
    }
}