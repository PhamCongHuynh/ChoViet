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
        public List<News> GetById(int ids)
        {
            List<News> list = new List<News>();
            News ac = News_ControllerREPO.GetById(ids);
            list.Add(ac);
            return list;
        }
        // phương thức đăng tin mới 
        public static void insertNew(string fullname,string phonenumber,string emailcus,string addresscontrac,string typenew,string titles,string contents, string image1s,string image2s,string image3s, string image4s, string image5s,string image6s, string prices,string pays,string shippings,string datecreates,int idmember, int idmanager, int idcategory,int idregions)
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
                obj.status_news ="0";
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
        //phương thức trả về phần danh sách sản phầm hiển thị trang index sản phẩm
        public static IEnumerable ViewLastProduct()
        {
            using (dbchoviet db = new dbchoviet())
            {
                var Views = (from n in db.Newss.AsEnumerable()
                             where n.status_news=="1"
                             join ac in db.Account_Members on n.Account_Members.Id equals ac.Id
                             join re in db.Regions on n.Regions.Id equals re.Id
                             join ca in db.Categorys on n.Category.Id equals ca.Id
                             orderby n.Id descending
                             select new
                             {
                                 ID = n.Id,
                                 title = n.title,
                                 price = n.price,
                                 region =re.Name,
                                 danhmuc=ca.name,
                                 timeaction =n.dateaction,
                                 nguoidang=ac.name,
                                 image1 = n.image1
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
                            where n.status_news == "1"
                            join ac in db.Account_Members on n.Account_Members.Id equals ac.Id
                            join re in db.Regions on n.Regions.Id equals re.Id
                            join ca in db.Categorys on n.Category.Id equals ca.Id
                            orderby n.Id descending
                            select new
                            {
                                ID = n.Id,
                                title = n.title,
                                price = n.price,
                                region = re.Name,
                                danhmuc = ca.name,
                                timeaction = n.dateaction,
                                nguoidang = ac.name,
                                image1 = n.image1
                            }).Take(4);
                return Views.ToList();
            }
        }
        //phuong thuc lay ra cac san pham cung loai voi san pham co ma id 
        //nhan vao id san pham va tra ve danh sach cac san pham trong danh muc do
        //public static IEnumerable ViewByproductFromSP(int idsp)
        //{
        //    using (dbchoviet db = new dbchoviet())
        //    {

        //        var categorys = db.Categorys.FirstOrDefault(ca => ca.Id ==);
        //        var Views = (from n in db.Newss.AsEnumerable()
                             
        //                     //where n.Category.Id == idDanhmuc
        //                     join ac in db.Account_Members on n.Account_Members.Id equals ac.Id
        //                     join re in db.Regions on n.Regions.Id equals re.Id
        //                     join ca in db.Categorys on n.Category.Id equals ca.Id
        //                     select new
        //                     {
        //                         ID = n.Id,
        //                         title = n.title,
        //                         price = n.price,
        //                         region = re.Name,
        //                         danhmuc = ca.name,
        //                         timeaction = n.dateaction,
        //                         nguoidang = ac.name,
        //                         image1 = n.image1,
        //                         content = n.content
        //                     }).Take(30);
        //        return Views.ToList();
        //    }
        //}
        // phương thức lấy các sản phẩm theo từng danh mục
        public static IEnumerable ViewByproduct(int idDanhmuc)
        {
            using (dbchoviet db = new dbchoviet())
            {
                var Views = (from n in db.Newss.AsEnumerable()
                           
                            where n.Category.Id==idDanhmuc && n.status_news=="1"
                            join ac in db.Account_Members on n.Account_Members.Id equals ac.Id
                            join re in db.Regions on n.Regions.Id equals re.Id
                            join ca in db.Categorys on n.Category.Id equals ca.Id
                            orderby n.Id descending
                            select new
                            {
                                ID = n.Id,
                                title = n.title,
                                price = n.price,
                                region = re.Name,
                                danhmuc = ca.name,
                                timeaction = n.datecheck,
                                nguoidang = ac.name,
                                image1 = n.image1,
                                content=n.content
                            }).Take(30);
                return Views.ToList();
            }
        }
        public static int kiemtraDM(int idsp)
        { 
            using(dbchoviet db=new dbchoviet())
            {
                var query = from n in db.Newss
                            where n.Id== idsp
                            //join ca in db.Categorys on n.Category.Id equals ca.Id
                            select n.Category;
                var categorys = (from c in db.Categorys where c == query.FirstOrDefault() select c).First();

                return categorys.Id;
            }
           
        }
        public static IEnumerable ViewByproductsearch(int idkhuvuc,string tukhoa)
        {
            using (dbchoviet db = new dbchoviet())
            {
                var Views = (from n in db.Newss.AsEnumerable()
                             where (n.Regions.Id==idkhuvuc || n.title.Contains(tukhoa)) && n.status_news=="1"
                             join ac in db.Account_Members on n.Account_Members.Id equals ac.Id
                             join re in db.Regions on n.Regions.Id equals re.Id
                             join ca in db.Categorys on n.Category.Id equals ca.Id
                             orderby n.Id descending
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
                                 timeaction =n.datecheck,
                                 email=ac.email,
                                 phone=n.phone_number,
                                 nguoidang=ac.name,
                                 image1=n.image1,
                                 image2 = n.image2,
                                 image3 = n.image3,
                                 image4 = n.image4,
                                 image5 = n.image5,
                                 image6 = n.image6,
                                 ship= n.shipping,
                                 hoten=n.full_name,
                                 diachi=n.Address_contact,
                                 pay=n.pay,
                                 loaitin=n.type_news
                                 
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
                            orderby n.Id descending
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
                            where n.status_news==st_new_id && n.Category.parent==cate_id
                            //where n.Category.Id==cate_id
                            join ac in db.Account_Members on n.Account_Members.Id equals ac.Id
                            join re in db.Regions on n.Regions.Id equals re.Id
                            join ca in db.Categorys on n.Category.Id equals ca.Id
                            orderby n.Id descending
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
                            where n.status_news==st_new_id && n.Account_Members.Id == AC_id
                            //where n.Account_Members.Id==AC_id
                            join ac in db.Account_Members on n.Account_Members.Id equals ac.Id
                            join re in db.Regions on n.Regions.Id equals re.Id
                            join ca in db.Categorys on n.Category.Id equals ca.Id
                            orderby n.Id descending
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
        public static IEnumerable TimkiemNguoiDungBy(int AC_id,int matin ,string st_new_id)
        {
            using (dbchoviet db = new dbchoviet())
            {
                var Views = from n in db.Newss.AsEnumerable()
                            where n.status_news == st_new_id && n.Account_Members.Id == AC_id && n.Id==matin
                            //where n.Account_Members.Id==AC_id
                            join ac in db.Account_Members on n.Account_Members.Id equals ac.Id
                            join re in db.Regions on n.Regions.Id equals re.Id
                            join ca in db.Categorys on n.Category.Id equals ca.Id
                            orderby n.Id descending
                            select new
                            {
                                Matin = n.Id,
                                tieude = n.title,
                                khuvuc = re.Name,
                                danhmuc = ca.name,
                                kiemduyet = n.status_news,
                                thoigiandang = n.datecreate,
                                luotxem = n.views
                            };
                return Views.ToList();
            }
        }
        public static void updateDuyet(int matin,string ghichu,string statusnew,string ngayduyet,string ngayhoatdong, int idma)
        {
            using (dbchoviet db = new dbchoviet())
            {
                var manager=db.Account_Managers.FirstOrDefault(ac=>ac.Id==idma);
                var query = (from n in db.Newss where n.Id==matin select n).First();
                query.note=ghichu;
                query.status_news = statusnew;
                query.datecheck=ngayduyet;
                query.dateaction=ngayhoatdong;
                query.Account_Managers=manager;
                db.SaveChanges();
            }
        }
        public static IEnumerable timkiemBYIdQT(int idma,int cateid)
        {           
            using (dbchoviet db = new dbchoviet())
            {
                
                var Views = from n in db.Newss.AsEnumerable()
                            where n.Id==idma && n.Category.parent == cateid
                            //where n.Category.Id==cate_id
                            join ac in db.Account_Members on n.Account_Members.Id equals ac.Id
                            join re in db.Regions on n.Regions.Id equals re.Id
                            join ca in db.Categorys on n.Category.Id equals ca.Id
                            orderby n.Id descending
                            select new
                            {
                                matin = n.Id,
                                tieude = n.title,
                                loaitin = n.type_news,
                                khuvuc = re.Name,
                                danhmuc = ca.name,
                                thoigiangui = n.datecreate,
                                nguoidang = ac.name,
                            };
                return Views.ToList();
            }
        }
        public static IEnumerable timkiemBYKhacQT(int khuvuc, string loaitin, int cateid)
        {
            using (dbchoviet db = new dbchoviet())
            {
                var region = db.Regions.FirstOrDefault(ca => ca.Id == khuvuc);
                var Views = from n in db.Newss.AsEnumerable()
                            where (n.Regions == region || n.type_news == loaitin) && n.Category.parent == cateid
                            //where n.Category.Id==cate_id
                            join ac in db.Account_Members on n.Account_Members.Id equals ac.Id
                            join re in db.Regions on n.Regions.Id equals re.Id
                            join ca in db.Categorys on n.Category.Id equals ca.Id
                            orderby n.Id descending
                            select new
                            {
                                matin = n.Id,
                                tieude = n.title,
                                loaitin = n.type_news,
                                khuvuc = re.Name,
                                danhmuc = ca.name,
                                thoigiangui = n.datecreate,
                                nguoidang = ac.name,
                            };
                return Views.ToList();
            }
        }


    }
}
