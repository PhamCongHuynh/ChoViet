using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_QuanTri
{
    public partial class QuanTri_TinQuangCao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadDanhsachtinQC();
            }
        }
        public void loadDanhsachtinQC()
        {
            int cate = 1;
            int idm = Int32.Parse(Session["id"].ToString());
            var list = Schedule_Controller.checkCategory(idm);
            string tyle_qc ="1";
            GrdanhSachtinquangcao.DataSource = News_Controller.QTViewDSProduct(cate,tyle_qc);
            GrdanhSachtinquangcao.DataBind();
        }

        protected void GrdanhSachtinquangcao_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GrdanhSachtinquangcao.PageIndex = e.NewPageIndex;
            loadDanhsachtinQC();
        }
        protected void GrdanhSachtinquangcao_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("TinQuangCao_ViewChiTiet.aspx?matin=" + GrdanhSachtinquangcao.DataKeys[e.NewEditIndex]["matin"].ToString());
        }

        protected void GrdanhSachtinquangcao_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.Cells[2].Text == "1")
                    e.Row.Cells[2].Text = "Cần bán";
                else if (e.Row.Cells[2].Text == "2")
                    e.Row.Cells[2].Text = "Cần mua";
                else if (e.Row.Cells[2].Text == "3")
                    e.Row.Cells[2].Text = "Cần thuê";
                else
                    e.Row.Cells[2].Text = "khác";
            }
        }

        protected void GrdanhSachtinquangcao_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int ma = Int32.Parse(e.Keys[0].ToString());
            //int ma = Convert.ToInt32(Grdanhsach.DataKeys[Matin].Value);
            News_Controller news = new News_Controller();
            news.Delete(ma);
            Response.Redirect(Request.RawUrl);
            lblthongbao.Text = "Bạn vừa xóa 1 tập tin ! ";
        }
    }
}