<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Admin_Dulieu_Information.aspx.cs" Inherits="ChoViet_QuanTri.Admin_Dulieu_Information" %>

<%@ Register TagPrefix="cc1" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <ul class="breadcrumb">
		<li><a href="index.aspx">Quản trị hệ thống</a><span class="divider"></span></li>
		<li class="active">Quản lý thông tin chợ việt</li>
    </ul>
    <hr />
   <%-- <div class="jumbotron">
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

    <h2>Quản trị thông tin chợ việt</h2>
    <div class="pull-right">
         <h4>Tổng số : <asp:Label ID="lbltongketqua" style ="color:red" runat="server" Text=""></asp:Label> kết quả</h4>
    </div>
    <asp:GridView ID="grDSthongtin" CssClass="table table-hover" runat="server" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="grDSthongtin_PageIndexChanging" PageSize="20" DataKeyNames="matin" OnRowEditing="grDSthongtin_RowEditing">
        <Columns>
            <asp:BoundField DataField="matin" HeaderText="Mã thông tin" />
            <asp:BoundField DataField="tieude" HeaderText="Tiêu đề" />
            <asp:BoundField DataField="nguoisoan" HeaderText="Người biên soạn" />
            <asp:CommandField DeleteText="Xóa" EditText="Sửa" HeaderText="Thao tác" InsertText="Thêm" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Columns>
    </asp:GridView>

    

</asp:Content>
