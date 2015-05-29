using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DATA;
using System.Collections;

namespace BUSINESS
{
    public class Information_controller
    {
        private UnitOfWork unitOfWork = new UnitOfWork();
        private Repository<Information> InfoREPO;

        public Information_controller()
        {
            InfoREPO = unitOfWork.Repository<Information>();
        }
        //public List<Information> getALL()
        //{
        //    List<Information> Informations = InfoREPO.Table.ToList();
        //    return Informations;
        //}
        //hien thi ngoai giao dien khi mot bo thong tin duoc trieu goi theo ma
        public static IEnumerable getByInforID(int ids)
        {
            using(dbchoviet db=new dbchoviet())
            {
                var query = (from i in db.Informations
                             where i.Id == ids
                             join ac in db.Account_Managers on i.Account_Manager.Id equals ac.Id
                             select new
                             {
                                 matin = i.Id,
                                 tieude = i.title_infor,
                                 noidung = i.content_infor,
                                 nguoisoan = ac.name

                             });
                return query.ToList();
            }     
        }
        public static IEnumerable getQTInforALL()
        {
            using (dbchoviet db = new dbchoviet())
            {
                var query = (from i in db.Informations
                             join ac in db.Account_Managers on i.Account_Manager.Id equals ac.Id
                             select new
                             {
                                 matin = i.Id,
                                 tieude = i.title_infor,
                                 noidung = i.content_infor,
                                 nguoisoan = ac.name
                             });
                return query.ToList();
            }
        }
        public void InsertInfor(Information info)
        {
            InfoREPO.Insert(info);
        }
        public void UpdateInfor(int ids)
        {
            Information info = InfoREPO.GetById(ids);
            InfoREPO.Update(info);
        }
        public void Delete(int ids)
        {
            Information info = InfoREPO.GetById(ids);
           InfoREPO.Delete(info);
        }
    }
}
