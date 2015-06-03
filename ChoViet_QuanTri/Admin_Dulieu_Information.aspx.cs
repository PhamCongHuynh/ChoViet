using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_QuanTri
{
    public partial class Admin_Dulieu_Information : System.Web.UI.Page
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
            grDSthongtin.DataSource = Information_controller.getQTInforALL();
            grDSthongtin.DataBind();
        }

        protected void grDSthongtin_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grDSthongtin.PageIndex = e.NewPageIndex;
            loadthongtin();
        }

        protected void grDSthongtin_RowCreated(object sender, GridViewRowEventArgs e)
        {
            Response.Redirect("Admin_Create_Dulieu_Thongtin.aspx");
        }

       

    }
}