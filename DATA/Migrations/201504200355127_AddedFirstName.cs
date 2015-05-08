namespace DATA.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddedFirstName : DbMigration
    {
        public override void Up()
        {
            DropTable("dbo.DanhMucs");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.DanhMucs",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        parent = c.Int(nullable: false),
                        name = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
        }
    }
}
