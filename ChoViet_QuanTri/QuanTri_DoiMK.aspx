<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="QuanTri_DoiMK.aspx.cs" Inherits="ChoViet_QuanTri.QuanTri_DoiMK" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h5>Tài khoản nên chỉ có 1 chủ sở hữu để tránh các sự cố ngoài ý muốn .</h5>
    <div class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-sm-2">Mật khẩu hiện tại: </label>
            <div class="col-ms-10">
                <asp:TextBox ID="txtmatkhauhientai" CssClass="control-group" TextMode="Password" runat="server" placeholder="Mật khẩu hiện tại"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtmatkhauhientai" ErrorMessage="Nhập mật khẩu cũ !"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Mật khẩu mới: </label>
            <div class="col-ms-10">
                <asp:TextBox ID="txtmatkhaumoi" CssClass="control-group" TextMode="Password" runat="server" placeholder="Mật khẩu mới (phải >= 6 kí tự)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtmatkhaumoi" runat="server" ErrorMessage="(!)"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Nhập lại mật khẩu mới: </label>
            <div class="col-ms-10">
                <asp:TextBox ID="txtnhaplaimatkhau" CssClass="control-group" TextMode="Password" runat="server" placeholder="Nhập lại mật khẩu mới"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtnhaplaimatkhau" runat="server" ErrorMessage="(!)"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2"></label>
            <div class="col-ms-10">
                <asp:Button ID="btnthaydoi" CssClass="btn  btn-success" Style="width:140px" runat="server" Text="Thay đổi mật khẩu" OnClick="btnthaydoi_Click" />
            </div>
        </div>       
        <asp:Label ID="lblthongbao" CssClass="control-label" runat="server" Style="color:red; font-family:Tahoma;" Text=""></asp:Label>

    </div>

</asp:Content>
