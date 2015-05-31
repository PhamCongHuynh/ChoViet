using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;
namespace ChoViet_TrangChu
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadsup();
            }
        }
        public void loadsup()
        {
            //Supports_controller obj=new Supports_controller();

            Grsup.DataSource =Supports_controller.QTGetALL();
            Grsup.DataBind();
        }

    }
}