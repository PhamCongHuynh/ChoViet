<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_QuanLyTinQuangCao.aspx.cs" Inherits="ChoViet_QuanTri.Admin_QuanLyTinQuangCao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul class="breadcrumb">
		<li><a href="index.html">Quản trị hệ thống</a> <span class="divider">/</span></li>
		<li class="active">Quản lý tin quảng cáo</li>
    </ul>
    <hr />
    <div class="jumbotron">
        <div class="navbar-form">
            <div class="form-group">
                <asp:Label ID="Label1" CssClass="text-center" runat="server" Text="Tìm kiếm theo ID "></asp:Label>  
            </div>
            <div class="form-group">
                <asp:TextBox ID="txttimkiem" CssClass="form-control"  runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btltimkiem" CssClass="btn btn-success" runat="server" Text="Tìm kiếm" />
            </div>

        </div>
    </div>

</asp:Content>
