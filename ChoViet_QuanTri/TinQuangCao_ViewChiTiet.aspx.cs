using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_QuanTri
{
    public partial class TinQuangCao_ViewChiTiet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadthongtin();
            }
        }
        public void loadthongtin()
        {
            int id = Int32.Parse(Request.QueryString["matin"]);
            rechitiettin.DataSource= News_Controller.ViewChiTietTinQLByCategoryID(id);
            rechitiettin.DataBind();
        }
    }
}