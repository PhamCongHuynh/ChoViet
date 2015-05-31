using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DATA;

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

    }
}
