<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Member.Master" AutoEventWireup="true" CodeBehind="ChoViet_Member.aspx.cs" Inherits="ChoViet_TrangChu.ChoViet_Member" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <ul class="breadcrumb">
		    <li><a href="index.html">Người dùng</a> <span class="divider">//</span></li>
		    <li class="active">Trang cá nhân</li>
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
        
        <asp:GridView ID="Grdanhsach" CssClass="table table-hover" runat="server" AllowPaging="True" OnPageIndexChanging="Grdanhsach_PageIndexChanging" PageSize="20">
            <Columns>
                <asp:CommandField DeleteText="Xóa" HeaderText="Thao tác" SelectText="Xem chi tiết" ShowDeleteButton="True" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
</asp:Content>
