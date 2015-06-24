<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_Dulieu_Category.aspx.cs" Inherits="ChoViet_QuanTri.Admin_Dulieu_Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul class="breadcrumb">
		<li><a href="index.aspx">Quản trị hệ thống</a><span class="divider"></span></li>
		<li class="active">Quản lý dữ liệu danh mục</li>
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
    <h2>Quản trị danh mục chợ việt</h2>
    <div class="pull-right">
         <h4>Tổng số : <asp:Label ID="lbltongketqua" style ="color:red" runat="server" Text=""></asp:Label> kết quả</h4>
    </div>
    <br />
    <asp:GridView ID="grDSdanhmuc" CssClass="table table-hover" runat="server" OnSelectedIndexChanging="grDSdanhmuc_SelectedIndexChanging" AutoGenerateColumns="False" OnRowDataBound="grDSdanhmuc_RowDataBound">
        <Columns>
            
            <asp:BoundField DataField="Id" HeaderText="Mã quảng cáo" />
            <asp:BoundField DataField="parent" HeaderText="Thuộc danh mục" />
            <asp:BoundField DataField="name" HeaderText="Tên quảng cáo" />
            
            <asp:CommandField DeleteText="Xóa" EditText="Sửa" HeaderText="Thao tác" InsertText="Thêm" ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>

</asp:Content>
