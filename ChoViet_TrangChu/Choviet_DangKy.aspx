<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ThongTin.Master" AutoEventWireup="true" CodeBehind="Choviet_DangKy.aspx.cs" Inherits="ChoViet_TrangChu.Choviet_DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
    <div class="row">
        <div class="span3"></div>
        <div class="span6">
        <div class="form-horizontal">
        <h3> Đăng ký thành viên </h3>
            <h5>Đăng ký thành viên phải nhập đầy đủ phần thông tin có gắn dấu (*) </h5>
    <h4> Thông tin tài khoản </h4>
    <hr />
    <div class="form-group">
        <label class="control-label  col-sm-10">Email * </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtemail" CssClass="control-group" runat="server" placeholder="Địa chỉ email của bạn"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtemail" runat="server" ErrorMessage="(!)"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Mật khẩu * </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtmatkhau" CssClass="control-group" runat="server" placeholder="Mật khẩu đăng nhập"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtmatkhau" runat="server" ErrorMessage="(!)"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Nhập lại mật khẩu * </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtnhaplaimk" CssClass="control-group" runat="server" placeholder="Nhập lại mật khẩu"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtnhaplaimk" runat="server" ErrorMessage="(!)"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Ngày sinh * </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtngaysinh" CssClass="control-group" runat="server" placeholder="Ngày tháng năm sinh"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtngaysinh" runat="server" ErrorMessage="(!)"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Giới tính: </label>
        <div class="col-ms-8">
            <asp:DropDownList ID="Drgioitinh" CssClass="control-group" runat="server"></asp:DropDownList>
        </div>
    </div>
    <h4> Thông tin khách hàng </h4>
    <hr />
    <div class="form-group">
        <label class="control-label col-sm-4">Họ tên * </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txthoten" CssClass="control-group" runat="server" placeholder="Họ và tên"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txthoten" runat="server" ErrorMessage="(!)"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Địa chỉ * </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtdiachi" CssClass="control-group" runat="server" placeholder="Địa chỉ liên lạc"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtdiachi" runat="server" ErrorMessage="(!)"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Số điện thoại * </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtsodienthoai" CssClass="control-group" runat="server" placeholder="Số điện thoại"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtsodienthoai" runat="server" ErrorMessage="(!)"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4"> </label>      
        <asp:Button ID="btndangky" CssClass="btn btn-success" runat="server" Text="Đăng ký" OnClick="btndangky_Click" />
    </div>
    <h5>Bấm vào đăng ký nghĩa là bạn đã đọc và đồng ý với Điều khoản sử dụng của chợ việt </h5>
</div>
            </div>
       </div>
</div>
    

</asp:Content>
