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
        }

        protected void DSTaiKhoan_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.Cells[4].Text == "1")
                    e.Row.Cells[4].Text = "Admin";
                else if (e.Row.Cells[4].Text == "2")
                    e.Row.Cells[4].Text = "Quản trị viên";
                else
                    e.Row.Cells[4].Text = "Nhân viên";
            }
        }
    }
}