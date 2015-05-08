namespace DATA.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddSecondMigration : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Regions", "thuocloai", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Regions", "thuocloai");
        }
    }
}
