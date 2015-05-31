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
    public partial class Choviet_Dangtin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndangky_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                News obj = new News();
                obj.Account_Members.Id = 1;
                obj.Account_Members.email =txtemail.Text;
                //obj.Account_Members.phonenumber;
                obj.Address_contact = txtdiachi.Text;

            }
        }
        public string UploadImage(FileUpload files)
        {
            string pathfile="";
            if(!files.HasFile)
            {
                string fileName = DateTime.Now.ToString("ddMMyyyy_hhmmss_tt_") + files.FileName;
                string filePath = MapPath("images/" + fileName);
                files.SaveAs(filePath);
                pathfile=fileName;
            }
            return pathfile;
        }

    }
}