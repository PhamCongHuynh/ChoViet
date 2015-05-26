using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
namespace DATA
{
    public class Support
    {
        public int id { get; set; }
        [StringLength(250)]
        public string name_cus { get; set; }
        [StringLength(250)]
        public string email_cus { get; set; }
        [StringLength(250)]
        public string phone_cus { get; set; }
        [StringLength(250)]
        public string title { get; set; }
        [StringLength(250)]
        public string content { get; set; }
        [StringLength(250)]
        public string datecreate { get; set; }
        [StringLength(250)]
        public string datacheck { get; set; }
        [StringLength(2000)]
        public string note { get; set; }
        public Account_Manager Account_Managers { get; set; }
    }
}
