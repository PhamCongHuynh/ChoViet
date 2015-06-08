using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_TrangChu
{
    public partial class ChoViet_Member : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                checkID();
                loadDanhSachNew();
            }
        }
        public void loadDanhSachNew()
        {
            string st_new_id = Request.QueryString["status_id"];
            Grdanhsach.DataSource = News_Controller.NewsNguoiDungBy(1,st_new_id);
            Grdanhsach.DataBind();
        }

        protected void Grdanhsach_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Grdanhsach.PageIndex = e.NewPageIndex;
            loadDanhSachNew();
        }
        public void checkID()
        {
            if (Session["id"].ToString().Equals(""))
            {
                Response.Redirect("index.aspx");
            }

        }
       

    }
}