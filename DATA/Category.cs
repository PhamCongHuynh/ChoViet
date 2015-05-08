using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
namespace DATA
{
    public class Category
    {
        public int Id{get;set;}
        public int parent { get; set; }
          [StringLength(250)]
        public string name { get; set; }
        public IList<Schedule> Schedules { get; set; }
        public IList<News> Newss { get; set; }
        public Category() { }
    }
}
