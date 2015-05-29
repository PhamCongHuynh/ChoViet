<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="QuanTri_HoTroKhachHang.aspx.cs" Inherits="ChoViet_QuanTri.QuanTri_HoTroKhachHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
