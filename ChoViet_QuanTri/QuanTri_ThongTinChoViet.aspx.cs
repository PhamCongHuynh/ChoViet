using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_QuanTri
{
    public partial class QuanTri_ThongTinChoViet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadDSthongtin();
            }

        }
        public void loadDSthongtin()
        {
            grdsthongtin.DataSource=Information_controller.getQTInforALL();
            grdsthongtin.DataBind();
        }

        protected void grdsthongtin_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdsthongtin.PageIndex = e.NewPageIndex;
            loadDSthongtin();
        }
    }
}