﻿using System;
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
        public List<Information> getALL()
        {
            List<Information> Informations = InfoREPO.Table.ToList();
            return Informations;
        }
        public List<Information> GetById(int ids)
        {
            List<Information> list = new List<Information>();
            Information ac = InfoREPO.GetById(ids);
            list.Add(ac);
            return list;
        }
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
        public static void InsertInfNew(string title,string content,int id_manager)
        {
            using(dbchoviet db=new dbchoviet())
            {
                var ac_manager = db.Account_Managers.FirstOrDefault(ac => ac.Id == id_manager);
                Information info = new Information() {title_infor=title,content_infor=content,Account_Manager=ac_manager };
                db.Informations.Add(info);
                db.SaveChanges();
            }
        }
        public static void upDateInfNew(int matin, string title, string content, int id_manager)
        {
            using (dbchoviet db = new dbchoviet())
            {
                var ac_manager = db.Account_Managers.FirstOrDefault(ac => ac.Id == id_manager);
                var query = (from inf in db.Informations where inf.Id == matin select inf).First();
                query.title_infor = title;
                query.content_infor = content;
                query.Account_Manager = ac_manager;
                db.SaveChanges();
            }         
        }
    }
}
