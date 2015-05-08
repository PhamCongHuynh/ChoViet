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
    }
}
