<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_Dulieu_Information.aspx.cs" Inherits="ChoViet_QuanTri.Admin_Dulieu_Information" %>

<%@ Register TagPrefix="cc1" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h2>Quản trị thông tin chợ việt</h2>

    <asp:GridView ID="grDSthongtin" CssClass="table table-hover" runat="server" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="grDSthongtin_PageIndexChanging" PageSize="20" OnRowCreated="grDSthongtin_RowCreated">
        <Columns>
            <asp:BoundField DataField="matin" HeaderText="Mã thông tin" />
            <asp:BoundField DataField="tieude" HeaderText="Tiêu đề" />
            <asp:BoundField DataField="nguoisoan" HeaderText="Người biên soạn" />
            <asp:CommandField DeleteText="Xóa" EditText="Sửa" HeaderText="Thao tác" InsertText="Thêm" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Columns>
    </asp:GridView>

    

</asp:Content>
