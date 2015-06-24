using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_QuanTri
{
    public partial class QuanTri_ThongTinNguoiDung : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadDanhSachNguoiDung();
            }
        }

        public void loadDanhSachNguoiDung()
        {
            Account_Member_Controller ac=new Account_Member_Controller();
            Grdanhsachnguoidung.DataSource = ac.getALL().ToList();
            Grdanhsachnguoidung.DataBind();
            lbltongketqua.Text = Grdanhsachnguoidung.Rows.Count.ToString();
        }

        protected void Grdanhsachnguoidung_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int ma = Int32.Parse(e.Keys[0].ToString());
            News_Controller.xoatintheonguoidung(ma);
            Account_Member_Controller ac = new Account_Member_Controller();
            ac.Delete(ma);            
            Response.Redirect(Request.RawUrl);
            lblthongbao.Text = "Bạn vừa xóa 1 tập tin ! ";
        }

        protected void Grdanhsachnguoidung_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("Admin_NguoiDung_Chitiet.aspx?matv=" + Grdanhsachnguoidung.DataKeys[e.NewEditIndex]["Id"].ToString());
        }
   
    }
}