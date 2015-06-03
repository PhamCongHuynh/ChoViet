using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DATA;
using System.Collections;

namespace BUSINESS
{
    public class Category_Controller
    {
        private UnitOfWork unitOfWork = new UnitOfWork();
        private Repository<Category> Categoty_REPO;

        public Category_Controller()
        {
            Categoty_REPO = unitOfWork.Repository<Category>();
        }

        //lay taat ca danh muc
        public List<Category> getAll()
        {
            List<Category> ListCategory = Categoty_REPO.Table.ToList();
            return ListCategory;
        }
        // lay danh muc theo ma danh muc cha
        public static IEnumerable getCategory()
        {
            using (dbchoviet db = new dbchoviet())
            {
                var query = from u in db.Categorys where u.parent == 0 select u;
                return query.ToList(); 
            }
           
        }
        //lay danh muc theo ma danh muc con
        public static IEnumerable getCategoryById()
        {
            using (dbchoviet db = new dbchoviet())
            {
                var query = from u in db.Categorys where u.parent != 0 select u;
                return query.ToList();
            }

        }
        //xoa mot danh muc
        public void Delete(int ids)
        {
            Category ac = Categoty_REPO.GetById(ids);
            Categoty_REPO.Delete(ac);
        }
        // thêm mơi 1 danh muc
        public void insert(Category ca)
        {
            Categoty_REPO.Insert(ca);
        }
        public void Update(int ids)
        {
            Category sup = Categoty_REPO.GetById(ids);
            Categoty_REPO.Update(sup);
        }
    }
}
