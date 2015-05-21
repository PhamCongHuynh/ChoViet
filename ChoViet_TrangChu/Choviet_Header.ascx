<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Choviet_Header.ascx.cs" Inherits="ChoViet_TrangChu.Header" %>
<div class="container">
<div id="welcomeLine" class="row">
	<div class="span6">Welcome!<strong> User</strong></div>
	<div class="span6">
	<div class="pull-right">
		<a href="product_summary.html"><span class="">Fr</span></a>
		<a href="product_summary.html"><span class="">Es</span></a>
        <a href="product_summary.html"><span class="">Ngôn ngữ</span></a>
		<span class="btn btn-mini">Tiếng Việt</span>
		<a href="product_summary.html"><span class="btn btn-mini btn-primary"><i class="icon-shopping-cart icon-white"></i> Đăng tin ngay </span> </a> 
	</div>
	</div>
</div>
<!-- Navbar ================================================== -->
<div id="logoArea" class="navbar">
<a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
</a>
  <div class="navbar-inner">
    <a class="brand" href="index.html"><img src="themes/images/logo.png" alt="Chợ Việt.net"/></a>
		<div class="form-inline navbar-search">
          <asp:TextBox CssClass="srchTxt" ID="seacrch" runat="server"></asp:TextBox>
          <asp:DropDownList CssClass="srchTxt" ID="DrCatgory" runat="server"></asp:DropDownList>
		  <button type="submit" id="submitButton" class="btn btn-primary">Go</button>
        </div>

    <ul id="topMenu" class="nav pull-right">
	 <li class=""><a href="normal.html">Giới thiệu</a></li>
	 <li class=""><a href="contact.html">Liên hệ</a></li>
     <li class=""><a href="Choviet_DangKy.aspx">Đăng ký </a></li>
	 <li class="">
	 <a href="#login" role="button" data-toggle="modal" style="padding-right:0"><span class="btn btn-large btn-success">Đăng nhập</span></a>
	 <div id="login" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="false">
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3>Đăng nhập</h3>
		  </div>
		  <div class="modal-body">
			<div class="form-horizontal loginFrm">
			  <div class="control-group">								
				<input type="text" id="inputEmail" placeholder="Email"/>
			  </div>
			  <div class="control-group">
				<input type="password" id="inputPassword" placeholder="Password"/>
			  </div>
			  <div class="control-group">
				<label class="checkbox">
				<input type="checkbox"/> Nhớ mật khẩu
				</label>
			  </div>
			</div>		
			<button type="submit" class="btn btn-success">Đăng nhập</button>
			<button class="btn" data-dismiss="modal" aria-hidden="true">Đóng</button>
		  </div>
	</div>
     
	</li>
    </ul>
  </div>
</div>
</div>