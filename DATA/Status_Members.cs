using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
namespace DATA
{
    public class Status_Members
    {
        public int Id { get; set; }
        public Account_Member Account_Members { get; set; }
         [StringLength(1000)]
        public string note { get; set; }
         [StringLength(250)]
        public string datecreate { get; set; }
        public Account_Manager Account_Managers { get; set; }
        public Status_Members() { }
    }
}
