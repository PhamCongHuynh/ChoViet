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
            lbltongketqua.Text = Grphancong.Rows.Count.ToString();
        }

        protected void Grphancong_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("Admin_Phanconglai.aspx?maid=" + Grphancong.DataKeys[e.NewEditIndex]["ID"].ToString());
        }    

        protected void Grphancong_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.Cells[3].Text == "1")
                {
                    e.Row.Cells[3].Text = "Admin";
                }
                else if (e.Row.Cells[3].Text == "2")
                    e.Row.Cells[3].Text = "Quản trị viên";
                else
                    e.Row.Cells[3].Text = "Nhân viên";
            }
        }
    }
}