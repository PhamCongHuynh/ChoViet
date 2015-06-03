using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DATA;
using BUSINESS;

namespace ChoViet_TrangChu
{
    public partial class ChoViet_LienHe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btngui_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                Support obj = new Support();
                obj.name_cus = txtname.Text;
                obj.phone_cus = txtsodienthoai.Text;
                obj.email_cus = txtemail.Text;
                obj.title = txttieude.Text;
                obj.content = txtnoidung.Text;
                obj.datecreate = DateTime.Now.ToString();
                Supports_controller sups = new Supports_controller();
                sups.InsertSup(obj);
                Response.Redirect(Request.RawUrl);
            }
        }
        
    }
}