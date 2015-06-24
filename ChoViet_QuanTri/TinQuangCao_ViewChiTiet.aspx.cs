using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUSINESS;
using System.Net;
using System.Net.Mail;
namespace ChoViet_QuanTri
{
    public partial class TinQuangCao_ViewChiTiet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadthongtin();
                loadBT();
            }
        }
        public void loadthongtin()
        {
            int id = Int32.Parse(Request.QueryString["matin"]);
            rechitiettin.DataSource= News_Controller.ViewChiTietTinQLByCategoryID(id);
            rechitiettin.DataBind();
        }
        public void loadBT()
        {
            int idsp = Int32.Parse(Request.QueryString["matin"]);
            News_Controller obj = new News_Controller();
            var newlist = obj.GetById(idsp);
            int loaitin = Int32.Parse(newlist.FirstOrDefault().status_news);
            if(loaitin==1)
            {
                btnduyet.Visible = false;
                btnchoxemxet.Visible = false;               
            }
        }

        protected void btnduyet_Click(object sender, EventArgs e)
        {
            int idsp = Int32.Parse(Request.QueryString["matin"]);
            int idmana = Int32.Parse(Session["id"].ToString());
            News_Controller.updateDuyet(idsp," ","1",DateTime.Now.ToString(),DateTime.Now.ToString(),idmana);
            string email_cus = News_Controller.gemailById(idsp);
            SmtpClient smtp = new SmtpClient();
                try
                {
                    //ĐỊA CHỈ SMTP Server
                    smtp.Host = "smtp.gmail.com";
                    //Cổng SMTP
                    smtp.Port = 587;
                    //SMTP yêu cầu mã hóa dữ liệu theo SSL
                    smtp.EnableSsl = true;
                    //UserName và Password của mail
                    smtp.Credentials = new NetworkCredential("lienhechoviet@gmail.com","choviet1234");
 
                    //Tham số lần lượt là địa chỉ người gửi, người nhận, tiêu đề và nội dung thư
                    smtp.Send("lienhechoviet@gmail.com",email_cus, "Đăng tin thành công", "Tin của bạn đã được ban quản trị viên chợ việt duyệt và đăng trên website lúc "+ DateTime.Now.ToString());
                    
                }
                catch (Exception ex)
                {
                    
                }
            Response.Redirect("QuanTri_TinQuangCao.aspx?mt=0");
        }

        protected void btnxoa_Click(object sender, EventArgs e)
        {
            int idmatin = Int32.Parse(Request.QueryString["matin"]);
            News_Controller obj = new News_Controller();
            obj.Delete(idmatin);
            string email_cus = News_Controller.gemailById(idmatin);
            SmtpClient smtp = new SmtpClient();
            try
            {
                //ĐỊA CHỈ SMTP Server
                smtp.Host = "smtp.gmail.com";
                //Cổng SMTP
                smtp.Port = 587;
                //SMTP yêu cầu mã hóa dữ liệu theo SSL
                smtp.EnableSsl = true;
                //UserName và Password của mail
                smtp.Credentials = new NetworkCredential("lienhechoviet@gmail.com", "choviet1234");

                //Tham số lần lượt là địa chỉ người gửi, người nhận, tiêu đề và nội dung thư
                smtp.Send("lienhechoviet@gmail.com", email_cus, "Tin rao vặt vi phạm nội dung đăng tin ", "Tin của bạn được xác định vi phạm nội dung quy định sẽ bị xóa và không được đăng trên Chợ Việt.net lúc " + DateTime.Now.ToString()+" nếu khách hàng tiếp tục vi phạm chợ việt sẽ khóa tài khoản vĩnh viễn !mọi thông tin thắc mắc xin liên hệ lienhechoviet@gmail.com ");

            }
            catch (Exception ex)
            {

            }
            Response.Redirect("QuanTri_TinQuangCao.aspx?mt=0");
        }

        protected void btnxacnhanchoduyet_Click(object sender, EventArgs e)
        {
            int idsp = Int32.Parse(Request.QueryString["matin"]);
            int idmana = Int32.Parse(Session["id"].ToString());
            News_Controller.updateDuyet(idsp,txtghichuchoduyet.Text, "2", DateTime.Now.ToString()," ", idmana);
            Response.Redirect("QuanTri_TinQuangCao.aspx?mt=2");
        }

        protected void btnvipham_Click(object sender, EventArgs e)
        {
            int idsp = Int32.Parse(Request.QueryString["matin"]);
            int idmana = Int32.Parse(Session["id"].ToString());
            News_Controller.updateDuyet(idsp, txtghichuchoduyet.Text, "3", DateTime.Now.ToString(), " ", idmana);
            string email_cus = News_Controller.gemailById(idsp);
            SmtpClient smtp = new SmtpClient();
            try
            {
                //ĐỊA CHỈ SMTP Server
                smtp.Host = "smtp.gmail.com";
                //Cổng SMTP
                smtp.Port = 587;
                //SMTP yêu cầu mã hóa dữ liệu theo SSL
                smtp.EnableSsl = true;
                //UserName và Password của mail
                smtp.Credentials = new NetworkCredential("lienhechoviet@gmail.com", "choviet1234");

                //Tham số lần lượt là địa chỉ người gửi, người nhận, tiêu đề và nội dung thư
                smtp.Send("lienhechoviet@gmail.com", email_cus, "Hủy tin đăng ", "Ban quản trị chợ việt xác định tin rao vặt của bạn vi pham với lý do " + txtghichuvipham.Text +"vào lúc"+ DateTime.Now.ToString()+ "xin vui lòng xem lại");

            }
            catch (Exception ex)
            {

            }
            Response.Redirect("QuanTri_TinQuangCao.aspx?mt=3");
        }
    }
}