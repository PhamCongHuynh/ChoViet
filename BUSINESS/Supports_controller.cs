using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DATA;
using System.Collections;

namespace BUSINESS
{
    public class Supports_controller
    {
        private UnitOfWork unitOfWork = new UnitOfWork();
        private Repository<Support> SupportREPO;

        public Supports_controller()
        {
            SupportREPO = unitOfWork.Repository<Support>();
        }
        public List<Support> GetAll()
        {
            List<Support> sup = SupportREPO.Table.ToList();
            return sup;
        }
        public static IEnumerable getBySupID(int ids)
        {
            using(dbchoviet db=new dbchoviet())
            {
                var query = (from s in db.Suports
                             where s.id == ids
                             join ac in db.Account_Managers on s.Account_Managers.Id  equals ac.Id
                             select new
                             {
                                 matin = s.id,
                                 nguoigui=s.name_cus,
                                 email=s.email_cus,
                                 sodienthoai=s.phone_cus,
                                 tieude = s.title,
                                 noidung = s.content,
                                 ngaynhan=s.datecreate,
                                 nguoiduyet = ac.name
                             });
                return query.ToList();
            }
           
            
        }
        public static IEnumerable QTGetALL()
        {
           using(dbchoviet db=new dbchoviet())
           {
               var query = (from s in db.Suports
                            
                            select new
                            {
                                matin = s.id,
                                nguoigui = s.name_cus,
                                email = s.email_cus,
                                sodienthoai = s.phone_cus,
                                tieude = s.title,
                                ngaynhan = s.datecreate,
                                

                            });
               return query.ToList();
           }
        }
        public static IEnumerable getQTSupALL()
        {
            using (dbchoviet db = new dbchoviet())
            {
                var query = (from s in db.Suports
                             join ac in db.Account_Managers on s.Account_Managers.Id  equals ac.Id
                             select new
                             {
                                 matin = s.id,
                                 nguoigui=s.name_cus,
                                 email=s.email_cus,
                                 sodienthoai=s.phone_cus,
                                 tieude = s.title,
                                 noidung = s.content,
                                 ngaygui=s.datecreate,
                                 nguoiduyet = ac.name
                             });
                return query.ToList();
            }
        }
        public void InsertSup(Support Sup)
        {
            SupportREPO.Insert(Sup);
        }
        public void UpdateSup(int ids)
        {
            Support sup = SupportREPO.GetById(ids);
            SupportREPO.Update(sup);
        }
        public void Delete(int ids)
        {
            Support sup = SupportREPO.GetById(ids);
           SupportREPO.Delete(sup);
        }
    }
    
}
