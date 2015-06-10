<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Choviet_Header.ascx.cs" Inherits="ChoViet_TrangChu.Header" %>
<%@ Register TagPrefix="cc1" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<div class="container">
    <div id="welcomeLine" class="row">
        <div class="span6"><strong>Chào mừng bạn đến hệ thống rao vặt Chợ Việt</strong></div>
        <div class="span6">
            <div class="pull-right">
                <a href="product_summary.html"><span class="">Fr</span></a>
                <a href="product_summary.html"><span class="">Es</span></a>
                <a href="product_summary.html"><span class="">Ngôn ngữ</span></a>
                <span class="btn btn-mini">Tiếng Việt</span>
                <%--<a href="Choviet_Dangtin.aspx"><span class="btn btn-mini btn-primary"><i class="icon-shopping-cart icon-white"></i>Đăng tin ngay </span></a>--%>
                <asp:Button ID="btndangtinngay" CssClass="btn btn-mini btn-primary" runat="server" Text="Đăng tin ngay" OnClick="btndangtinngay_Click" />
                <asp:Button ID="btnlogout" CssClass="btn btn-mini btn-warning" Style="width: 100px" runat="server" Text="Đăng Xuất" OnClick="btnlogout_Click" />
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
            <a class="brand" href="index.aspx">
                <img src="themes/images/logo.png" alt="Chợ Việt.net" /></a>
            <div class="form-inline navbar-search">
                <asp:TextBox CssClass="srchTxt" ID="txtseacrch" placeholder="Tìm kiếm" runat="server"></asp:TextBox>
                <asp:DropDownList CssClass="srchTxt" ID="Drkhuvuc" runat="server"></asp:DropDownList>
                <asp:Button ID="btnsearch" CssClass="btn btn-primary" runat="server" Text="Go" OnClick="btnsearch_Click" />
               <%-- <button type="submit" id="submitButton" class="btn btn-primary">Go</button>--%>
            </div>
            <div class="form-inline navbar-search pull-right">
                <asp:HyperLink ID="hpgioithieu" Style="width: 100px; text-decoration-color: white;" runat="server" Text="Giới thiệu" Font-Size="Medium" ForeColor="White" NavigateUrl="~/Choviet_rule.aspx?matt=15" />&nbsp&nbsp&nbsp		 
                <asp:HyperLink ID="hplienhe" Style="width: 100px; text-decoration-color: white;" runat="server" Text="Liên hệ" Font-Size="Medium" ForeColor="White" NavigateUrl="~/ChoViet_LienHe.aspx" />&nbsp&nbsp&nbsp
                <asp:HyperLink ID="hpcanhan" Style="width: 100px; text-decoration-color: white;" runat="server" Text="Trang cá nhân" Font-Size="Medium" ForeColor="White" NavigateUrl="~/ChoViet_DoiThongTinCaNhan.aspx" />&nbsp&nbsp&nbsp
                <%--<asp:Button ID="btnlogout" CssClass="btn btn-warning" Style="width: 100px" runat="server" Text="Đăng Xuất" OnClick="btnlogout_Click" />--%>
                <asp:Button ID="btnlogin" CssClass="btn btn-success" Style="width: 100px" runat="server" Text="Đăng nhập" />
                <cc1:ModalPopupExtender runat="server" DynamicServicePath="" BehaviorID="btnlogin_ModalPopupExtender" TargetControlID="btnlogin" ID="btnlogin_ModalPopupExtender" PopupControlID="Panellogin" BackgroundCssClass="modalBackground"></cc1:ModalPopupExtender>
            </div>
       <asp:Panel ID="Panellogin" style="width:30%;height:auto; display:none; background:white;" runat="server">
       <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3>Đăng nhập</h3>
		  </div>
		  <div class="modal-body">
			<div class="form-horizontal loginFrm">
			  <div class="control-group">
                <asp:TextBox ID="txtemail" placeholder="Email" runat="server"></asp:TextBox>
				
			  </div>
			  <div class="control-group">
                <asp:TextBox ID="txtpass" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
				
			  </div>
			  <div class="control-group">
				<label class="checkbox">
				<input type="checkbox"/> Nhớ mật khẩu
				</label>
			  </div>
			</div>
            <asp:Button ID="btndangnhap" CssClass="btn btn-success" runat="server" Text="Đăng nhập" OnClick="Button1_Click" />
			
			<button class="btn" data-dismiss="modal" aria-hidden="true">Đóng</button>
		  </div>
   </asp:Panel>
   
  </div>
</div>
</div>