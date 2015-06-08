using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChoViet_TrangChu
{
    public partial class Choviet_Thongtinchung : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                checkID();
            }
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