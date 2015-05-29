using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_QuanTri
{
    public partial class QuanTri_HoTroKhachHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadDShotrokhachhang();
            }
        }
        public void loadDShotrokhachhang()
        {
            Grdanhsachhotrokhachhang.DataSource = Supports_controller.getQTSupALL();
            Grdanhsachhotrokhachhang.DataBind();
        }

        protected void Grdanhsachhotrokhachhang_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Grdanhsachhotrokhachhang.PageIndex = e.NewPageIndex;
            loadDShotrokhachhang();
        }

    }
}