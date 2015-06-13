namespace DATA.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class newversion106 : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Information", "content_infor", c => c.String());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Information", "content_infor", c => c.String(maxLength: 1000));
        }
    }
}
