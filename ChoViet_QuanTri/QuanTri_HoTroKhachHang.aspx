﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="QuanTri_HoTroKhachHang.aspx.cs" Inherits="ChoViet_QuanTri.QuanTri_HoTroKhachHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="Grdanhsachhotrokhachhang" CssClass="table table-hover" AllowPaging="True" PageSize="20" runat="server">

    </asp:GridView>
</asp:Content>
