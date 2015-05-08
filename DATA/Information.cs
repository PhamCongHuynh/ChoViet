using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
namespace DATA
{
    public class Information
    {
        public int Id { get; set; }
         [StringLength(250)]
        public string title_infor { get; set; }
         [StringLength(1000)]
        public string content_infor { get; set; }
        public Account_Manager Account_Manager { get; set; }
        public Information()
        { }
    }
}
