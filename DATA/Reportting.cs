using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
namespace DATA
{
    public class Reportting
    {
        public int id { get; set; }
          [StringLength(250)]
        public string viewday { get; set; }
          [StringLength(250)]
        public string members { get; set; }
          [StringLength(250)]
        public string views { get; set; }
          [StringLength(250)]
        public string datecreate { get; set; }
          [StringLength(1000)]
        public string note { get; set; }
        public Reportting()
        { }
    }
}
