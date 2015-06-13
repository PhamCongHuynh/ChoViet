using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_TrangChu
{
    public partial class ChoViet_Member : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                checkID();
                loadDanhSachNew();
            }
        }
        public void loadDanhSachNew()
        {
            int tv=Int32.Parse(Session["id"].ToString());
            //string st_new_id = Request.QueryString["status_id"];
            string st_new_id = "0";
            Grdanhsach.DataSource = News_Controller.NewsNguoiDungBy(tv,st_new_id);
            Grdanhsach.DataBind();
        }

        protected void Grdanhsach_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Grdanhsach.PageIndex = e.NewPageIndex;
            loadDanhSachNew();
        }
        public void checkID()
        {
            if (Session["id"].ToString().Equals(""))
            {
                Response.Redirect("index.aspx");
            }

        }

        protected void Grdanhsach_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
           int ma = Int32.Parse(e.Keys[0].ToString());
           //int ma = Convert.ToInt32(Grdanhsach.DataKeys[Matin].Value);
           News_Controller news = new News_Controller();
           news.Delete(ma);
           
           lblthongbao.Text = "Bạn vừa xóa 1 tập tin ! ";
        }

        protected void Grdanhsach_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.Cells[4].Text == "0")
                    e.Row.Cells[4].Text = "Chưa duyệt";
                else if (e.Row.Cells[4].Text == "1")
                    e.Row.Cells[4].Text = "Đã duyệt";
                else if (e.Row.Cells[4].Text == "2")
                    e.Row.Cells[4].Text = "Đang xem xét";
                else
                    e.Row.Cells[4].Text = "Từ chối";
            }
        }

        protected void Grdanhsach_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("ChoVietMember_chitiettin.aspx?matin=" + Grdanhsach.DataKeys[e.NewEditIndex]["Matin"].ToString());
        }

      
       

    }
}