using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace DATA
{
    public class dbchoviet : DbContext, IDisposable
    {
        public DbSet<Category> Categorys { get; set; }
        public DbSet<Regions> Regions { get; set; }
        public DbSet<Account_Manager> Account_Managers { get; set; }
        public DbSet<Account_Member> Account_Members { get; set; }
        public DbSet<News> Newss { get; set; }
        public DbSet<Schedule> Schedules { get; set; }
        public DbSet<Advertising> Advertisings { get; set; }
        public DbSet<Information> Informations { get; set; }
        public DbSet<Support> Suports { get; set; }
        public dbchoviet():base()
        {

            //Database.SetInitializer<dbchoviet>(null);
            
        }

        public new IDbSet<TEntity> Set<TEntity>() where TEntity : class
        {
            return base.Set<TEntity>();
        }
    }
}
