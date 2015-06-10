﻿using System;
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
            int matin = 6;
            RPChitiet.DataSource = News_Controller.ViewByChiTiet(matin);
            RPChitiet.DataBind();
        }

        public void loadDLview()
        {
            int madanhmuc = 1;
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
    }
}