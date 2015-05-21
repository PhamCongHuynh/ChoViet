<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="ChoViet_QuanTri.Header" %>
<div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Quản tri hệ thống</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse na">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">ChợViệt.net</a></li>
            <li class=""><a href="#about">Trang cá nhân </a></li>
            <li>
                <asp:Button ID="btlthoat" runat="server" Text="Thoat" OnClick="btlthoat_Click" /></li>
          </ul>
        </div>
</div>


