﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DATA;
using System.Data;
using System.Collections;
using DATA;
namespace BUSINESS
{
     public class Schedule_Controller
    {
        private UnitOfWork unitOfWork = new UnitOfWork();
        private Repository<Schedule> Schedule_REPO;

        public Schedule_Controller()
        {
            Schedule_REPO = unitOfWork.Repository<Schedule>();
        }

        //lay taat ca danh muc
        public List<Schedule> getAll()
        {
            List<Schedule> Listschedule = Schedule_REPO.Table.ToList();
            return Listschedule;
        }
        // lay danh muc theo ma danh muc cha
        //public static IEnumerable getSchedule()
        //{
        //    using (dbchoviet db = new dbchoviet())
        //    {
        //        var query = from u in db.Categorys where u.parent == 0 select u;
        //        return query.ToList(); 
        //    }
           
        //}
        //lay danh muc theo ma danh muc con
        //public static IEnumerable getCategoryById()
        //{
        //    using (dbchoviet db = new dbchoviet())
        //    {
        //        var query = from u in db.Categorys where u.parent != 0 select u;
        //        return query.ToList();
        //    }

        //}
        //xoa mot danh muc
        public void Delete(int ids)
        {
            Schedule ac = Schedule_REPO.GetById(ids);
            Schedule_REPO.Delete(ac);
        }
        // thêm mơi 1 danh muc
        public void insertMember(Schedule ca)
        {
            Schedule_REPO.Insert(ca);
        }
        public void UpdateSup(int ids)
        {
            Schedule sup = Schedule_REPO.GetById(ids);
            Schedule_REPO.Update(sup);
        }
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
