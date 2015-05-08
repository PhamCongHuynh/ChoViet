using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_QuanTri
{
    public partial class Admin_PhanCongCongViec : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadphancong();
            }

        }
        public void loadphancong()
        {
            Grphancong.DataSource = Schedule_Controller.GetPhanCong();
            Grphancong.DataBind();
        }
    }
}