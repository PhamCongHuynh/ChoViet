using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DATA;
using System.Data;
using System.Collections;



namespace BUSINESS
{
     public class Schedule_Controller
    {
         public static IEnumerable GetPhanCong()
         {
             using(dbchoviet db=new dbchoviet())
             {
                 var phancong = from sc in db.Schedules.AsEnumerable()
                                join ac in db.Account_Managers on sc.Account_Managers.Id equals ac.Id
                                join ca in db.Categorys on sc.Category.Id equals ca.Id
                                select new
                                {
                                    ID=ac.Id,
                                    Name=ac.name,
                                    Email=ac.email,
                                    PhoneNumber=ac.phonenumber,
                                    DateCreate=ac.datecreate,
                                    Chuvu=ac.position,
                                    DanhMuc=ca.name
                                };
                 return phancong.ToList();
             }
         }
    }
}
