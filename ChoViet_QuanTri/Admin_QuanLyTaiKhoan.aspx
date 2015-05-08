<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_QuanLyTaiKhoan.aspx.cs" Inherits="ChoViet_QuanTri.Admin_QuanLyTaiKhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul class="breadcrumb">
		<li><a href="index.html">Quản trị hệ thống</a> <span class="divider">/</span></li>
		<li class="active">Quản lý tài khoản nhân viên</li>
    </ul>
    <hr />
    <asp:GridView ID="DSTaiKhoan" CssClass="table table-hover" runat="server"></asp:GridView>

</asp:Content>
