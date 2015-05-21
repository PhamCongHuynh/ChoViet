<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="QuanTri_TinQuangCao.aspx.cs" Inherits="ChoViet_QuanTri.QuanTri_TinQuangCao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul class="breadcrumb">
		<li><a href="index.html">Quản trị hệ thống</a> <span class="divider">/</span></li>
		<li class="active">Quản lý tin quảng cáo</li>
    </ul>
    <asp:GridView ID="GrdanhSachtinquangcao" CssClass="table table-hover" runat="server" AllowPaging="True" PageSize="20" OnPageIndexChanging="GrdanhSachtinquangcao_PageIndexChanging">
    </asp:GridView>
</asp:Content>
