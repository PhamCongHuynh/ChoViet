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
            
            var list = News_Controller.ViewLastProduct();
            PagedDataSource pgitems = new PagedDataSource();
            //System.Data.DataView dv = new System.Data.DataView(list);
            pgitems.DataSource = list;
            pgitems.AllowPaging = true;
            pgitems.PageSize = 18;
            pgitems.CurrentPageIndex = PageNumber;
            if (pgitems.PageCount > 1)
            {
                rptPages.Visible = true;
                System.Collections.ArrayList pages = new System.Collections.ArrayList();
                for (int i = 0; i < pgitems.PageCount; i++)
                    pages.Add((i + 1).ToString());
                rptPages.DataSource = pages;
                rptPages.DataBind();
            }
            else
            rptPages.Visible = false;
            DLlatestproducts.DataSource= pgitems;
            //DLlatestproducts.DataSource = News_Controller.ViewLastProduct();
            DLlatestproducts.DataBind();
        }
        public void DanhsachDacBiet()
        {
            DLDanhSachDB.DataSource = News_Controller.ViewSPnoibat();
            DLDanhSachDB.DataBind();
        }
        public int PageNumber
        {
            get
            {
                if (ViewState["PageNumber"] != null)
                    return Convert.ToInt32(ViewState["PageNumber"]);
                else
                    return 0;
            }
            set
            {
                ViewState["PageNumber"] = value;
            }
        }
        protected void rptPages_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {
            PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
            DanhsachLaterProduct();
        }
    }
}