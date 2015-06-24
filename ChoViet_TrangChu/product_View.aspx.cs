using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;
using DATA;
using System.Data;

namespace ChoViet_TrangChu
{
    public partial class product_View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                //loadDatalistview();
                //loadDLblockview();
                LoadData();
            }

        }
        //public void loadDatalistview()
        //{
        //    int madanhmuc = 1;
        //    DLListView.DataSource = News_Controller.ViewByproduct(madanhmuc);
        //    DLListView.DataBind();
        //}
        //public void loadDLblockview()
        //{
        //    int madanhmuc = 1;
        //    DLblockView.DataSource = News_Controller.ViewByproduct(madanhmuc);
        //    DLblockView.DataBind();
        //}

        public void LoadData()
                {
                    int mdanhmuc = Int32.Parse(Request.QueryString["idc"].ToString());
                    var list = News_Controller.ViewByproduct(mdanhmuc);
                    PagedDataSource pgitems = new PagedDataSource();
                    //System.Data.DataView dv = new System.Data.DataView(list);
                    pgitems.DataSource = list;
                    pgitems.AllowPaging = true;
                    pgitems.PageSize =18;
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
                    lbltongsptim.Text = DLListView.Items.Count.ToString();
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
                    LoadData();
                }
               
    }
}