<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="QuanTri_ThongTinChoViet.aspx.cs" Inherits="ChoViet_QuanTri.QuanTri_ThongTinChoViet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul class="breadcrumb">
		<li><a href="index.aspx">Quản trị hệ thống</a><span class="divider">//</span></li>
		<li class="active">Quản lý nhân viên</li>
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
    <asp:GridView ID="grdsthongtin" CssClass="table-hover table" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="grdsthongtin_PageIndexChanging" PageSize="20">
        <Columns>
            <asp:BoundField DataField="matin" HeaderText="Mã mục" />
            <asp:BoundField DataField="tieude" HeaderText="Tiêu đề mục" />
            <asp:BoundField DataField="nguoisoan" HeaderText="Người soạn" />
            <asp:CommandField DeleteText="Xóa" EditText="Sửa" HeaderText="Thao tác" SelectText="Xem chi tiết" ShowDeleteButton="True" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>
