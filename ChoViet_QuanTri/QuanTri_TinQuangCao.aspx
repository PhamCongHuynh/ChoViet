<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="QuanTri_TinQuangCao.aspx.cs" Inherits="ChoViet_QuanTri.QuanTri_TinQuangCao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul class="breadcrumb">
		<li><a href="index.html">Quản trị hệ thống</a> <span class="divider">//</span></li>
		<li class="active">Quản lý tin quảng cáo</li>
    </ul>
    <hr />
    <div class="jumbotron">
        <div class="navbar-form">
            <div class="form-group">
                <asp:Label ID="Label1" CssClass="text-center" runat="server" Text="Tìm kiếm theo ID "></asp:Label>  
            </div>
            <div class="form-group" style="min-width:70%">
                <asp:TextBox ID="txttimkiem" CssClass="form-control" style="min-width:100%"  runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btltimkiem" CssClass="btn btn-success" runat="server" Text="Tìm kiếm" />
            </div>
        </div>
    </div>
    <asp:GridView ID="GrdanhSachtinquangcao" CssClass="table table-hover" runat="server" AllowPaging="True" PageSize="20" OnPageIndexChanging="GrdanhSachtinquangcao_PageIndexChanging" OnSelectedIndexChanging="GrdanhSachtinquangcao_SelectedIndexChanging">
        <Columns>
            <asp:CommandField DeleteText="Xóa" HeaderText="Thao tác" SelectText="Xem chi tiết" ShowDeleteButton="True" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>
