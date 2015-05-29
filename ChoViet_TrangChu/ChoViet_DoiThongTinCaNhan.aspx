<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Member.Master" AutoEventWireup="true" CodeBehind="ChoViet_DoiThongTinCaNhan.aspx.cs" Inherits="ChoViet_TrangChu.ChoViet_DoiThongTinCaNhan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h5>Cập nhật thông tin cá nhân bao gồm thông tin cá nhân và số điện thoại của bạn </h5>
    <div class="form-horizontal">
        <div class="form-group">
            <label class="control-label  col-sm-10">ID tài khoản: </label>
            <div class="col-ms-8">
                <asp:Label ID="lblidtaikhoan" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label  col-sm-10">E-mail chợ việt: </label>
            <div class="col-ms-8">
                <asp:Label ID="lblemailchoviet" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label  col-sm-10">Họ và tên: </label>
            <div class="col-ms-8">
                <asp:TextBox ID="txthovaten" CssClass="control-group" runat="server" placeholder="Nhập lại mật khẩu mới"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label  col-sm-10">Số điện thoại: </label>
            <div class="col-ms-8">
                <asp:TextBox ID="txtsodienthoai" CssClass="control-group" runat="server" placeholder="Nhập lại mật khẩu mới"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label  col-sm-10"></label>
            <div class="col-ms-8">
                <asp:Button ID="btnluulai" CssClass="btn col-sm-10 btn-success" runat="server" Text="Lưu lại" />
                <asp:Button ID="btnhuybo" CssClass="btn btn-group btn-success" runat="server" Text="Hủy bỏ" />
            </div>
        </div>



    </div>



</asp:Content>
