using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
namespace DATA
{
    public class Account_Manager
    {
        public int Id { get; set; }
        [StringLength(250)]
        public string name { get; set; }
        [StringLength(250)]
        public string phonenumber { get; set; }
        [StringLength(250)]
        public string email { get; set; }
        [StringLength(250)]
        public string password { get; set; }
        [StringLength(250)]
        public string position { get; set; }
        [StringLength(250)]
        public string datecreate { get; set; }
        [StringLength(250)]
        public string dateend { get; set; }
        [StringLength(250)]
        public string datecurent { get; set; }
        public IList<Schedule> Schedules { get; set; }
        public IList<Advertising> Advertisings { get; set; }
        public IList<Status_Members> Status_Memberss { get; set; }
        public IList<News> News { get; set; }
        public IList<Information> Informations { get; set; }
        public Account_Manager() { }

    }
}
