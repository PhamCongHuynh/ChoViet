using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;

namespace ChoViet_QuanTri.MasterPage
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadmenu(); 
            }
        }
        public void loadmenu()
        {
            int id=1;
            //int idd = int.Parse(Session["id"].ToString());
            //Account_Manager_Controller ac = new Account_Manager_Controller();
            //var tk = ac.GetById(idd).ToList();
            //string role = tk.FirstOrDefault().position.ToString() ;
            ////Session["id"] = idd;
            Control menu = new Control();
            //role.Equals("1")
            if(id==1)
            {
                menu = Page.LoadControl("~/MenuAdmin.ascx");
            }
            else if (id==2)
            {
                menu = Page.LoadControl("~/MenuQuanTri.ascx");
            }
            phMenu.Controls.Add(menu);
        }
    }
}