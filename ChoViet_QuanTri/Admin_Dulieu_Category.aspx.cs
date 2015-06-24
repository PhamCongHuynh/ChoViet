using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;


namespace ChoViet_QuanTri
{
    public partial class Admin_Dulieu_Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loaddanhmuc();
            }
        }

        protected void grDSdanhmuc_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            grDSdanhmuc.PageIndex = e.NewSelectedIndex;
            loaddanhmuc();

        }

        public void loaddanhmuc()
        {
            Category_Controller ca = new Category_Controller();
            grDSdanhmuc.DataSource = ca.getAll().ToList();
            grDSdanhmuc.DataBind();
            lbltongketqua.Text = grDSdanhmuc.Rows.Count.ToString();
        }

        protected void grDSdanhmuc_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.Cells[1].Text == "1")
                {
                    e.Row.Cells[1].Text = "Bất động sản";
                }
                else if (e.Row.Cells[1].Text == "2")
                    e.Row.Cells[1].Text = "Thuê, cho thuê nhà";
                else if (e.Row.Cells[1].Text == "3")
                    e.Row.Cells[1].Text = "Ô tô, xe máy";
                else if (e.Row.Cells[1].Text == "4")
                    e.Row.Cells[1].Text = "Điện máy";
                else if (e.Row.Cells[1].Text == "5")
                    e.Row.Cells[1].Text = "Điện thoại, chợ sim";
                else if (e.Row.Cells[1].Text == "6")
                    e.Row.Cells[1].Text = "Đồ gia dụng, quần áo, phụ kiện";
                else if (e.Row.Cells[1].Text == "7")
                    e.Row.Cells[1].Text = "Giải trí, thể thao, sở thích";
                else if (e.Row.Cells[1].Text == "8")
                    e.Row.Cells[1].Text = "Việc làm, dịch vụ, du lịch";
                else if (e.Row.Cells[1].Text == "9")
                    e.Row.Cells[1].Text = "Các loại khác";
                else 
                    e.Row.Cells[1].Text = "----";
            }
        }
    }
}