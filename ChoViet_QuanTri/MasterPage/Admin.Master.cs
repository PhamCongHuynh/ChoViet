using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChoViet_QuanTri.MasterPage
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadmenu(); 
            }
        }
        public void loadmenu()
        {
            Control menu = new Control();
            int id=1;
            if(id==1)
            {
                menu = Page.LoadControl("~/MenuAdmin.ascx");
            }
            else if(id==0)
            {
                menu = Page.LoadControl("~/MenuQuanTri.ascx");
            }
            phMenu.Controls.Add(menu);
        }
    }
}