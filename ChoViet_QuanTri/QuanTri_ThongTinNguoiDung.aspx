<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="QuanTri_ThongTinNguoiDung.aspx.cs" Inherits="ChoViet_QuanTri.QuanTri_ThongTinNguoiDung" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul class="breadcrumb">
		<li><a href="index.aspx">Quản trị hệ thống</a> <span class="divider"></span></li>
		<li class="active">Quản lý thông tin người dùng</li>
    </ul>
    <hr />
    <div class="jumbotron">
        <h2>Chào mừng bạn đã đăng nhập trang quản trị hệ thống Chợ Việt </h2>  
        <p>--Phần nội dung đang được xây dựng--</p> 
    </div>
    <asp:Label ID="lblthongbao" style ="color:red" runat="server" Text=""></asp:Label>
    <div class="pull-right">
         <h4>Tổng số : <asp:Label ID="lbltongketqua" style ="color:red" runat="server" Text=""></asp:Label> kết quả</h4>
    </div>
    <asp:GridView ID="Grdanhsachnguoidung" CssClass="table table-hover" runat="server" AllowPaging="True" PageSize="20" AutoGenerateColumns="False" OnRowDeleting="Grdanhsachnguoidung_RowDeleting" DataKeyNames="Id" OnRowEditing="Grdanhsachnguoidung_RowEditing" >
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="ID" />
            <asp:BoundField DataField="name" HeaderText="Họ tên" />
            <asp:BoundField DataField="phonenumber" HeaderText="Di động" />
            <asp:BoundField DataField="email" HeaderText="E-mail" />
            <asp:BoundField DataField="address" HeaderText="Địa chỉ" />
            <asp:BoundField DataField="datecreate" HeaderText="Ngày đăng ký" />
            <asp:CommandField DeleteText="Xóa" HeaderText="Thao tác" SelectText="ss" ShowDeleteButton="True" EditText="Xem chi tiết" ShowEditButton="True" />

        </Columns>
    </asp:GridView>
    <hr />
</asp:Content>
