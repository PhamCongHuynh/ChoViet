using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DATA;

namespace BUSINESS
{
    public class Regions_Controller
    {
        private UnitOfWork unitOfWork = new UnitOfWork();
        private Repository<Regions> RegionsREPO;

        public Regions_Controller()
        {
            RegionsREPO = unitOfWork.Repository<Regions>();
        }
        public List<Regions> GetALLRegions()
        {
            List<Regions> listRegion = RegionsREPO.Table.ToList();
            return listRegion;
        }
        public void Insert(Regions Sup)
        {
            RegionsREPO.Insert(Sup);
        }
        public void Update(int ids)
        {
            Regions sup = RegionsREPO.GetById(ids);
            RegionsREPO.Update(sup);
        }
        public void Delete(int ids)
        {
            Regions sup = RegionsREPO.GetById(ids);
            RegionsREPO.Delete(sup);
        }
    }
}
