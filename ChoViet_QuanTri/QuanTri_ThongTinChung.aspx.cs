﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChoViet_QuanTri
{
    public partial class Admin_TinQuangCao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                checkID();
            }
        }
        public void checkID()
        {
            if (Session["id"].ToString() == "")
            {
                Response.Redirect("index.aspx");
            }
            
        }
    }
}