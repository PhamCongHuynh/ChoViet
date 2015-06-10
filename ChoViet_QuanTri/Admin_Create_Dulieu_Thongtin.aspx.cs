using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;
using DATA;


namespace ChoViet_QuanTri
{
    public partial class Admin_Create_Dulieu_Thongtin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnluu_Click(object sender, EventArgs e)
        {                    
            if(Page.IsValid)
            {
                int id_mana =Int32.Parse(Session["id"].ToString());
                Information_controller.InsertInfNew(txttitle.Text,Ftnoidung.Text,id_mana);
                Response.Redirect("Admin_Dulieu_Information.aspx");
            }         
        }
    }
}