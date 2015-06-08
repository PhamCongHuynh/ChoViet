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
            if(!IsPostBack)
            {
                loaddanhmuc();
                loadkhuvuc();
            }

        }

        protected void btndangky_Click(object sender, EventArgs e)
        {
            
            if (Page.IsValid)
            {
                int idMA=1;
                int idME = Int32.Parse(Session["id"].ToString());
                int idCA = Int32.Parse(Drchuyenmuc.SelectedValue);
                int idRE = Int32.Parse(Drvung.SelectedValue);             
                News_Controller.insertNew(txthoten.Text, txtsodienthoai.Text, txtemail.Text, txtdiachi.Text, rdloaitin.SelectedValue, txttuade.Text, txtnoidung.Text, UploadImage(image1), UploadImage(image2), UploadImage(image3), UploadImage(image4), UploadImage(image5), UploadImage(image6),txtgia.Text,txtcachthanhtoan.Text,txtvanchuyen.Text,DateTime.Now.ToString(),idMA,idME,idCA,idRE);      
            }
        }
        public string UploadImage(FileUpload files)
        {
            string pathfile="";
            if(files.HasFile)
            {
                string fileName = DateTime.Now.ToString("ddMMyyyy_hhmmss_tt_") + files.FileName;
                string filePath = MapPath("~/Images/" + fileName);
                files.SaveAs(filePath);
                pathfile=fileName;
            }
            return pathfile;
        }
        public void loadkhuvuc()
        {
            Regions_Controller re = new Regions_Controller();
            var listds = re.GetALLRegions();
            foreach (Regions obj in listds)
            {
                Drvung.Items.Add(new ListItem(obj.Name.ToString(), obj.Id.ToString()));
            }
        }
        public void loaddanhmuc()
        {
            var listds = Category_Controller.getCategory();
            foreach (Category obj in listds)
            {
                Drchuyenmuc.Items.Add(new ListItem(obj.name.ToString(), obj.Id.ToString()));
            }
        }

    }
}