<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_PhanCongCongViec.aspx.cs" Inherits="ChoViet_QuanTri.Admin_PhanCongCongViec" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul class="breadcrumb">
		<li><a href="index.aspx">Quản trị hệ thống</a><span class="divider"></span></li>
		<li class="active">Quản lý phân công công việc</li>
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
    <asp:GridView ID="Grphancong" CssClass="table table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" OnRowEditing="Grphancong_RowEditing" OnRowDataBound="Grphancong_RowDataBound">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID " />
            <asp:BoundField DataField="Name" HeaderText="Tên nhân viên" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="Di động" />
            <asp:BoundField DataField="Chuvu" HeaderText="Chức Vụ" />
            <asp:BoundField DataField="Danhmuc" HeaderText="Danh mục" />
            <asp:BoundField DataField="DateCreate" HeaderText="Ngày bắt đầu" />
            <asp:CommandField DeleteText="Xóa " HeaderText="Thao tác" SelectText="Xem chi tiết" EditText="Phân công lại" ShowEditButton="True" />
        </Columns>
      
    </asp:GridView>
</asp:Content>
