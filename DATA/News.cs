using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
namespace DATA
{
    public class News
    {
        public int Id { get; set; }
        public Account_Member Account_Members { get; set; }
        public Regions Regions { get; set; }
        public Category Category { get; set; }
        [StringLength(250)]
        public string full_name { get; set; }
        [StringLength(250)]
        public string phone_number { get; set; }
        [StringLength(250)]
        public string email_cus { get; set; }
          [StringLength(250)]
        public string Address_contact { get; set; }
          [StringLength(250)]
        public string type_news { get; set; }
        // type_news được đánh số từ 1 cho đến 5 
        //1: Cần mua 
        //2: Cần bán 
        //3: Cần chuyển nhượng
        //4: Cần cho thuê
          [StringLength(250)]
        public string role { get; set; }
        // role được đánh số từ 1 cho đến 5 
        //1: Cá nhân 
        //2: Doanh nghiệp
          [StringLength(250)]
        public string title { get; set; }
          [StringLength(1000)]
        public string content { get; set; }
          [StringLength(250)]
        public string image1 { get; set; }
          [StringLength(250)]
        public string image2 { get; set; }
          [StringLength(250)]
        public string image3 { get; set; }
          [StringLength(250)]
        public string image4 { get; set; }
          [StringLength(250)]
        public string image5 { get; set; }
          [StringLength(250)]
        public string image6 { get; set; }
        [StringLength(250)]
        public string price { get; set;}
          [StringLength(250)]
        public string pay { get; set; }
          [StringLength(1000)]
        public string shipping { get; set; }
          [StringLength(250)]
        public string status_news { get; set; }
        //status_news được đánh số từ 1 đến 3 :
        //1: mới chờ duyệt
        //2: từ chối 
        //3: Xem xét chờ duyệt
          [StringLength(250)]
        public string datecreate { get; set; }
          [StringLength(250)]
        public string datecheck { get; set; }
          [StringLength(250)]
        public string dateaction { get; set; }
          [StringLength(250)]
        public string views { get; set; }
          [StringLength(250)]
        public string likes { get; set; }
        public Account_Manager Account_Managers { get; set; }
         [StringLength(1000)]
        public string note { get; set; }
        public News() { }
    }
}
