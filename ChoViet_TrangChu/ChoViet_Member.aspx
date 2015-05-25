<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ThongTin.Master" AutoEventWireup="true" CodeBehind="ChoViet_Member.aspx.cs" Inherits="ChoViet_TrangChu.ChoViet_Member" %>

<%@ Register Src="~/Choviet_MenuMember.ascx" TagPrefix="uc1" TagName="Choviet_MenuMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="min-height:500px;">
	<div class="row">
<!-- Sidebar ================================================== -->
	<div id="sidebar" class="span3">
        <uc1:Choviet_MenuMember runat="server" id="Choviet_MenuMember" />
	</div>
    <div class="span9">

        <asp:GridView ID="Grdanhsach" CssClass="table table-hover" runat="server" AllowPaging="True" OnPageIndexChanging="Grdanhsach_PageIndexChanging" PageSize="20">
            <Columns>
                <asp:CommandField DeleteText="Xóa" HeaderText="Thao tác" SelectText="Xem chi tiết" ShowDeleteButton="True" ShowSelectButton="True" />
            </Columns>

        </asp:GridView>

    </div>
    </div>
    </div>
</asp:Content>
