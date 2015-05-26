<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Member.Master" AutoEventWireup="true" CodeBehind="ChoViet_Member.aspx.cs" Inherits="ChoViet_TrangChu.ChoViet_Member" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        
        <asp:GridView ID="Grdanhsach" CssClass="table table-hover" runat="server" AllowPaging="True" OnPageIndexChanging="Grdanhsach_PageIndexChanging" PageSize="20">
            <Columns>
                <asp:CommandField DeleteText="Xóa" HeaderText="Thao tác" SelectText="Xem chi tiết" ShowDeleteButton="True" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
</asp:Content>
