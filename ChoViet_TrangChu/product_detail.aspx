<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ChiTiet.Master" AutoEventWireup="true" CodeBehind="product_detail.aspx.cs" Inherits="ChoViet_TrangChu.product_detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="span9">          
           <ul class="breadcrumb">
            <li><a href="index.aspx">Home</a> <span class="divider">/</span></li>
            <li><a href="product_View.aspx">Products</a> <span class="divider">/</span></li>
            <li class="active">product Details</li>
           </ul>
           <div class="row">
            <asp:Repeater ID="RPChitiet" runat="server">
              <ItemTemplate>   
                  <div id="gallery" class="span3">
                  <a href="themes/images/products/large/f1.jpg" title="Fujifilm FinePix S2950 Digital Camera">
				  <img src="themes/images/products/large/f1.jpg" style="width:100%" alt="Fujifilm FinePix S2950 Digital Camera"/>
                  </a>
			      <div id="differentview" class="moreOptopm carousel slide">
                <div class="carousel-inner">
                  <div class="item active">
                   <a href="themes/images/products/large/f1.jpg"> <img style="width:29%" src="themes/images/products/large/f1.jpg" alt=""></a>
                   <a href="themes/images/products/large/f1.jpg"> <img style="width:29%" src="themes/images/products/large/f2.jpg" alt=""></a>
                   <a href="themes/images/products/large/f1.jpg"> <img style="width:29%" src="themes/images/products/large/f3.jpg" alt=""></a>
                  </div>
                  <div class="item">
                   <a href="themes/images/products/large/f1.jpg"> <img style="width:29%" src="themes/images/products/large/f3.jpg" alt=""></a>
                   <a href="themes/images/products/large/f1.jpg"> <img style="width:29%" src="themes/images/products/large/f1.jpg" alt=""></a>
                   <a href="themes/images/products/large/f1.jpg"> <img style="width:29%" src="themes/images/products/large/f2.jpg" alt=""></a>
                  </div>
                </div>
              </div>			  
			      <div class="btn-toolbar">
			  <div class="btn-group">
				<span class="btn"><i class="icon-envelope"></i></span>
				<span class="btn"><i class="icon-print"></i></span>
				<span class="btn"><i class="icon-zoom-in"></i></span>
				<span class="btn"><i class="icon-star"></i></span>
				<span class="btn"><i class=" icon-thumbs-up"></i></span>
				<span class="btn"><i class="icon-thumbs-down"></i></span>
			  </div>
			</div>
			      </div>
			      <div class="span6">
				<h3><%# Eval("title") %></h3>
				<small>Mã Sản phẩm :<%# Eval("ID") %>  :Tại khu vực <%# Eval("region") %></small>
				<hr class="soft">
				<div class="form-horizontal qtyFrm">
				  <div class="control-group">
					<label class="control-label"><span> Giá : <%# Eval("price") %></span></label>
				  </div>
				</div>
				
				<hr class="soft">
				<h5>Liên hệ :<%# Eval("nguoidang") %> -DT : <%# Eval("phone") %></h5>
                <smail>Email :<%# Eval("email") %></smail>
				<%--<div class="form-horizontal qtyFrm pull-right">
				  <div class="control-group">
					<label class="control-label"><span>Color</span></label>
					<div class="controls">
					  <select class="span2" style="visibility: visible;">
						  <option>Black</option>
						  <option>Red</option>
						  <option>Blue</option>
						  <option>Brown</option>
						</select>
					</div>
				  </div>
				</div>--%>
				<hr class="soft clr">
				<p>
				<%# Eval("content") %>
				</p>
				<a class="btn btn-small pull-right" href="#detail">Thảo luận</a>
				<br class="clr">
			<a href="#" name="detail"></a>
			<hr class="soft">
			</div>
              </ItemTemplate>
         </asp:Repeater>
            <div class="span9">
            <ul id="productDetail" class="nav nav-tabs">
              <li class="active"><a href="#home" data-toggle="tab">Thảo luận</a></li>
              <li><a href="#profile" data-toggle="tab">Sản phẩm liên quan</a></li>
            </ul>
            <div id="myTabContent" class="tab-content">
              <div class="tab-pane fade active in" id="home">
			  <h4>Thảo luận</h4>
                <script>(function (d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) return;
                    js = d.createElement(s); js.id = id;
                    js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.3";
                    fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));</script>
                  <div class="fb-comments" data-href="http://localhost:22269/product_detail.aspx#detail" data-numposts="5" data-colorscheme="light"></div>
              </div>
		<div class="tab-pane fade" id="profile">
		<div id="myTab" class="pull-right">
		 <a href="#listView" data-toggle="tab"><span class="btn btn-large"><i class="icon-list"></i></span></a>
		 <a href="#blockView" data-toggle="tab"><span class="btn btn-large btn-primary"><i class="icon-th-large"></i></span></a>
		</div>
		<br class="clr">
		<hr class="soft">
		<div class="tab-content">
			<div class="tab-pane" id="listView">
            <asp:Repeater ID="DLListView" runat="server">
                    <ItemTemplate>
                       <div class="row">	  
					<div class="span2">
                        <asp:Image ID="Imahinhanh" runat="server" ImageUrl='<%# Eval("image1") %>' Height="160px" Width="160px" />
					</div>
					<div class="span4">
						<h3>New | Available</h3>				
						<hr class="soft">
						<h5><%# Eval("title") %> </h5>
						<p>
						<%# Eval("content") %>
						</p>
						<a class="btn btn-small pull-right" href="product_detail.aspx">Xem chi tiết</a>
						<br class="clr">
					</div>
					<div class="span3 alignR">
					<form class="form-horizontal qtyFrm">
					<h3><%# Eval("price") %></h3><br />
                     <asp:Label ID="Label1" runat="server" Text='<%# Eval("nguoidang") %>'></asp:Label>
					<br>
					<div class="btn-group">
					  <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
					 </div>
						</form>
					</div>
			    </div>
			    <hr class="soft">
                    </ItemTemplate>
                </asp:Repeater>
		    </div>
			<div class="tab-pane active" id="blockView" >
				<ul class="thumbnails">
                    <asp:Repeater ID="DLblockView" runat="server">
                        <ItemTemplate>
                           <li class="span3">
					          <div class="thumbnail">
						        <a href="product_details.html"><img src="themes/images/products/10.jpg" alt=""></a>
						        <div class="caption">
						          <h5><%# Eval("nguoidang") %></h5>
						          <p> 
							       <%# Eval("title") %> 
						          </p>
						          <h4 style="text-align:center"><a class="btn" href="product_detail.aspx">Xem chi tiết<i class="icon-zoom-in"></i></a><a class="btn btn-primary" href="#"><%# Eval("price") %></a></h4>
						        </div>
					          </div>
					        </li>
                        </ItemTemplate>
                    </asp:Repeater>	
				</ul>
			<hr class="soft">
			</div>
		</div>
				<br class="clr">
					 </div>
		</div>
          </div>
            </div>
           </div>

</asp:Content>
