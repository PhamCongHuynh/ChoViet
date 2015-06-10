<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="TinQuangCao_ViewChiTiet.aspx.cs" Inherits="ChoViet_QuanTri.TinQuangCao_ViewChiTiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="rechitiettin" runat="server">
        <ItemTemplate>
     <div class="form-horizontal">    
     <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">ID:</label>
         <div class="col-ms-10">
         <asp:TextBox ID="Label14" CssClass="control-group" Enabled="False" TextMode="MultiLine" Columns="50" Rows="1" runat="server" Text='<%# Eval("matin") %>'></asp:TextBox>
         </div>              
     </div>
       <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Ngày nhận:</label>
         <div class="col-ms-10">
         <asp:TextBox ID="Label15" CssClass="control-group" Enabled="False" TextMode="MultiLine" Columns="50" Rows="1" runat="server" Text='<%# Eval("thoigiannhan") %>'></asp:TextBox>
         </div>              
     </div>
       <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Khu vực:</label>
         <div class="col-ms-10">
         <asp:TextBox ID="Label16" CssClass="control-group" Enabled="False" TextMode="MultiLine" Columns="50" Rows="1" runat="server" Text='<%# Eval("khuvuc") %>'></asp:TextBox>
         </div>              
     </div>

     <hr />
     <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Tên người đăng:</label>
         <div class="col-ms-10">
         <asp:TextBox ID="Label17" CssClass="control-group" Enabled="False" TextMode="MultiLine" Columns="50" Rows="1" runat="server" Text='<%# Eval("nguoidang") %>'></asp:TextBox>
         </div>              
     </div>
       <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Email:</label>
         <div class="col-ms-10">
         <asp:TextBox ID="Label18" CssClass="control-group" Enabled="False" TextMode="MultiLine" Columns="50" Rows="1" runat="server" Text='<%# Eval("email") %>'></asp:TextBox>
         </div>              
     </div>
       <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Số điện thoại:</label>
         <div class="col-ms-10">
         <asp:TextBox ID="Label19" CssClass="control-group" Enabled="False" TextMode="MultiLine" Columns="50" Rows="1" runat="server" Text='<%# Eval("dienthoai") %>'></asp:TextBox>
         </div>              
     </div>
     <hr />
       <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Chuyên mục:</label>
         <div class="col-ms-10">
         <asp:TextBox ID="Label20" CssClass="control-group" Enabled="False" TextMode="MultiLine" Columns="50" Rows="1" runat="server" Text='<%# Eval("danhmuc") %>'></asp:TextBox>
         </div>              
     </div>
       <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Tỉnh, thành, quận:</label>
         <div class="col-ms-10">
         <asp:TextBox ID="Label21" CssClass="control-group" Enabled="False" TextMode="MultiLine" Columns="50" Rows="1" runat="server" Text='<%# Eval("khuvuc") %>'></asp:TextBox>
         </div> 
      </div>                  
       <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Tin đăng quảng cáo:</label>
         <div class="col-ms-10">
         <asp:TextBox ID="Label23" CssClass="control-group" Enabled="False" TextMode="MultiLine" Columns="50" Rows="1" runat="server" Text='<%# Eval("loaitin") %>'></asp:TextBox>
         </div>              
     </div>
       <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Tựa đề:</label>
         <div class="col-ms-10">
         <asp:TextBox ID="Label24" CssClass="control-group" Enabled="False" TextMode="MultiLine" Columns="50" Rows="3" runat="server" Text='<%# Eval("tieude") %>'></asp:TextBox>
         </div>              
     </div>
     <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Nội dung:</label>
         <div class="col-ms-10">
         <asp:TextBox ID="Label25" CssClass="control-group" Enabled="False" TextMode="MultiLine" Columns="100" Rows="7" runat="server" Text='<%# Eval("noidung") %>'></asp:TextBox>
         </div>              
     </div>
     <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Giá:</label>
         <div class="col-ms-10">
         <asp:TextBox ID="Label26" CssClass="control-group" Enabled="False" runat="server" Text='<%# Eval("gia") %>'></asp:TextBox>
         </div>              
     </div>
      <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Hình ảnh:</label>
         <div class="col-ms-10">
         <asp:TextBox ID="Label27" CssClass="control-group" Enabled="False" runat="server" Text=""></asp:TextBox>
         </div>              
     </div>
      <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Cách thanh toán:</label>
         <div class="col-ms-10">
         <asp:TextBox ID="Label28" CssClass="control-group" Enabled="False" TextMode="MultiLine" Columns="50" Rows="3" runat="server" Text='<%# Eval("cachthanhtoan") %>'></asp:TextBox>
         </div>              
     </div>
     <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Quy trình vận chuyển:</label>
         <div class="col-ms-10">
         <asp:TextBox ID="Label29" CssClass="control-group" Enabled="False" TextMode="MultiLine" Columns="50" Rows="3" runat="server" Text='<%# Eval("quytrinhvanchuyen") %>'></asp:TextBox>
         </div>              
     </div>
     <div class="form-group"> 
         <asp:Button ID="Button5" CssClass="btn btn-default col-ms-3" runat="server" Text="Duyệt tin đăng" />
          <asp:Button ID="Button6" CssClass="btn btn-default col-ms-3" runat="server" Text="Chờ duyệt" />
          <asp:Button ID="Button7" CssClass="btn btn-default col-ms-3" runat="server" Text="Vi phạm quy chế" />
          <asp:Button ID="Button8" CssClass="btn btn-default col-ms-3" runat="server" Text="Xóa tin này" />
     </div>
 </div>
     </div>
        </ItemTemplate>
     
    </asp:Repeater>
<%-- <div class="form-horizontal" role="form">--%>
     <%--<div class="form-group">
         <label class="control-label col-sm-1" for="email">Ngày nhận:</label>
         <asp:Label ID="Label14" CssClass="control-label col-ms-3" runat="server" Text="1/2/2015"></asp:Label>
         <label class="control-label col-sm-1" for="email">Khu vực:</label>
         <asp:Label ID="Label15" CssClass="control-label col-ms-3" runat="server" Text="Hà Nội"></asp:Label>
         <label class="control-label col-sm-1" for="email">Id:</label>
         <asp:Label ID="Label16" CssClass="control-label col-ms-3" runat="server" Text="1234567"></asp:Label>
     </div>
     <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">ID:</label>
         <div class="col-ms-10">
         <asp:Label ID="lblid" CssClass="control-label" runat="server" Text=""></asp:Label>
         </div>              
     </div>
       <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Ngày nhận:</label>
         <div class="col-ms-10">
         <asp:Label ID="lblngaynhan" CssClass="control-label" runat="server" Text=""></asp:Label>
         </div>              
     </div>
       <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Khu vực:</label>
         <div class="col-ms-10">
         <asp:Label ID="lblkhuvuc" CssClass="control-label" runat="server" Text=""></asp:Label>
         </div>              
     </div>

     <hr />
     <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Tên người đăng:</label>
         <div class="col-ms-10">
         <asp:Label ID="Label1" CssClass="control-label" runat="server" Text=""></asp:Label>
         </div>              
     </div>
       <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Email:</label>
         <div class="col-ms-10">
         <asp:Label ID="Label2" CssClass="control-label" runat="server" Text=""></asp:Label>
         </div>              
     </div>
       <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Số điện thoại:</label>
         <div class="col-ms-10">
         <asp:Label ID="Label3" CssClass="control-label" runat="server" Text=""></asp:Label>
         </div>              
     </div>
     <hr />
       <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Chuyên mục:</label>
         <div class="col-ms-10">
         <asp:Label ID="Label4" CssClass="control-label" runat="server" Text=""></asp:Label>
         </div>              
     </div>
       <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Tỉnh, thành, quận:</label>
         <div class="col-ms-10">
         <asp:Label ID="Label5" CssClass="control-label" runat="server" Text=""></asp:Label>
         </div>              
     </div>
       <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Người dùng :</label>
         <div class="col-ms-10">
         <asp:Label ID="Label6" CssClass="control-label" runat="server" Text=""></asp:Label>
         </div>              
     </div>
       <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Tin đăng quảng cáo:</label>
         <div class="col-ms-10">
         <asp:Label ID="Label7" CssClass="control-label" runat="server" Text=""></asp:Label>
         </div>              
     </div>
       <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Tựa đề:</label>
         <div class="col-ms-10">
         <asp:Label ID="Label8" CssClass="control-label" runat="server" Text=""></asp:Label>
         </div>              
     </div>
     <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Nội dung:</label>
         <div class="col-ms-10">
         <asp:Label ID="Label9" CssClass="control-label" runat="server" Text=""></asp:Label>
         </div>              
     </div>
     <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Giá:</label>
         <div class="col-ms-10">
         <asp:Label ID="Label10" CssClass="control-label" runat="server" Text=""></asp:Label>
         </div>              
     </div>
      <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Hình ảnh:</label>
         <div class="col-ms-10">
         <asp:Label ID="Label11" CssClass="control-label" runat="server" Text=""></asp:Label>
         </div>              
     </div>
      <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Cách thanh toán:</label>
         <div class="col-ms-10">
         <asp:Label ID="Label12" CssClass="control-label" runat="server" Text=""></asp:Label>
         </div>              
     </div>
     <div class="form-group"> 
         <label class="control-label col-sm-2" for="email">Quy trình vận chuyển:</label>
         <div class="col-ms-10">
         <asp:Label ID="Label13" CssClass="control-label" runat="server" Text=""></asp:Label>
         </div>              
     </div>
     <div class="form-group"> 
         <asp:Button ID="Button1" CssClass="btn btn-default col-ms-3" runat="server" Text="Duyệt tin đăng" />
          <asp:Button ID="Button2" CssClass="btn btn-default col-ms-3" runat="server" Text="Chờ duyệt" />
          <asp:Button ID="Button3" CssClass="btn btn-default col-ms-3" runat="server" Text="Vi phạm quy chế" />
          <asp:Button ID="Button4" CssClass="btn btn-default col-ms-3" runat="server" Text="Xóa tin này" />
     </div>
 </div>--%>


</asp:Content>
