using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
namespace DATA
{
    public class Account_Member
    {
        public int Id { get; set; }
        [StringLength(250)]
        public string name { get; set; }
        [StringLength(250)]
        public string phonenumber { get; set; }
        [StringLength(250)]
        public string email { get; set; }
        [StringLength(250)]
        public string birthday { get; set; }
        [StringLength(250)]
        public string gender { get; set; }
        [StringLength(250)]
        public string address { get; set; }
        [StringLength(250)]
        public string password { get; set; }
        [StringLength(250)]
        public string datecreate { get; set; }
        [StringLength(250)]
        public string dateend { get; set; }
        [StringLength(250)]
        public string datecurent { get; set; }
        public IList<Status_Members> Status_Memberss { get; set; }
        public IList<News> News { get; set; }
        public Account_Member() { }
        
    }
}
