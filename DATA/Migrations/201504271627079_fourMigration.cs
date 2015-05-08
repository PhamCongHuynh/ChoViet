namespace DATA.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class fourMigration : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Images", "News_Id", "dbo.News");
            DropIndex("dbo.Images", new[] { "News_Id" });
            AddColumn("dbo.Advertisings", "positive", c => c.String(maxLength: 250));
            AddColumn("dbo.News", "image1", c => c.String(maxLength: 250));
            AddColumn("dbo.News", "image2", c => c.String(maxLength: 250));
            AddColumn("dbo.News", "image3", c => c.String(maxLength: 250));
            AddColumn("dbo.News", "image4", c => c.String(maxLength: 250));
            AddColumn("dbo.News", "image5", c => c.String(maxLength: 250));
            AddColumn("dbo.News", "image6", c => c.String(maxLength: 250));
            AlterColumn("dbo.News", "content", c => c.String(maxLength: 1000));
            AlterColumn("dbo.News", "price", c => c.String(maxLength: 250));
            AlterColumn("dbo.News", "shipping", c => c.String(maxLength: 1000));
            AlterColumn("dbo.News", "status_news", c => c.String(maxLength: 250));
            DropColumn("dbo.Images", "News_Id");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Images", "News_Id", c => c.Int());
            AlterColumn("dbo.News", "status_news", c => c.String(maxLength: 1000));
            AlterColumn("dbo.News", "shipping", c => c.String(maxLength: 250));
            AlterColumn("dbo.News", "price", c => c.String(maxLength: 1000));
            AlterColumn("dbo.News", "content", c => c.String(maxLength: 250));
            DropColumn("dbo.News", "image6");
            DropColumn("dbo.News", "image5");
            DropColumn("dbo.News", "image4");
            DropColumn("dbo.News", "image3");
            DropColumn("dbo.News", "image2");
            DropColumn("dbo.News", "image1");
            DropColumn("dbo.Advertisings", "positive");
            CreateIndex("dbo.Images", "News_Id");
            AddForeignKey("dbo.Images", "News_Id", "dbo.News", "Id");
        }
    }
}
