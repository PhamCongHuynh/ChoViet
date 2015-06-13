<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Member.Master" AutoEventWireup="true" CodeBehind="ChoVietMember_chitiettin.aspx.cs" Inherits="ChoViet_TrangChu.ChoVietMember_chitiettin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Repeater ID="rpdulieu" runat="server">
        <ItemTemplate>
<div class="form-horizontal">
     <h3> Chi tiết tin  </h3>            
    <h4> Thông tin liên hệ </h4>
    <hr />
    <div class="form-group">
        <label class="control-label  col-sm-10">Mã tin: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtmatin" CssClass="control-group" runat="server" Enabled="false" Text='<%# Eval("ID") %>' style="min-width:40%;"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label  col-sm-10">Tên: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txthoten" CssClass="control-group" runat="server" Enabled="false" Text='<%# Eval("hoten") %>' style="min-width:40%;"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">E-mail: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtemail" CssClass="control-group" runat="server" Enabled="false" Text='<%# Eval("email") %>' style="min-width:40%;" ></asp:TextBox>
            
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Số điện thoại: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtsodienthoai" CssClass="control-group" runat="server" Enabled="false" Text='<%# Eval("phone") %>' style="min-width:40%;" ></asp:TextBox>
           
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Địa chỉ: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtdiachi" CssClass="control-group" runat="server" Enabled="false" Text='<%# Eval("diachi") %>' style="min-width:40%;" ></asp:TextBox>
            
        </div>
    </div>
    <h4>Nội dung tin </h4>
    <hr />
    <div class="form-group">
        <label class="control-label col-sm-4">Chuyên mục: </label>
        <div class="col-ms-8">
             <asp:TextBox ID="txtchuyenmuc" CssClass="control-group" runat="server" Enabled="false" Text='<%# Eval("danhmuc") %>'  style="min-width:40%;"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Vùng: </label>
        <div class="col-ms-8">
          <asp:TextBox ID="txtvung" CssClass="control-group" runat="server" Enabled="false" Text='<%# Eval("region") %>'  style="min-width:40%;"></asp:TextBox>
    </div>
    </div>
    
    <%--<div class="form-group">
        <label class="control-label col-sm-4">Bạn đăng tin: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtbandangtin" CssClass="control-group" runat="server" Enabled="false" Text='<%# Eval("loaitin") %>'  style="min-width:40%;"></asp:TextBox>
        </div>
    </div>--%>
    <div class="form-group">
        <label class="control-label col-sm-4">Tựa đề: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txttuade"  CssClass="control-group" Enabled="false" style="min-width:60%;" Text='<%# Eval("title") %>' TextMode="multiline" Columns="50" Rows="3" runat="server" ></asp:TextBox>
            
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Nội dung tin: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtnoidung" TextMode="multiline" Enabled="false" Text='<%# Eval("content") %>' style="min-width:60%;" Columns="50" Rows="5" CssClass="control-group" runat="server" ></asp:TextBox>
           
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Giá: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtgia" CssClass="control-group" Enabled="false" Text='<%# Eval("price") %>' style="min-width:40%;" runat="server" ></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Cách Thanh toán: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtcachthanhtoan" CssClass="control-group" Enabled="false" Text='<%# Eval("pay") %>' style="min-width:40%;" runat="server" ></asp:TextBox>
             
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Vận chuyển, giao nhận : </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtvanchuyen" CssClass="control-group" Enabled="false" Text='<%# Eval("ship") %>' style="min-width:60%;" TextMode="multiline" Columns="50" Rows="3" runat="server" ></asp:TextBox>
             
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4"> </label>      
        <asp:Button ID="btnxoa" CssClass="btn btn-success" runat="server" Text="Xóa" OnClick="btnxoa_Click"  />
    </div>
</div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
