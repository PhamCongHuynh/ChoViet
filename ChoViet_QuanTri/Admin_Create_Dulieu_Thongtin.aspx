<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Admin_Create_Dulieu_Thongtin.aspx.cs" Inherits="ChoViet_QuanTri.Admin_Create_Dulieu_Thongtin" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="form">
        <h4>Thông tin </h4>
        <hr />
        <div class="form-group">
            <label class="control-label">Tiêu đề tin: </label>
            <div class="col-ms-8">
                <asp:TextBox ID="txttitle" CssClass="control-group" runat="server" TextMode="MultiLine" Columns="50" Rows="5" placeholder="Tiêu đề tin" Style="min-width: 40%;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txttitle" runat="server" ErrorMessage="(!)"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label">Nội dung: </label>
            <div class="col-ms-8">
                <FTB:FreeTextBox ID="Ftnoidung" runat="server"></FTB:FreeTextBox>                
            </div>
        </div>
        <div class="form-group">
            <label class="control-label">Ngày thực hiện: </label>
            <div class="col-ms-8">
                <asp:TextBox ID="TextBox1" CssClass="control-group" Visible="true" runat="server"></asp:TextBox>
                <cc1:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" BehaviorID="TextBox1_CalendarExtender" TargetControlID="TextBox1">
                </cc1:CalendarExtender>
            </div>
    </div>
        <div class="form-group">
        <label class="control-label"></label>
        <div class="col-ms-8">
            <asp:Button ID="btnluu" CssClass="btn btn-success" runat="server" Text="Lưu lại" OnClick="btnluu_Click" />
            <asp:Button ID="btnhuy" CssClass="btn btn-success" runat="server" Text="Hủy bỏ" />
        </div>
    </div>
   </div>
</asp:Content>
