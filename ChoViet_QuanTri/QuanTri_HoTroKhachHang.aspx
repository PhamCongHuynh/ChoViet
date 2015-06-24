<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="QuanTri_HoTroKhachHang.aspx.cs" Inherits="ChoViet_QuanTri.QuanTri_HoTroKhachHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul class="breadcrumb">
		<li><a href="index.aspx">Quản trị hệ thống</a> <span class="divider"></span></li>
		<li class="active">Quản lý nhân viên</li>
    </ul>
    <hr />
     <div class="jumbotron">
      <h2>Chào mừng bạn đã đăng nhập trang quản trị hệ thống Chợ Việt </h2>  
      <p>--Phần nội dung đang được xây dựng--</p> 
    </div>
    <div class="pull-right">
         <h4>Tổng số : <asp:Label ID="lbltongketqua" style ="color:red" runat="server" Text=""></asp:Label> kết quả</h4>
    </div>
    <asp:GridView ID="Grdanhsachhotrokhachhang" CssClass="table table-hover" AllowPaging="True" PageSize="20" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="Grdanhsachhotrokhachhang_PageIndexChanging">
        <Columns>
            <asp:BoundField DataField="matin" HeaderText="Mã hỗ trợ" />
            <asp:BoundField DataField="nguoigui" HeaderText="Người gửi" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="sodienthoai" HeaderText="Số điện thoại" />
            <asp:BoundField DataField="ngaygui" HeaderText="Ngày gửi" />
            <asp:BoundField DataField="nguoiduyet" HeaderText="Người duyệt" />
            <asp:CommandField DeleteText="Xóa" HeaderText="Thao tác" SelectText="Xem chi tiết" ShowDeleteButton="True" ShowSelectButton="True" />
        </Columns>

    </asp:GridView>
</asp:Content>
