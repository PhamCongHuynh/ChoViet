using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;


namespace ChoViet_QuanTri
{
    public partial class Admin_Dulieu_Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loaddanhmuc();
            }
        }

        protected void grDSdanhmuc_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            grDSdanhmuc.PageIndex = e.NewSelectedIndex;
            loaddanhmuc();
        }

        public void loaddanhmuc()
        {
            Category_Controller ca = new Category_Controller();
            grDSdanhmuc.DataSource = ca.getAll().ToList();
            grDSdanhmuc.DataBind();
        }
    }
}