namespace DATA.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ThirdMigration : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Images", "Categories_Id", "dbo.Categories");
            DropIndex("dbo.Images", new[] { "Categories_Id" });
            CreateTable(
                "dbo.Information",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        title_infor = c.String(maxLength: 250),
                        content_infor = c.String(maxLength: 1000),
                        Account_Manager_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Account_Manager", t => t.Account_Manager_Id)
                .Index(t => t.Account_Manager_Id);
            
            AddColumn("dbo.Advertisings", "note", c => c.String(maxLength: 1000));
            AddColumn("dbo.News", "note", c => c.String(maxLength: 1000));
            AlterColumn("dbo.Account_Manager", "name", c => c.String(maxLength: 250));
            AlterColumn("dbo.Account_Manager", "phonenumber", c => c.String(maxLength: 250));
            AlterColumn("dbo.Account_Manager", "email", c => c.String(maxLength: 250));
            AlterColumn("dbo.Account_Manager", "password", c => c.String(maxLength: 250));
            AlterColumn("dbo.Account_Manager", "position", c => c.String(maxLength: 250));
            AlterColumn("dbo.Account_Manager", "datecreate", c => c.String(maxLength: 250));
            AlterColumn("dbo.Account_Manager", "dateend", c => c.String(maxLength: 250));
            AlterColumn("dbo.Account_Manager", "datecurent", c => c.String(maxLength: 250));
            AlterColumn("dbo.Advertisings", "name", c => c.String(maxLength: 250));
            AlterColumn("dbo.Advertisings", "url_images", c => c.String(maxLength: 250));
            AlterColumn("dbo.Advertisings", "url_video", c => c.String(maxLength: 250));
            AlterColumn("dbo.Advertisings", "url_link", c => c.String(maxLength: 250));
            AlterColumn("dbo.Advertisings", "name_company", c => c.String(maxLength: 250));
            AlterColumn("dbo.Advertisings", "email", c => c.String(maxLength: 250));
            AlterColumn("dbo.Advertisings", "diachi", c => c.String(maxLength: 250));
            AlterColumn("dbo.Advertisings", "datecreate", c => c.String(maxLength: 250));
            AlterColumn("dbo.Advertisings", "dateend", c => c.String(maxLength: 250));
            AlterColumn("dbo.Advertisings", "dateaction", c => c.String(maxLength: 250));
            AlterColumn("dbo.News", "Address_contact", c => c.String(maxLength: 250));
            AlterColumn("dbo.News", "type_news", c => c.String(maxLength: 250));
            AlterColumn("dbo.News", "role", c => c.String(maxLength: 250));
            AlterColumn("dbo.News", "title", c => c.String(maxLength: 250));
            AlterColumn("dbo.News", "content", c => c.String(maxLength: 250));
            AlterColumn("dbo.News", "price", c => c.String(maxLength: 1000));
            AlterColumn("dbo.News", "pay", c => c.String(maxLength: 250));
            AlterColumn("dbo.News", "shipping", c => c.String(maxLength: 250));
            AlterColumn("dbo.News", "status_news", c => c.String(maxLength: 1000));
            AlterColumn("dbo.News", "datecreate", c => c.String(maxLength: 250));
            AlterColumn("dbo.News", "datecheck", c => c.String(maxLength: 250));
            AlterColumn("dbo.News", "dateaction", c => c.String(maxLength: 250));
            AlterColumn("dbo.News", "views", c => c.String(maxLength: 250));
            AlterColumn("dbo.News", "likes", c => c.String(maxLength: 250));
            AlterColumn("dbo.Account_Member", "name", c => c.String(maxLength: 250));
            AlterColumn("dbo.Account_Member", "phonenumber", c => c.String(maxLength: 250));
            AlterColumn("dbo.Account_Member", "email", c => c.String(maxLength: 250));
            AlterColumn("dbo.Account_Member", "password", c => c.String(maxLength: 250));
            AlterColumn("dbo.Account_Member", "datecreate", c => c.String(maxLength: 250));
            AlterColumn("dbo.Account_Member", "dateend", c => c.String(maxLength: 250));
            AlterColumn("dbo.Account_Member", "datecurent", c => c.String(maxLength: 250));
            AlterColumn("dbo.Status_Members", "note", c => c.String(maxLength: 1000));
            AlterColumn("dbo.Status_Members", "datecreate", c => c.String(maxLength: 250));
            AlterColumn("dbo.Categories", "name", c => c.String(maxLength: 250));
            AlterColumn("dbo.Images", "url", c => c.String(maxLength: 250));
            AlterColumn("dbo.Schedules", "note", c => c.String(maxLength: 1000));
            AlterColumn("dbo.Schedules", "datecreate", c => c.String(maxLength: 250));
            AlterColumn("dbo.Regions", "Name", c => c.String(maxLength: 250));
            AlterColumn("dbo.Regions", "thuocloai", c => c.String(maxLength: 250));
            DropColumn("dbo.Status_Members", "name");
            DropColumn("dbo.Images", "Categories_Id");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Images", "Categories_Id", c => c.Int());
            AddColumn("dbo.Status_Members", "name", c => c.Int(nullable: false));
            DropForeignKey("dbo.Information", "Account_Manager_Id", "dbo.Account_Manager");
            DropIndex("dbo.Information", new[] { "Account_Manager_Id" });
            AlterColumn("dbo.Regions", "thuocloai", c => c.String());
            AlterColumn("dbo.Regions", "Name", c => c.String());
            AlterColumn("dbo.Schedules", "datecreate", c => c.String());
            AlterColumn("dbo.Schedules", "note", c => c.String());
            AlterColumn("dbo.Images", "url", c => c.Int(nullable: false));
            AlterColumn("dbo.Categories", "name", c => c.String());
            AlterColumn("dbo.Status_Members", "datecreate", c => c.String());
            AlterColumn("dbo.Status_Members", "note", c => c.String());
            AlterColumn("dbo.Account_Member", "datecurent", c => c.String());
            AlterColumn("dbo.Account_Member", "dateend", c => c.String());
            AlterColumn("dbo.Account_Member", "datecreate", c => c.String());
            AlterColumn("dbo.Account_Member", "password", c => c.String());
            AlterColumn("dbo.Account_Member", "email", c => c.String());
            AlterColumn("dbo.Account_Member", "phonenumber", c => c.String());
            AlterColumn("dbo.Account_Member", "name", c => c.String());
            AlterColumn("dbo.News", "likes", c => c.String());
            AlterColumn("dbo.News", "views", c => c.Int(nullable: false));
            AlterColumn("dbo.News", "dateaction", c => c.String());
            AlterColumn("dbo.News", "datecheck", c => c.String());
            AlterColumn("dbo.News", "datecreate", c => c.String());
            AlterColumn("dbo.News", "status_news", c => c.Int(nullable: false));
            AlterColumn("dbo.News", "shipping", c => c.String());
            AlterColumn("dbo.News", "pay", c => c.String());
            AlterColumn("dbo.News", "price", c => c.String());
            AlterColumn("dbo.News", "content", c => c.String());
            AlterColumn("dbo.News", "title", c => c.String());
            AlterColumn("dbo.News", "role", c => c.Int(nullable: false));
            AlterColumn("dbo.News", "type_news", c => c.Int(nullable: false));
            AlterColumn("dbo.News", "Address_contact", c => c.String());
            AlterColumn("dbo.Advertisings", "dateaction", c => c.String());
            AlterColumn("dbo.Advertisings", "dateend", c => c.String());
            AlterColumn("dbo.Advertisings", "datecreate", c => c.String());
            AlterColumn("dbo.Advertisings", "diachi", c => c.String());
            AlterColumn("dbo.Advertisings", "email", c => c.String());
            AlterColumn("dbo.Advertisings", "name_company", c => c.String());
            AlterColumn("dbo.Advertisings", "url_link", c => c.String());
            AlterColumn("dbo.Advertisings", "url_video", c => c.String());
            AlterColumn("dbo.Advertisings", "url_images", c => c.String());
            AlterColumn("dbo.Advertisings", "name", c => c.String());
            AlterColumn("dbo.Account_Manager", "datecurent", c => c.String());
            AlterColumn("dbo.Account_Manager", "dateend", c => c.String());
            AlterColumn("dbo.Account_Manager", "datecreate", c => c.String());
            AlterColumn("dbo.Account_Manager", "position", c => c.String());
            AlterColumn("dbo.Account_Manager", "password", c => c.String());
            AlterColumn("dbo.Account_Manager", "email", c => c.String());
            AlterColumn("dbo.Account_Manager", "phonenumber", c => c.String());
            AlterColumn("dbo.Account_Manager", "name", c => c.String());
            DropColumn("dbo.News", "note");
            DropColumn("dbo.Advertisings", "note");
            DropTable("dbo.Information");
            CreateIndex("dbo.Images", "Categories_Id");
            AddForeignKey("dbo.Images", "Categories_Id", "dbo.Categories", "Id");
        }
    }
}
