using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_TrangChu
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadChitietsanpham();
            }
        }
        public void loadChitietsanpham()
        {
            int matin = 6;
            FvChitiet.DataSource = News_Controller.ViewByChiTiet(matin);
            FvChitiet.DataBind();
        }
    }
}