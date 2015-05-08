using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
namespace DATA
{
    public class Regions
    {
        public int Id { get; set; }
          [StringLength(250)]
        public string Name { get; set; }
          [StringLength(250)]
        public string thuocloai { get; set; }
        public Regions()
        { }
    }
}
