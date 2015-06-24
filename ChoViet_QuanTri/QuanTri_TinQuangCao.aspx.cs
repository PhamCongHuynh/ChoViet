using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;
using System.Collections;
using DATA;

namespace ChoViet_QuanTri
{
    public partial class QuanTri_TinQuangCao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadkhuvuc();
                loadDanhsachtinQC();
            }
        }
        public void loadkhuvuc()
        {
            Regions_Controller re = new Regions_Controller();
            var listds = re.GetALLRegions();
            foreach (Regions obj in listds)
            {
                Drkhuvuc.Items.Add(new ListItem(obj.Name.ToString(), obj.Id.ToString()));
            }
        }
        public void loadDanhsachtinQC()
        {
            
            int idm = Int32.Parse(Session["id"].ToString());
           
            int ca = Schedule_Controller.kiemtraCategory(idm);
                      
            string statu_new = Request.QueryString["mt"].ToString();
            var query=News_Controller.QTViewDSProduct(ca,statu_new);
            GrdanhSachtinquangcao.DataSource = query;
            GrdanhSachtinquangcao.DataBind();
            int dem = 0;
            foreach(var cout in query)
            {
                dem = dem + 1;
            }
            //lbltongketqua.Text = GrdanhSachtinquangcao.Rows.Count.ToString();
            lbltongketqua.Text = dem.ToString();
        }
        protected void GrdanhSachtinquangcao_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GrdanhSachtinquangcao.PageIndex = e.NewPageIndex;
            loadDanhsachtinQC();
        }
        protected void GrdanhSachtinquangcao_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("TinQuangCao_ViewChiTiet.aspx?matin=" + GrdanhSachtinquangcao.DataKeys[e.NewEditIndex]["matin"].ToString());
        }
        protected void GrdanhSachtinquangcao_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.Cells[2].Text == "1")
                    e.Row.Cells[2].Text = "Cần mua";
                else if (e.Row.Cells[2].Text == "2")
                    e.Row.Cells[2].Text = "Cần bán";
                else if (e.Row.Cells[2].Text == "3")
                    e.Row.Cells[2].Text = "Cần thuê";
                else
                    e.Row.Cells[2].Text = "khác";
            }
        }

        protected void GrdanhSachtinquangcao_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int ma = Int32.Parse(e.Keys[0].ToString());
            //int ma = Convert.ToInt32(Grdanhsach.DataKeys[Matin].Value);
            News_Controller news = new News_Controller();
            news.Delete(ma);
            Response.Redirect(Request.RawUrl);
            lblthongbao.Text = "Bạn vừa xóa 1 tập tin ! ";
        }

        protected void btbtimkiem_Click(object sender, EventArgs e)
        {
            int idm = Int32.Parse(Session["id"].ToString());
            int ca = Schedule_Controller.kiemtraCategory(idm);
            int khuvucs= Int32.Parse(Drkhuvuc.SelectedValue);
            string loaitins= Drloaitin.SelectedValue;
            string timkiem = txtimkiem.Text;
            if(!txtimkiem.Text.Equals("")&&khuvucs==0 && loaitins.Equals("0"))
            {
                int ids = Int32.Parse(timkiem);
                var list = News_Controller.timkiemBYTuKhoaQT(txtimkiem.Text,ca);
                GrdanhSachtinquangcao.DataSource = list;
                GrdanhSachtinquangcao.DataBind();
            }
            else if(!txtimkiem.Text.Equals("")&&khuvucs!=0&&!loaitins.Equals("0"))
            {
                var list = News_Controller.timkiemBYKhacQT(txtimkiem.Text,khuvucs,loaitins,ca);
                GrdanhSachtinquangcao.DataSource = list;
                GrdanhSachtinquangcao.DataBind();
            }
            else if(txtimkiem.Text.Equals("")&&khuvucs!=0&&loaitins.Equals("0"))
            {
                var list = News_Controller.timkiemBYkhuvucQT(khuvucs,ca);
                GrdanhSachtinquangcao.DataSource = list;
                GrdanhSachtinquangcao.DataBind();
            }
            else if (txtimkiem.Text.Equals("") && khuvucs == 0 && !loaitins.Equals("0"))
            {
                var list = News_Controller.timkiemBYloaitinQT(loaitins, ca);
                GrdanhSachtinquangcao.DataSource = list;
                GrdanhSachtinquangcao.DataBind();
            }
            

            
        }

        //protected void btltimkiem_Click(object sender, EventArgs e)
        //{
        //    var list = News_Controller.timkiemBYIdQT(txttimkiem.Text);
        //    GrdanhSachtinquangcao.DataSource = list;
        //    GrdanhSachtinquangcao.DataBind();
        //}
    }
}