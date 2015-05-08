using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
namespace DATA
{
   public class Advertising
    {
       public int Id { get; set; }
       [StringLength(250)]
       public string name { get; set; }
       [StringLength(250)]
       //vị trí
       public string positive { get; set; }
       [StringLength(250)]
       public string url_images { get; set; }
       [StringLength(250)]
       public string url_video { get; set; }
       [StringLength(250)]
       public string url_link { get; set; }
       [StringLength(250)]
       public string name_company { get; set; }
       [StringLength(250)]
       public string email { get; set; }
       [StringLength(250)]
       public string diachi { get; set; }
       [StringLength(250)]
       public string datecreate { get; set; }
       [StringLength(250)]
       public string dateend { get; set; }
       [StringLength(250)]
       public string dateaction { get; set; }
       [StringLength(1000)]
       public string note { get; set; }
       public Account_Manager Account_Managers { get; set; }
       public Advertising(){}
    }
}
