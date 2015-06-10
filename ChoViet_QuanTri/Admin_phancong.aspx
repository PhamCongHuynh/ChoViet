<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_phancong.aspx.cs" Inherits="ChoViet_QuanTri.Admin_phancong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Phân công công việc </h2>
    <div class="form">
        <h4>Thông tin tài khoàn </h4>
        <hr />
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Họ Và tên nhân Viên :"></asp:Label>
            <asp:TextBox ID="txthoten" CssClass="form-control" Enabled="false"  runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="ID :"></asp:Label>
            <asp:TextBox ID="txtid" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
        </div>
        
        <h4>Phân công công tác </h4>
        <hr />
        <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="Chức vụ :"></asp:Label>
            <asp:DropDownList ID="drchucvu" CssClass="form-control" runat="server">
                <asp:ListItem Value="1">Admin</asp:ListItem>
                <asp:ListItem Value="2">Quản trị viên</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form-group">
            <asp:Label ID="Label7" runat="server" Text="Danh mục quản lý :"></asp:Label>
            <asp:DropDownList ID="drdanhmucquanly" CssClass="form-control" runat="server"></asp:DropDownList>
        </div>

        <asp:Button ID="btlxacnhan" CssClass="btn btn-default" runat="server" Text="Phân công" OnClick="btlxacnhan_Click" />
        <%--<cc1:ModalPopupExtender runat="server" DynamicServicePath="" BehaviorID="btlxacnhan_ModalPopupExtender" TargetControlID="btlxacnhan" ID="btlxacnhan_ModalPopupExtender" PopupControlID="Panelxemlai" BackgroundCssClass="modalBackground"></cc1:ModalPopupExtender>--%>
        <asp:Button ID="btnhuy" CssClass="btn btn-default" runat="server" Text="Hủy bỏ" />

          
  </div>


</asp:Content>
