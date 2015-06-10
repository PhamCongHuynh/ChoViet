using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DATA;
using System.Collections;

namespace BUSINESS
{
    public class News_Controller
    {

        private UnitOfWork unitOfWork = new UnitOfWork();
        private Repository<News> News_ControllerREPO;

        public News_Controller()
        {
            News_ControllerREPO = unitOfWork.Repository<News>();
        }
        // lấy tất cả danh sách tin tức 
        public List<News> GetAll()
        {
            List<News> New = News_ControllerREPO.Table.ToList();
            return New;
        }
        public void Delete(int ids)
        {
            News obj = News_ControllerREPO.GetById(ids);
            News_ControllerREPO.Delete(obj);
        }
        // phương thức đăng tin mới 
        public static void insertNew(string fullname,string phonenumber,string emailcus,string addresscontrac,string typenew,string titles,string contents, string image1s,string image2s,string image3s, string image4s, string image5s,string image6s, string prices,string pays, string shippings,string datecreates,int idmember, int idmanager, int idcategory,int idregions)
        {
            using(var db=new dbchoviet())
            {
                var manager=db.Account_Managers.FirstOrDefault(ac=>ac.Id==idmanager);
                var member=db.Account_Members.FirstOrDefault(acm=>acm.Id==idmember);
                var categorys=db.Categorys.FirstOrDefault(ca=>ca.Id==idcategory);
                var region=db.Regions.FirstOrDefault(re=>re.Id==idregions);
                News obj=new News();
                obj.full_name=fullname;
                obj.phone_number=phonenumber;
                obj.email_cus=emailcus;
                obj.Address_contact=addresscontrac;
                obj.type_news=typenew;
                obj.title=titles;
                obj.content=contents;
                obj.image1=image1s;
                obj.image2=image2s;
                obj.image3=image3s;
                obj.image4=image4s;
                obj.image5=image5s;
                obj.image6=image6s;
                obj.price=prices;
                obj.pay=pays;
                obj.shipping=shippings;
                obj.datecreate=datecreates;
                obj.Account_Managers=manager;
                obj.Account_Members=member;
                obj.Category=categorys;
                obj.Regions=region;
                db.Newss.Add(obj);
                db.SaveChanges();
            }
        }
        //phương thức trả về phần danh sách sản phầm hiển thị trang index 30 sản phẩm
        public static IEnumerable ViewLastProduct()
        {
            using (dbchoviet db = new dbchoviet())
            {
                var Views = (from n in db.Newss.AsEnumerable()
                             join ac in db.Account_Members on n.Account_Members.Id equals ac.Id
                             join re in db.Regions on n.Regions.Id equals re.Id
                             join ca in db.Categorys on n.Category.Id equals ca.Id
                             select new
                             {
                                 ID = n.Id,
                                 title = n.title,
                                 price = n.price,
                                 region =re.Name,
                                 danhmuc=ca.name,
                                 timeaction =n.dateaction,
                                 nguoidang=ac.name,
                                 url_image = n.image1
                             });
                return Views.ToList();
            }
        }
        //phương thức trả về phần danh sách sản phầm nổi bật hiển thị trang index 4 sản phẩm
        public static IEnumerable ViewSPnoibat()
        {
            using (dbchoviet db = new dbchoviet())
            {
                var Views = (from n in db.Newss.AsEnumerable()
                            join ac in db.Account_Members on n.Account_Members.Id equals ac.Id
                            join re in db.Regions on n.Regions.Id equals re.Id
                            join ca in db.Categorys on n.Category.Id equals ca.Id
                            select new
                            {
                                ID = n.Id,
                                title = n.title,
                                price = n.price,
                                region = re.Name,
                                danhmuc = ca.name,
                                timeaction = n.dateaction,
                                nguoidang = ac.name,
                                url_image = n.image1
                            }).Take(4);
                return Views.ToList();
            }
        }
        // phương thức lấy các sản phẩm theo từng danh mục
        public static IEnumerable ViewByproduct(int idDanhmuc)
        {
            using (dbchoviet db = new dbchoviet())
            {
                var Views = (from n in db.Newss.AsEnumerable()
                            where n.Category.Id==idDanhmuc
                            join ac in db.Account_Members on n.Account_Members.Id equals ac.Id
                            join re in db.Regions on n.Regions.Id equals re.Id
                            join ca in db.Categorys on n.Category.Id equals ca.Id
                            select new
                            {
                                ID = n.Id,
                                title = n.title,
                                price = n.price,
                                region = re.Name,
                                danhmuc = ca.name,
                                timeaction = n.dateaction,
                                nguoidang = ac.name,
                                image1 = n.image1,
                                content=n.content
                            }).Take(30);
                return Views.ToList();
            }
        }
        public static IEnumerable ViewByproductsearch(int idkhuvuc,string tukhoa)
        {
            using (dbchoviet db = new dbchoviet())
            {
                var Views = (from n in db.Newss.AsEnumerable()
                             where n.Regions.Id==idkhuvuc && n.title.Contains(tukhoa)
                             join ac in db.Account_Members on n.Account_Members.Id equals ac.Id
                             join re in db.Regions on n.Regions.Id equals re.Id
                             join ca in db.Categorys on n.Category.Id equals ca.Id
                             select new
                             {
                                 ID = n.Id,
                                 title = n.title,
                                 price = n.price,
                                 region = re.Name,
                                 danhmuc = ca.name,
                                 timeaction = n.dateaction,
                                 nguoidang = ac.name,
                                 image1 = n.image1,
                                 content = n.content
                             });
                return Views.ToList();
            }
        }

        //phương thức trả về chi tiết 1 sản phẩm theo mã id
        public static IEnumerable ViewByChiTiet(int ids)
        {
            using (dbchoviet db = new dbchoviet())
            {
                var Views = from n in db.Newss.AsEnumerable()
                             where n.Id==ids
                             join ac in db.Account_Members on n.Account_Members.Id equals ac.Id
                             join re in db.Regions on n.Regions.Id equals re.Id
                             join ca in db.Categorys on n.Category.Id equals ca.Id
                             
                             select new
                             {
                                 ID = n.Id,
                                 title = n.title,
                                 content=n.content,
                                 price = n.price,
                                 region =re.Name,
                                 danhmuc=ca.name,
                                 timeaction =n.dateaction,
                                 email=ac.email,
                                 phone=ac.phonenumber,
                                 nguoidang=ac.name,
                                 image1=n.image1,
                                 image2 = n.image2,
                                 image3 = n.image3,
                                 image4 = n.image4,
                                 image5 = n.image5,
                                 image6 = n.image6,
                                 ship= n.shipping      
                             };
                return Views.ToList();
            }
        }
        //Quản trị: phương thức này trả về danh sách các sản phẩm trong phần quản trị
        public static IEnumerable ViewDanhSachTinQLByCategoryID(int ids)
        {
            using (dbchoviet db = new dbchoviet())
            {
                var Views = from n in db.Newss.AsEnumerable()
                            where n.Id == ids
                            join ac in db.Account_Members on n.Account_Members.Id equals ac.Id
                            join re in db.Regions on n.Regions.Id equals re.Id
                            join ca in db.Categorys on n.Category.Id equals ca.Id

                            select new
                            {
                                matin = n.Id,
                                tieude = n.title,
                                loaitin=n.type_news,
                                region = re.Name,
                                danhmuc = ca.name,
                                thoigiannhan = n.datecheck,
                                nguoidang = ac.name
                            };
                return Views.ToList();
            }

        }
        // quản trị : phương thức xem chi tiết 1 tin quảng cáo theo mã ID 
        public static IEnumerable ViewChiTietTinQLByCategoryID(int ids)
        {
            using (dbchoviet db = new dbchoviet())
            {
                var Views = from n in db.Newss.AsEnumerable()
                            where n.Id == ids
                            join ac in db.Account_Members on n.Account_Members.Id equals ac.Id
                            join re in db.Regions on n.Regions.Id equals re.Id
                            join ca in db.Categorys on n.Category.Id equals ca.Id
                            select new
                            {
                                matin = n.Id,
                                tieude = n.title,
                                noidung=n.content,
                                loaitin = n.type_news,
                                email=ac.email,
                                dienthoai=ac.phonenumber,
                                image1=n.image1,
                                image2 = n.image2,
                                image3 = n.image3,
                                image4 = n.image4,
                                image5 = n.image5,
                                image6 = n.image6,
                                khuvuc = re.Name,
                                danhmuc = ca.name,
                                gia=n.price,
                                cachthanhtoan=n.pay,
                                quytrinhvanchuyen=n.shipping,
                                thoigiannhan = n.datecheck,
                                nguoidang = ac.name
                            };
                return Views.ToList();
            }

        }
        // Quản trị / trả về danh sách sản phẩm theo mã danh mục và tình trạng tin quảng cáo đã được đăng hay chưa 
        public static IEnumerable QTViewDSProduct(int cate_id,string st_new_id)
        {
            using (dbchoviet db = new dbchoviet())
            {
                var Views = from n in db.Newss.AsEnumerable()
                            //where n.status_news.Equals(st_new_id) && n.Category.Id==cate_id
                            where n.Category.Id==cate_id && n.status_news.Contains(st_new_id)
                            join ac in db.Account_Members on n.Account_Members.Id equals ac.Id
                            join re in db.Regions on n.Regions.Id equals re.Id
                            join ca in db.Categorys on n.Category.Id equals ca.Id
                            select new
                            {
                                matin = n.Id,
                                tieude = n.title,
                                loaitin= n.type_news,
                                khuvuc = re.Name,
                                danhmuc = ca.name,
                                thoigiangui = n.datecreate,
                                nguoidang = ac.name,
                            };
                return Views.ToList();
            }
        }
        // phương thức trả về các tin quảng cáo của từng người dùng theo tình trạng bài đăng 
        public static IEnumerable NewsNguoiDungBy(int AC_id, string st_new_id)
        {
            using (dbchoviet db = new dbchoviet())
            {
                var Views = from n in db.Newss.AsEnumerable()
                            //where n.status_news.Contains("1") && n.Account_Members.Id == 2
                            where n.Account_Members.Id==AC_id
                            join ac in db.Account_Members on n.Account_Members.Id equals ac.Id
                            join re in db.Regions on n.Regions.Id equals re.Id
                            join ca in db.Categorys on n.Category.Id equals ca.Id
                            select new
                            {
                                Matin = n.Id,
                                tieude = n.title,
                                khuvuc = re.Name,
                                danhmuc = ca.name,
                                kiemduyet=n.status_news,
                                thoigiandang = n.datecreate,
                                luotxem=n.views                               
                            };
                return Views.ToList();
            }
        }
    }
}
