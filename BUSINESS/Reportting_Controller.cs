using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DATA;
namespace BUSINESS
{
    public class Reportting_Controller
    {
        private UnitOfWork unitOfWork = new UnitOfWork();
        private Repository<Reportting> ReportREPO;

        public Reportting_Controller()
        {
            ReportREPO = unitOfWork.Repository<Reportting>();
        }
        
        public List<Reportting> GetAll()
        {
            List<Reportting> sup = ReportREPO.Table.ToList();
            return sup;
        }
        //public static IEnumerable getBySupID(int ids)
        //{
        //    using(dbchoviet db=new dbchoviet())
        //    {
        //        var query = (from s in db.Suports
        //                     where s.id == ids
        //                     join ac in db.Account_Managers on s.Account_Managers.Id  equals ac.Id
        //                     select new
        //                     {
        //                         matin = s.id,
        //                         nguoigui=s.name_cus,
        //                         email=s.email_cus,
        //                         sodienthoai=s.phone_cus,
        //                         tieude = s.title,
        //                         noidung = s.content,
        //                         ngaynhan=s.datecreate,
        //                         nguoiduyet = ac.name
        //                     });
        //        return query.ToList();
        //    }
           
            
        //}
        //public static IEnumerable QTGetALL()
        //{
        //   using(dbchoviet db=new dbchoviet())
        //   {
        //       var query = (from s in db.Suports
                            
        //                    select new
        //                    {
        //                        matin = s.id,
        //                        nguoigui = s.name_cus,
        //                        email = s.email_cus,
        //                        sodienthoai = s.phone_cus,
        //                        tieude = s.title,
        //                        ngaynhan = s.datecreate,
                                

        //                    });
        //       return query.ToList();
        //   }
        //}
        //public static IEnumerable getQTSupALL()
        //{
        //    using (dbchoviet db = new dbchoviet())
        //    {
        //        var query = (from s in db.Suports
        //                     join ac in db.Account_Managers on s.Account_Managers.Id  equals ac.Id
        //                     select new
        //                     {
        //                         matin = s.id,
        //                         nguoigui=s.name_cus,
        //                         email=s.email_cus,
        //                         sodienthoai=s.phone_cus,
        //                         tieude = s.title,
        //                         noidung = s.content,
        //                         ngaygui=s.datecreate,
        //                         nguoiduyet = ac.name
        //                     });
        //        return query.ToList();
        //    }
        //}
        public void Insert(Reportting Sup)
        {
            ReportREPO.Insert(Sup);
        }
        public void Update(int ids)
        {
            Reportting sup = ReportREPO.GetById(ids);
            ReportREPO.Update(sup);
        }
        public void Delete(int ids)
        {
            Reportting sup = ReportREPO.GetById(ids);
            ReportREPO.Delete(sup);
        }
    }
}
