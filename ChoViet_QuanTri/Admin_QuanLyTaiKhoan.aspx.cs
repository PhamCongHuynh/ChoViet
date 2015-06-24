using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_QuanTri
{
    public partial class Admin_QuanLyTaiKhoan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadDS();
            }
        }

        public void loadDS()
        {
            Account_Manager_Controller ac=new Account_Manager_Controller();
            DSTaiKhoan.DataSource = ac.getALL();
            DSTaiKhoan.DataBind();
            lbltongketqua.Text = DSTaiKhoan.Rows.Count.ToString();
        }

        protected void DSTaiKhoan_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.Cells[4].Text == "1")
                {
                    e.Row.Cells[4].Text = "Admin";
                    e.Row.Cells[7].Enabled = false;
                }                  
                else if (e.Row.Cells[4].Text == "2")
                    e.Row.Cells[4].Text = "Quản trị viên";
                else
                    e.Row.Cells[4].Text = "Nhân viên";
            }
        }

        protected void DSTaiKhoan_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("Admin_ChiTiet_taikhoan.aspx?manv=" + DSTaiKhoan.DataKeys[e.NewEditIndex]["Id"].ToString());
        }

        protected void DSTaiKhoan_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int idsma = Int32.Parse(e.Keys[0].ToString());
            Account_Manager_Controller ac = new Account_Manager_Controller();
            ac.Delete(idsma);
            Response.Redirect(Request.RawUrl);
        }
    }
}