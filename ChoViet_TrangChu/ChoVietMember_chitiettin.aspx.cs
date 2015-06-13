using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_TrangChu
{
    public partial class ChoVietMember_chitiettin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loaddulieu();
            }
        }
        public void loaddulieu()
        {
            int id = Int32.Parse(Request.QueryString["matin"]);
            rpdulieu.DataSource = News_Controller.ViewByChiTiet(id);
            rpdulieu.DataBind();
        }

        protected void btnxoa_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(Request.QueryString["matin"]);
            News_Controller news = new News_Controller();
            news.Delete(id);
            Response.Redirect("ChoViet_Member.aspx");
        }
    }
}