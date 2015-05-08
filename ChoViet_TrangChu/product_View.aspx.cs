using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_TrangChu
{
    public partial class product_View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadDatalistview();
                loadDLblockview();
            }

        }
        public void loadDatalistview()
        {
            int madanhmuc = 1;
            DLListView.DataSource = News_Controller.ViewByproduct(madanhmuc);
            DLListView.DataBind();
        }
        public void loadDLblockview()
        {
            int madanhmuc = 1;
            DLblockView.DataSource = News_Controller.ViewByproduct(madanhmuc);
            DLblockView.DataBind();
        }
    }
}