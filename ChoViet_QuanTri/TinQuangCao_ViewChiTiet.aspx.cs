using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_QuanTri
{
    public partial class TinQuangCao_ViewChiTiet : System.Web.UI.Page
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
            int id = Int32.Parse(Request.QueryString["matin"]);
            rechitiettin.DataSource= News_Controller.ViewChiTietTinQLByCategoryID(id);
            rechitiettin.DataBind();
        }

        protected void btnduyet_Click(object sender, EventArgs e)
        {
            int idsp = Int32.Parse(Request.QueryString["matin"]);
            int idmana = Int32.Parse(Session["id"].ToString());
            News_Controller.updateDuyet(idsp," ","1",DateTime.Now.ToString(),DateTime.Now.ToString(),idmana);
            Response.Redirect("QuanTri_TinQuangCao.aspx");
        }

        protected void btnxoa_Click(object sender, EventArgs e)
        {
            int idmatin = Int32.Parse(Request.QueryString["matin"]);
            News_Controller obj = new News_Controller();
            obj.Delete(idmatin);
            Response.Redirect("QuanTri_TinQuangCao.aspx");
        }

        protected void btnxacnhanchoduyet_Click(object sender, EventArgs e)
        {
            int idsp = Int32.Parse(Request.QueryString["matin"]);
            int idmana = Int32.Parse(Session["id"].ToString());
            News_Controller.updateDuyet(idsp,txtghichuchoduyet.Text, "2", DateTime.Now.ToString()," ", idmana);
            Response.Redirect("QuanTri_TinQuangCao.aspx");
        }

        protected void btnvipham_Click(object sender, EventArgs e)
        {
            int idsp = Int32.Parse(Request.QueryString["matin"]);
            int idmana = Int32.Parse(Session["id"].ToString());
            News_Controller.updateDuyet(idsp, txtghichuchoduyet.Text, "3", DateTime.Now.ToString(), " ", idmana);
            Response.Redirect("QuanTri_TinQuangCao.aspx");
        }
    }
}