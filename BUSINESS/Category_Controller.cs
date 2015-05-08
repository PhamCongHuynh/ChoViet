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
        //private UnitOfWork unitOfWork = new UnitOfWork();
        //private Repository<Category> Categoty_REPO;

        public Category_Controller()
        {
            //Categoty_REPO = unitOfWork.Repository<Category>();
        }
        //public List<Category> getAll()
        //{
        //    List<Category> ListCategory = Categoty_REPO.Table.ToList();
        //    return ListCategory;
        //}
        public static IEnumerable getCategory()
        {
            using (dbchoviet db = new dbchoviet())
            {
                var query = from u in db.Categorys where u.parent == 0 select u;
                return query.ToList(); 
            }
           
        }

    }
}
