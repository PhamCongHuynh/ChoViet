namespace DATA.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Account_Manager",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        name = c.String(),
                        phonenumber = c.String(),
                        email = c.String(),
                        password = c.String(),
                        position = c.String(),
                        datecreate = c.String(),
                        dateend = c.String(),
                        datecurent = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Advertisings",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        name = c.String(),
                        url_images = c.String(),
                        url_video = c.String(),
                        url_link = c.String(),
                        name_company = c.String(),
                        email = c.String(),
                        diachi = c.String(),
                        datecreate = c.String(),
                        dateend = c.String(),
                        dateaction = c.String(),
                        Account_Managers_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Account_Manager", t => t.Account_Managers_Id)
                .Index(t => t.Account_Managers_Id);
            
            CreateTable(
                "dbo.News",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Address_contact = c.String(),
                        type_news = c.Int(nullable: false),
                        role = c.Int(nullable: false),
                        title = c.String(),
                        content = c.String(),
                        price = c.String(),
                        pay = c.String(),
                        shipping = c.String(),
                        status_news = c.Int(nullable: false),
                        datecreate = c.String(),
                        datecheck = c.String(),
                        dateaction = c.String(),
                        views = c.Int(nullable: false),
                        likes = c.String(),
                        Account_Managers_Id = c.Int(),
                        Account_Members_Id = c.Int(),
                        Category_Id = c.Int(),
                        Regions_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Account_Manager", t => t.Account_Managers_Id)
                .ForeignKey("dbo.Account_Member", t => t.Account_Members_Id)
                .ForeignKey("dbo.Categories", t => t.Category_Id)
                .ForeignKey("dbo.Regions", t => t.Regions_Id)
                .Index(t => t.Account_Managers_Id)
                .Index(t => t.Account_Members_Id)
                .Index(t => t.Category_Id)
                .Index(t => t.Regions_Id);
            
            CreateTable(
                "dbo.Account_Member",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        name = c.String(),
                        phonenumber = c.String(),
                        email = c.String(),
                        password = c.String(),
                        datecreate = c.String(),
                        dateend = c.String(),
                        datecurent = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Status_Members",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        name = c.Int(nullable: false),
                        note = c.String(),
                        datecreate = c.String(),
                        Account_Managers_Id = c.Int(),
                        Account_Members_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Account_Manager", t => t.Account_Managers_Id)
                .ForeignKey("dbo.Account_Member", t => t.Account_Members_Id)
                .Index(t => t.Account_Managers_Id)
                .Index(t => t.Account_Members_Id);
            
            CreateTable(
                "dbo.Categories",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        parent = c.Int(nullable: false),
                        name = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Images",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        name = c.String(maxLength: 250),
                        url = c.Int(nullable: false),
                        Categories_Id = c.Int(),
                        News_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Categories", t => t.Categories_Id)
                .ForeignKey("dbo.News", t => t.News_Id)
                .Index(t => t.Categories_Id)
                .Index(t => t.News_Id);
            
            CreateTable(
                "dbo.Schedules",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        note = c.String(),
                        datecreate = c.String(),
                        Account_Managers_Id = c.Int(),
                        Category_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Account_Manager", t => t.Account_Managers_Id)
                .ForeignKey("dbo.Categories", t => t.Category_Id)
                .Index(t => t.Account_Managers_Id)
                .Index(t => t.Category_Id);
            
            CreateTable(
                "dbo.Regions",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
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
        
        public override void Down()
        {
            DropForeignKey("dbo.News", "Regions_Id", "dbo.Regions");
            DropForeignKey("dbo.Schedules", "Category_Id", "dbo.Categories");
            DropForeignKey("dbo.Schedules", "Account_Managers_Id", "dbo.Account_Manager");
            DropForeignKey("dbo.News", "Category_Id", "dbo.Categories");
            DropForeignKey("dbo.Images", "News_Id", "dbo.News");
            DropForeignKey("dbo.Images", "Categories_Id", "dbo.Categories");
            DropForeignKey("dbo.Status_Members", "Account_Members_Id", "dbo.Account_Member");
            DropForeignKey("dbo.Status_Members", "Account_Managers_Id", "dbo.Account_Manager");
            DropForeignKey("dbo.News", "Account_Members_Id", "dbo.Account_Member");
            DropForeignKey("dbo.News", "Account_Managers_Id", "dbo.Account_Manager");
            DropForeignKey("dbo.Advertisings", "Account_Managers_Id", "dbo.Account_Manager");
            DropIndex("dbo.Schedules", new[] { "Category_Id" });
            DropIndex("dbo.Schedules", new[] { "Account_Managers_Id" });
            DropIndex("dbo.Images", new[] { "News_Id" });
            DropIndex("dbo.Images", new[] { "Categories_Id" });
            DropIndex("dbo.Status_Members", new[] { "Account_Members_Id" });
            DropIndex("dbo.Status_Members", new[] { "Account_Managers_Id" });
            DropIndex("dbo.News", new[] { "Regions_Id" });
            DropIndex("dbo.News", new[] { "Category_Id" });
            DropIndex("dbo.News", new[] { "Account_Members_Id" });
            DropIndex("dbo.News", new[] { "Account_Managers_Id" });
            DropIndex("dbo.Advertisings", new[] { "Account_Managers_Id" });
            DropTable("dbo.DanhMucs");
            DropTable("dbo.Regions");
            DropTable("dbo.Schedules");
            DropTable("dbo.Images");
            DropTable("dbo.Categories");
            DropTable("dbo.Status_Members");
            DropTable("dbo.Account_Member");
            DropTable("dbo.News");
            DropTable("dbo.Advertisings");
            DropTable("dbo.Account_Manager");
        }
    }
}
