using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_TrangChu
{
    public partial class Choviet_rule : System.Web.UI.Page
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
            int matt = Int32.Parse(Request.QueryString["matt"].ToString());
            thongtinchoviet.DataSource = Information_controller.getByInforID(matt);
            thongtinchoviet.DataBind();
        }
    }
}