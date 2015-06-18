using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_TrangChu
{
    public partial class product_detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadChitietsanpham();
                
                loadDLview();
            }
        }
        public void loadChitietsanpham()
        {
            int mid = Int32.Parse(Request.QueryString["matinid"].ToString());
            RPChitiet.DataSource = News_Controller.ViewByChiTiet(mid);
            RPChitiet.DataBind();
        }

        public void loadDLview()
        {
           
            int mid = Int32.Parse(Request.QueryString["matinid"].ToString());
            //string madm = checkanhmuc(mid);
            int madanhmuc =News_Controller.kiemtraDM(mid);
            var list = News_Controller.ViewByproduct(madanhmuc);
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
            DLListView.DataSource = pgitems;
            DLblockView.DataSource = pgitems;
            DLListView.DataBind();
            DLblockView.DataBind();            
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
            loadDLview();
        }
        public string checkanhmuc(int masp)
        {
            News_Controller obj=new News_Controller();
            var list =obj.GetById(masp);
            string madm = list.FirstOrDefault().Category.Id.ToString();
            return madm;
        }
    }
}