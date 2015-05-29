<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="QuanTri_ThongTinChoViet.aspx.cs" Inherits="ChoViet_QuanTri.QuanTri_ThongTinChoViet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="grdsthongtin" CssClass="table-hover table" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="grdsthongtin_PageIndexChanging" PageSize="20">
        <Columns>
            <asp:BoundField DataField="matin" HeaderText="Mã mục" />
            <asp:BoundField DataField="tieude" HeaderText="Tiêu đề mục" />
            <asp:BoundField DataField="nguoisoan" HeaderText="Người soạn" />
            <asp:CommandField DeleteText="Xóa" EditText="Sửa" HeaderText="Thao tác" SelectText="Xem chi tiết" ShowDeleteButton="True" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>
