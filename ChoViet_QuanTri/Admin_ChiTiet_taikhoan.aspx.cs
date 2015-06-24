using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_QuanTri
{
    public partial class Admin_ChiTiet_taikhoan : System.Web.UI.Page
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
            int manv = Int32.Parse(Request.QueryString["manv"].ToString());
            Account_Manager_Controller ac = new Account_Manager_Controller();
            rechitiettaikhoan.DataSource = ac.GetById(manv);
            rechitiettaikhoan.DataBind();
        }
    }
}