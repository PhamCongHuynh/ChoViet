<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_PhanCongCongViec.aspx.cs" Inherits="ChoViet_QuanTri.Admin_PhanCongCongViec" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul class="breadcrumb">
		<li><a href="index.html">Quản trị hệ thống</a> <span class="divider">/</span></li>
		<li class="active">Quản lý nhân viên</li>
    </ul>
    <hr />
    <asp:GridView ID="Grphancong" CssClass="table table-hover" runat="server">
        <Columns>
            <asp:CommandField DeleteText="Xóa " HeaderText="Thao tác" SelectText="Xem chi tiết" ShowDeleteButton="True" ShowSelectButton="True" />
        </Columns>
      
    </asp:GridView>
</asp:Content>
