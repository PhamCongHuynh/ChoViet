<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ChoViet_TrangChu.WebForm1" %>

<%@ Register Src="~/Choviet_Footer.ascx" TagPrefix="uc1" TagName="Choviet_Footer" %>
<%@ Register Src="~/Choviet_Header.ascx" TagPrefix="uc1" TagName="Choviet_Header" %>
<%@ Register Src="~/Choviet_MenuRight.ascx" TagPrefix="uc1" TagName="Choviet_MenuRight" %>





<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chợ Việt</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link id="callCss" href="themes/bootshop/bootstrap.min.css" rel="stylesheet" media="screen" />
    <link href="themes/css/base.css" rel="stylesheet"media="screen"/>
    <link href="themes/css/bootstrap-responsive.min.css" rel="stylesheet" />
    <link href="themes/css/font-awesome-ie7.css" rel="stylesheet" />
    <link href="themes/css/font-awesome.css" rel="stylesheet" />
    <link href="themes/js/google-code-prettify/prettify.css" rel="stylesheet" />
    <style type="text/css" id="enject">      
        .auto-style1 {
            width: 100%;
        }
        .modalBackground{
            background-color:black;
            z-index:1000;
            opacity:0.8;  
        }

    </style>
    <link rel="shortcut icon" href="themes/images/ico/favicon.ico"/>
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="themes/images/ico/apple-touch-icon-144-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="themes/images/ico/apple-touch-icon-114-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="themes/images/ico/apple-touch-icon-72-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" href="themes/images/ico/apple-touch-icon-57-precomposed.png"/>




</head>
<body>
    <form id="form1" runat="server">
    
    <div id="header">
        <uc1:Choviet_Header runat="server" id="Choviet_Header" />
    </div>
<!-- Header End====================================================================== -->
    <div id="carouselBlk">
	<div id="myCarousel" class="carousel slide">
		<div class="carousel-inner">
		  <div class="item">
		  <div class="container">
			<a href="index.aspx"><img style="width:100%" src="themes/images/carousel/1.png" alt="special offers"/></a>
			<div class="carousel-caption">
				  <h4>Cái thứ nhất hiển thi</h4>
				  <p>may co phải là cái thứ nhất</p>
				</div>
		  </div>
		  </div>
		  <div class="item active left">
		  <div class="container">
			<a href="index.aspx"><img style="width:100%" src="themes/images/carousel/2.png" alt=""/></a>
				<div class="carousel-caption">
				  <h4>Cái thứ 2 hiển thi</h4>
				  <p>may co phải là cái thứ hai</p>	</div>
		  </div>
		  </div>
		  <div class="item next left">
		  <div class="container">
			<a href="index.aspx"><img src="themes/images/carousel/3.png" alt=""></a>
			<div class="carousel-caption">				  
				</div>
			
		  </div>
		  </div>
		   <div class="item">
		   <div class="container">
			<a href="index.aspx"><img src="themes/images/carousel/4.png" alt=""></a>
			<div class="carousel-caption">
				  
				</div>
		   
		  </div>
		  </div>
		   <div class="item">
		   <div class="container">
			<a href="index.aspx"><img src="themes/images/carousel/5.png" alt=""></a>
			<div class="carousel-caption">
				  
			</div>
		  </div>
		  </div>
		   <div class="item">
		   <div class="container">
			<a href="index.aspx"><img src="themes/images/carousel/6.png" alt=""></a>
			<div class="carousel-caption">				  
				</div>
		  </div>
		  </div>
		</div>
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
	  </div> 
</div>
    <div id="mainBody">
	<div class="container">
	<div class="row">
<!-- Sidebar ================================================== -->
	<div id="sidebar" class="span3">
		<div class="well well-small"><a id="myCart" href="product_summary.html"><img src="themes/images/ico-cart.png" alt="cart"> Danh mục chính <span class="badge badge-warning pull-right"></span></a></div>
        <uc1:Choviet_MenuRight runat="server" id="Choviet_MenuRight" />
	</div>
<!-- Sidebar end=============================================== -->
		<div class="span9">		
			<div class="well well-small">
			<h4>Quảng cáo đặc biệt<small class="pull-right">Tổng số sản phẩm : <asp:Label ID="lbltongsotindb" style ="color:red" runat="server" Text=""></asp:Label> </small> </h4>
			<div class="row-fluid">		
			  <div class="item">
			  <ul class="thumbnails">
                 <asp:Repeater ID="DLDanhSachDB" runat="server">
                      <ItemTemplate>                       
                       <li class="span3">
                          <a href="product_detail.aspx?matinid=<%# Eval("ID") %>">
				          <div class="thumbnail">
				          <i class="tag"></i>
					        <asp:Image ID="Imahinhanh" runat="server" ImageUrl='<%# Eval("image1", "~/Images/{0}") %>'  Height="160px" Width="100%" />
					        <div class="caption">
                              <p><asp:Label ID="txtnguoidan" runat="server" Text='<%# Eval("nguoidang") %>'></asp:Label></p>
                              <p style="text-align:left"><asp:Label ID="txttieu" runat="server" Text='<%# Eval("title") %>'></asp:Label> </p>
					          <p style="text-align:left"><a style="color:red" href="#"><%# Eval("price") %></a><a class="pull-right"><%# Eval("like") %> Thích</a></p>
                            </div>
				          </div>
                           </a>
				        </li>                      
                      </ItemTemplate>
                  </asp:Repeater>
			  </ul>
		</div>
	    </div>
            <h4>Xem nhiều hơn<small class="pull-right">Liên hệ ngay để mua hàng </small></h4>
		</div>
		     <h4>Danh sách sản phẩm trong ngày <small class="pull-right">Tổng số sản phẩm : <asp:Label ID="lbltongdslastp" style ="color:red" runat="server" Text=""></asp:Label> </small> </h4>
			 <ul class="thumbnails">
                  <asp:Repeater ID="DLlatestproducts" runat="server">
                      <ItemTemplate>
                     <li class="span3">
                         <a href="product_detail.aspx?matinid=<%# Eval("ID") %>">
				       <div class="thumbnail">
                          <asp:Image ID="Imahinhanlast" runat="server" ImageUrl='<%# Eval("image1", "~/Images/{0}") %>' Height="200px" Width="100%" />
					        <div class="caption">
                                <h5> <asp:Label ID="txtnguoidang" runat="server" Text='<%# Eval("nguoidang") %>'></asp:Label></h5>
                                <p style="text-align:left"><asp:Label ID="txttieude" runat="server" Text='<%# Eval("title") %>'></asp:Label> </p>
					            <p style="text-align:left"><a style="color:red" href="#"><%# Eval("price") %></a><a class="pull-right"><%# Eval("like") %> Thích</a></p>
					        </div>
				       </div>
                      </a>
				      </li>
                      </ItemTemplate>
                  </asp:Repeater>
			  </ul>
             <div class="pagination">
		     <asp:Repeater ID="rptPages" runat="server"
                onitemcommand="rptPages_ItemCommand1">
                <ItemTemplate>
                    <asp:LinkButton ID="btnPage"
                     style="padding:1px 3px; margin:1px; background:#ccc; border:solid 1px #666; font:8pt tahoma;"
                     CommandName="Page" CommandArgument="<%# Container.DataItem %>"
                     runat="server"><%# Container.DataItem %>
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:Repeater>
			</div>	
		</div>
		</div>
	</div>
</div>
<!-- Footer ================================================================== -->
	<div id="footerSection">
        <uc1:Choviet_Footer runat="server" id="Choviet_Footer" />
	<!-- Container End -->
	</div>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
	<script src="themes/js/jquery.js" type="text/javascript"></script>
	<script src="themes/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="themes/js/google-code-prettify/prettify.js"></script>
	<script src="themes/js/bootshop.js"></script>
    <script src="themes/js/jquery.lightbox-0.5.js"></script>
	
	<!-- Themes switcher section ============================================================================================= -->

    </form>
</body>
</html>
