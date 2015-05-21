<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ThongTin.Master" AutoEventWireup="true" CodeBehind="Choviet_DangKy.aspx.cs" Inherits="ChoViet_TrangChu.Choviet_DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="form-horizontal">
    <h4> Thông tin tài khoản </h4>
    <hr />
    <div class="form-group">
        <label class="control-label col-sm-4">Email * </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtemail" CssClass="form-control" runat="server" placeholder="Địa chỉ email của bạn"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Mật khẩu * </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtmatkhau" CssClass="form-control" runat="server" placeholder="Mật khẩu đăng nhập"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Nhập lại mật khẩu * </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtnhaplaimk" CssClass="form-control" runat="server" placeholder="Nhập lại mật khẩu"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Ngày sinh * </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtngaysinh" CssClass="form-control" runat="server" placeholder="Ngày tháng năm sinh"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Giới tính: </label>
        <div class="col-ms-8">
            <asp:DropDownList ID="Drgioitinh" CssClass="form-control" runat="server"></asp:DropDownList>
        </div>
    </div>
    <h4> Thông tin khách hàng </h4>
    <hr />
    <div class="form-group">
        <label class="control-label col-sm-4">Họ tên * </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txthoten" CssClass="form-control" runat="server" placeholder="Họ và tên"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Địa chỉ * </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtdiachi" CssClass="form-control" runat="server" placeholder="Địa chỉ liên lạc"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Số điện thoại * </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtsodienthoai" CssClass="form-control" runat="server" placeholder="Số điện thoại"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">       
        <asp:Button ID="btndangky" CssClass="btn btn-success" runat="server" Text="Đăng ký" />
    </div>
   
</div>
    

</asp:Content>
