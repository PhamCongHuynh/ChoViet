using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace DATA
{
    public class Images
    {
        public int Id { get; set; }
        [StringLength(250)]
        public string name { get; set; }
        [StringLength(250)]
        public string url { get; set; }
        public Images() { }
    }
}
