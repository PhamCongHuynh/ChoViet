<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ChiTiet.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="product_detail.aspx.cs" Inherits="ChoViet_TrangChu.product_detail" %>

<%@ Register TagPrefix="cc1" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
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
            <li><a href="index.aspx">Trang chủ</a> <span class="divider">/</span></li>
            <li><a href="index.aspx">Chi tiết sản phẩm </a><span class="divider">/</span></li>
        </ul>
        <div class="row">
            <asp:Repeater ID="RPChitiet" runat="server">
                <ItemTemplate>
                    <div id="gallery" class="span3">
                        <a href='<%# "Images/"+ Eval("image1") %>' title="Chợ Việt.net">
                            <img src='<%# "Images/"+ Eval("image1") %>' style="width: 100%" alt="" />
                        </a>
                        <div id="differentview" class="moreOptopm carousel slide">
                            <div class="carousel-inner">
                                <div class="item active">
                                    <a href='<%# "Images/"+ Eval("image2") %>'>
                                        <img style="width: 29%" src='<%# "Images/"+ Eval("image2") %>' alt=""></a>
                                    <a href='<%# "Images/"+ Eval("image3") %>'>
                                        <img style="width: 29%" src='<%# "Images/"+ Eval("image3") %>' alt=""></a>
                                    <a href='<%# "Images/"+ Eval("image4") %>'>
                                        <img style="width: 29%" src='<%# "Images/"+ Eval("image4") %>' alt=""></a>
                                </div>
                                <div class="item">
                                    <a href='<%# "Images/"+ Eval("image5") %>'>
                                        <img style="width: 29%" src='<%# "Images/"+ Eval("image5") %>' alt=""></a>
                                    <a href='<%# "Images/"+ Eval("image6") %>'>
                                        <img style="width: 29%" src='<%# "Images/"+ Eval("image6") %>' alt=""></a>
                                    <a href='<%# "Images/"+ Eval("image1") %>'>
                                        <img style="width: 29%" src='<%# "Images/"+ Eval("image1") %>' alt=""></a>
                                </div>
                            </div>
                        </div>
                        <%--    <div class="btn-toolbar">
			  <div class="btn-group">
                <asp:Button ID="Button2" CssClass="btn" runat="server" Text="" />
                <asp:Button ID="Button3" CssClass="btn" runat="server" Text="" />
                <asp:Button ID="Button4" CssClass="btn icon-home" runat="server" Text="" />    
			  </div>
			</div>--%>
                    </div>
                    <div class="span6">
                        <h3><%# Eval("title") %></h3>
                        <h5>Ngày đăng :<a style="color: red"><%# Eval("timeaction") %></a> <a>Khu Vực :<%# Eval("region") %></a> </h5>
                        <br />
                        <%--<hr class="soft">--%>
                        <h5>Mã Sản phẩm :<%# Eval("ID") %></h5>
                        <%--<hr class="soft">--%>
                        <div class="form-horizontal qtyFrm">
                            <div class="control-group">
                                <label class="control-label"><span>Giá : <%# Eval("price") %></span></label>
                            </div>
                        </div>
                        <h5> Phương thức giao nhận :<a><%# Eval("ship") %> - <%# Eval("pay") %></a></h5>
                        <hr class="soft">
                        <h5>Liên hệ :<a style="color: red"><%# Eval("nguoidang") %></a> <a> trực tiếp qua số điện thoại :<%# Eval("phone") %></a> </h5>
                        <br />
                        <%--<h5 >Liên hệ qua email :<a  style="color:red"><%# Eval("email") %></a></h5><br />		--%>
                        <h5>Bấm gửi email :<asp:ImageButton ID="guimail" CssClass="btn btn-link" ImageUrl="~/Images/lienhe.jpg" runat="server" Height="40" Width="50" />
                        <cc1:ModalPopupExtender runat="server" DynamicServicePath="" BehaviorID="guimail_ModalPopupExtender" TargetControlID="guimail" ID="guimail_ModalPopupExtender" PopupControlID="Panelguimail" BackgroundCssClass="modalBackground" ></cc1:ModalPopupExtender>
                        </h5><br />  				
				<hr class="soft clr">
				<p>
				Mô tả :<%# Eval("content") %>
				</p>
                <div class="pull-right">
                <a href="#"><%# Eval("like") %> người đã </a>
                <a><asp:ImageButton CssClass="btn btn-link" ID="like" ImageUrl="~/Images/20150120-doan-tinh-cach-qua-nut-like-tren-facebook-1.jpg"  runat="server"  Height="26" Width="74" OnClick="like_Click" /></a>
                  <a class="btn btn-small " href="#detail">Thảo luận</a>
                </div>
				<br class="clr">
			<a href="#" name="detail"></a>
			<hr class="soft">
			</div>
              </ItemTemplate>
         </asp:Repeater>
            <asp:Panel ID="Panelguimail" style="width:60%;height:auto; display:none; background:white;" runat="server">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Liên hệ mua hàng</h4>
          </div>
          <div class="modal-body">
              <div class="form-horizontal" role="form">
                  <div class="form-group">
                    <div class="col-sm-10">
                     <asp:TextBox ID="txtemailCus" style="width:100%" placeholder="Email của bạn" TextMode="MultiLine" Columns="30" Rows="1" runat="server"></asp:TextBox>
                    </div>
                  </div> 
                  <br />
                  <div class="form-group">
                    <div class="col-sm-10">
                     <asp:TextBox ID="txtmatkhau" style="width:100%" placeholder="Mật khẩu của bạn" TextMode="Password" runat="server"></asp:TextBox>
                    </div>
                  </div> 
                  <br />
                  <div class="form-group">
                    <div class="col-sm-10">
                     <asp:TextBox ID="txttieude" style="width:100%" placeholder="Tiêu đề" TextMode="MultiLine" Columns="50" Rows="2" runat="server"></asp:TextBox>
                    </div>
                  </div>  
                  <br />
                  <div class="form-group">                  
                    <div class="col-sm-10">
                     <asp:TextBox ID="txtnoidungs" style="width:100%" placeholder="Nội dung" TextMode="MultiLine" Columns="70" Rows="5" runat="server"></asp:TextBox>
                    </div>
                  </div>                 
            </div>
          </div>
          <div class="modal-footer">
            <div class="form-group"> 
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button ID="btnguimail" runat="server" Text="Gửi " OnClick="btnguimail_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Hủy" />
                    </div>
                  </div>
          </div>
            </asp:Panel>

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
                <div class="fb-comments" data-href="<%=Page.Request.Url.AbsoluteUri %>" data-numposts="5" data-colorscheme="light"></div>
              </div>
		<div class="tab-pane fade" id="profile">
        <div class="pull-left">
             <h5>Tổng số kết quả : <asp:Label ID="lbltongsplq" style ="color:red" runat="server" Text=""></asp:Label></h5>
        </div>
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
                        <asp:Image ID="Imahinhanh" runat="server" ImageUrl='<%# Eval("image1", "~/Images/{0}") %>' Height="160px" Width="160px" />
					</div>
					<div class="span5">
						<h5>Ngày đăng :<%# Eval("timeaction") %> </h5><br />
                        <h7>Người đăng :<%# Eval("nguoidang") %> </h7>			
						<hr class="soft">
						<h5><%# Eval("title") %> </h5>
						<p>
						<%# Eval("content") %>
						</p>
						<a class="btn btn-small pull-right" href="product_detail.aspx?matinid=<%# Eval("ID") %>">Xem chi tiết</a>
						<br class="clr">
					</div>
					<div class="span2 alignR">
					<form class="form-horizontal qtyFrm">
					<h3>Giá : <%# Eval("price") %></h3><br />
                    <p><%# Eval("like") %> Người đã thích </p>
					<br>
					
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
                             <a href="product_detail.aspx?matinid=<%# Eval("ID") %>">
					          <div class="thumbnail">
						        <asp:Image ID="Imahinhanh" runat="server" ImageUrl='<%# Eval("image1", "~/Images/{0}") %>' Height="200px" Width="100%" />
						        <div class="caption">
						          <h5><%# Eval("nguoidang") %></h5>
						          <h5 style="text-align:left"><%# Eval("title") %> </h5>
						          <p style="text-align:left"><a style="color:red" href="#"><%# Eval("price") %></a><a class="pull-right"><%# Eval("like") %> Thích</a></p>
						        </div>
					          </div>
                            </a>
					        </li>
                        </ItemTemplate>
                    </asp:Repeater>	
				</ul>
			<hr class="soft">
			</div>
		</div>
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
				<br class="clr">
					 </div>
		</div>
          </div>
            </div>
           </div>

</asp:Content>
