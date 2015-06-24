<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_ChiTiet_taikhoan.aspx.cs" Inherits="ChoViet_QuanTri.Admin_ChiTiet_taikhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <asp:Repeater ID="rechitiettaikhoan" runat="server">
        <ItemTemplate>
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Mã thành viên:</label>
                    <div class="col-ms-10">
                        <asp:TextBox ID="Label14" CssClass="control-group"  TextMode="MultiLine" Columns="50" Rows="1" runat="server" Text='<%# Eval("Id") %>'></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Họ và tên:</label>
                    <div class="col-ms-10">
                        <asp:TextBox ID="Label15" CssClass="control-group"  TextMode="MultiLine" Columns="50" Rows="1" runat="server" Text='<%# Eval("name") %>'></asp:TextBox>
                    </div>
                </div>
                
                <hr />
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Email:</label>
                    <div class="col-ms-10">
                        <asp:TextBox ID="Label17" CssClass="control-group" TextMode="MultiLine" Columns="50" Rows="1" runat="server" Text='<%# Eval("email") %>'></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Địa chỉ:</label>
                    <div class="col-ms-10">
                        <asp:TextBox ID="Label18" CssClass="control-group"  TextMode="MultiLine" Columns="50" Rows="1" runat="server" Text='<%# Eval("position") %>'></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Số điện thoại:</label>
                    <div class="col-ms-10">
                        <asp:TextBox ID="Label19" CssClass="control-group"  TextMode="MultiLine" Columns="50" Rows="1" runat="server" Text='<%# Eval("phonenumber") %>'></asp:TextBox>
                    </div>
                </div>
                <hr />
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Ngày tham gia:</label>
                    <div class="col-ms-10">
                        <asp:TextBox ID="Label20" CssClass="control-group"  TextMode="MultiLine" Columns="50" Rows="1" runat="server" Text='<%# Eval("datecreate") %>'></asp:TextBox>
                    </div>
                </div>
            </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>


</asp:Content>
