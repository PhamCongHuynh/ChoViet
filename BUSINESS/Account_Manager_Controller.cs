using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DATA;
using System.Collections;

namespace BUSINESS
{
    public class Account_Manager_Controller 
    {
        private UnitOfWork unitOfWork = new UnitOfWork();
        private Repository<Account_Manager> Account_ManagerREPO;

        public Account_Manager_Controller()
        {
            Account_ManagerREPO = unitOfWork.Repository<Account_Manager>();
        }

        //public IEnumerable<Account_Manager> getALL()
        //{
        //    //IEnumerable<Account_Manager> Account_Managers = bookRepository.Table.ToList();
        //    return Account_Managers;
        //}
        public List<Account_Manager> getALL()
        {
            List<Account_Manager> Account_Managers = Account_ManagerREPO.Table.ToList();
            return Account_Managers;
        }
        public List<Account_Manager> GetById(int ids)
        {
           List<Account_Manager> list=new List<Account_Manager>();
           Account_Manager ac = Account_ManagerREPO.GetById(ids);
           list.Add(ac);
           return list;
        }
        public static IEnumerable getByMannager(int ids)
        {
            using(dbchoviet db=new dbchoviet())
            {
                var query = (from u in db.Account_Managers where u.Id == ids select u);
                return query;
            }
            
        }


        public void Delete(int ids) 
        {
            Account_Manager ac = Account_ManagerREPO.GetById(ids);
            Account_ManagerREPO.Delete(ac);         
        }
        public void InsertAC(Account_Manager Sup)
        {
            Account_ManagerREPO.Insert(Sup);
        }
        public void UpdateAC(int ids)
        {
            Account_Manager sup = Account_ManagerREPO.GetById(ids);
            Account_ManagerREPO.Update(sup);
        }
       
        public static Boolean CheckAccount(int ac_id,string ac_password)
        {
            using(dbchoviet db=new dbchoviet())
            {
                var query = from u in db.Account_Managers where u.Id == ac_id && u.password == ac_password select u;
                if(query.Count()!=0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            
        }
        public static List<Account_Manager> CheckIdAccount(int maid)
        {
            using (dbchoviet db = new dbchoviet())
            {
                var query = from u in db.Account_Managers where u.Id==maid  select u;
                return query.ToList();
            }

        }
       
       
    }
}
