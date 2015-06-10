using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DATA;
using System.Collections;

namespace BUSINESS
{
    public class Account_Member_Controller
    {
         private UnitOfWork unitOfWork = new UnitOfWork();
        private Repository<Account_Member> Account_MemberREPO;

        public Account_Member_Controller()
        {
            Account_MemberREPO = unitOfWork.Repository<Account_Member>();
        }
        // trả về danh sách tất cả các thành viên 
        public List<Account_Member> getALL()
        {
            List<Account_Member> Account_Managers = Account_MemberREPO.Table.ToList();
            return Account_Managers;
        }
        // xem chi tiết 1 thành viên theo mã id thành viên
        public List<Account_Member> GetById(int ids)
        {
           List<Account_Member> list=new List<Account_Member>();
           Account_Member ac = Account_MemberREPO.GetById(ids);
           list.Add(ac);
           return list;
        }
        // xóa 1 thành viên theo id
        public void Delete(int ids) 
        {
            Account_Member ac = Account_MemberREPO.GetById(ids);
            Account_MemberREPO.Delete(ac);         
        }
        // thêm mơi 1 thành viên
        public void insertMember(Account_Member ac)
        {
            Account_MemberREPO.Insert(ac);
        }
        public void Update(int ids)
        {
            Account_Member sup = Account_MemberREPO.GetById(ids);
            Account_MemberREPO.Update(sup);
        }
        public static void changesMK(string matkhaumoi, int ids)
        {
            using(dbchoviet db=new dbchoviet())
            {
                var query = (from ac in db.Account_Members where ac.Id == ids select ac).First();
                query.password = matkhaumoi;
                db.SaveChanges();
            }
        }
        public static void UpdateTK(string hoten, string sodt, int ids)
        {
            using (dbchoviet db = new dbchoviet())
            {
                var query = (from ac in db.Account_Members where ac.Id == ids select ac).First();
                query.name = hoten;
                query.phonenumber = sodt;
                db.SaveChanges();
            }
        }
        // kiểm tra đăng nhập tài khoản
        public static Boolean CheckAccount(string ac_email, string ac_password)
        {
            using (dbchoviet db = new dbchoviet())
            {
                var query = from u in db.Account_Members where u.email == ac_email && u.password == ac_password select u;
                if (query.Count() != 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }

        }
        //phương thức nhận vảo email và trả về id
        public static List<Account_Member> CheckIdAccount(string ac_email)
        {
            using (dbchoviet db = new dbchoviet())
            {
                var query = from u in db.Account_Members where u.email == ac_email select u;
                return query.ToList();
            }

        }

    }
}
