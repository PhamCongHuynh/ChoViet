<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_QuanLyTaiKhoan.aspx.cs" Inherits="ChoViet_QuanTri.Admin_QuanLyTaiKhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul class="breadcrumb">
		<li><a href="index.aspx">Quản trị hệ thống</a><span class="divider"></span></li>
		<li class="active">Quản lý tài khoản nhân viên </li>
    </ul>
    <hr />
    <%--<div class="jumbotron">
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
    </div>--%>
    <div class="pull-right">
         <h4>Tổng số : <asp:Label ID="lbltongketqua" style ="color:red" runat="server" Text=""></asp:Label> kết quả</h4>
    </div>
    <asp:GridView ID="DSTaiKhoan" CssClass="table table-hover" runat="server" AutoGenerateColumns="False" OnRowDataBound="DSTaiKhoan_RowDataBound" OnRowEditing="DSTaiKhoan_RowEditing" OnRowDeleting="DSTaiKhoan_RowDeleting" DataKeyNames="Id">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Mã nhân viên" />
            <asp:BoundField DataField="name" HeaderText="Họ và tên" />
            <asp:BoundField DataField="phonenumber" HeaderText="Số điện thoại" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="position" HeaderText="Chức vụ" />
            <asp:BoundField DataField="datecreate" HeaderText="Ngày làm việc" />
            <asp:CommandField EditText="Xem chi tiết" HeaderText="Thao tác" ShowEditButton="True" />
            <asp:CommandField DeleteText="Xóa" EditText="ss" HeaderText="Thao tác" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>

</asp:Content>
