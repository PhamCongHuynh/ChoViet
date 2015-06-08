<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="QuanTri_HoTroKhachHang.aspx.cs" Inherits="ChoViet_QuanTri.QuanTri_HoTroKhachHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul class="breadcrumb">
		<li><a href="index.html">Quản trị hệ thống</a> <span class="divider">//</span></li>
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
