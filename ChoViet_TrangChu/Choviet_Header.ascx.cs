using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;
using DATA;

namespace ChoViet_TrangChu
{
    public partial class Header : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadRegions();
            }

        }
        public void loadRegions()
        {
            Regions_Controller re = new Regions_Controller();
            var listds = re.GetALLRegions();
            foreach (Regions obj in listds)
            {
                DrCatgory.Items.Add(new ListItem(obj.Name.ToString(), obj.Id.ToString()));
            }

        }
    }
}