﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_QuanTri
{
    public partial class QuanTri_TinQuangCao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadDanhsachtinQC();
            }
        }
        public void loadDanhsachtinQC()
        {
            int cate = 1;
            string tyle_qc ="0";
            GrdanhSachtinquangcao.DataSource = News_Controller.QTViewDSProduct(cate,tyle_qc);
            GrdanhSachtinquangcao.DataBind();
        }
    }
}