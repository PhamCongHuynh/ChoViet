<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_CapMoiTaiKhoanNhanVien.aspx.cs" Inherits="ChoViet_QuanTri.CapMoiTaiKhoanNhanVien" %>

<%@ Register TagPrefix="cc1" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h2>Cấp mới tài khoản nhân viên </h2>
    <div class="form">
        <h4>Thông tin tài khoàn </h4>
        <hr />
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Họ Và tên nhân Viên :"></asp:Label>
            <asp:TextBox ID="txthoten" CssClass="form-control" placeholder="Nhập họ và tên nhân viên" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Email :"></asp:Label>
            <asp:TextBox ID="txtemail" CssClass="form-control" placeholder="Nhập địa chỉ email" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Số điện thoại :"></asp:Label>
            <asp:TextBox ID="txtsodienthoai" CssClass="form-control" placeholder="Nhập số điện thoại" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Ngày sinh :"></asp:Label>
            <asp:TextBox ID="txtngaysinh" CssClass="form-control" placeholder="Ngày/tháng/năm sinh" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label5" runat="server" Text="Địa chỉ liên hệ :"></asp:Label>
            <asp:TextBox ID="txtdiachi" CssClass="form-control" placeholder="Địa chỉ liên hệ" runat="server"></asp:TextBox>
        </div>
        <h4>Phân công công tác </h4>
        <hr />
        <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="Chức vụ :"></asp:Label>
            <asp:DropDownList ID="drchucvu" CssClass="form-control" runat="server"></asp:DropDownList>
        </div>
        <div class="form-group">
            <asp:Label ID="Label7" runat="server" Text="Danh mục quản lý :"></asp:Label>
            <asp:DropDownList ID="drdanhmucquanly" CssClass="form-control" runat="server"></asp:DropDownList>
        </div>

        <asp:Button ID="btlxacnhan" CssClass="btn btn-default" runat="server" Text="Cấp tài khoản" OnClick="btlxacnhan_Click" />
        <cc1:ModalPopupExtender runat="server" DynamicServicePath="" BehaviorID="btlxacnhan_ModalPopupExtender" TargetControlID="btlxacnhan" ID="btlxacnhan_ModalPopupExtender" PopupControlID="Panelxemlai" BackgroundCssClass="modalBackground"></cc1:ModalPopupExtender>
        <asp:Button ID="btnhuy" CssClass="btn btn-default" runat="server" Text="Hủy bỏ" />

  <%--   phần xừ lý modal--%>
        <asp:Panel ID="Panelxemlai" style="width:80%;height:auto; display:none; background:white;" runat="server">

        
         <!-- Modal content-->
        
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Đồng ý cấp mới tài khoản nhân viên</h4>
          </div>
          <div class="modal-body">
              <div class="form-horizontal" role="form">
                  <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Họ và tên:</label>
                    <div class="col-sm-10">
                    <asp:Label ID="lbtxthoten" CssClass="control-label" runat="server" Text=""></asp:Label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Email:</label>
                    <div class="col-sm-10">
                    <asp:Label ID="lbtxtemail" CssClass="control-label" runat="server" Text=""></asp:Label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Số điện thoại:</label>
                    <div class="col-sm-10">
                    <asp:Label ID="lblsodienthoai" CssClass="control-label" runat="server" Text=""></asp:Label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Ngày sinh:</label>
                    <div class="col-sm-10">
                    <asp:Label ID="lbltxtngaysinh" CssClass="control-label" runat="server" Text=""></asp:Label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Địa chỉ:</label>
                    <div class="col-sm-10">
                    <asp:Label ID="lbltxtdiachi" CssClass="control-label" runat="server" Text=""></asp:Label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Chức vụ:</label>
                    <div class="col-sm-10">
                    <asp:Label ID="lbltxtchucvu" CssClass="control-label" runat="server" Text=""></asp:Label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Danh mục quản lý:</label>
                    <div class="col-sm-10">
                    <asp:Label ID="lbltxtdanhmuc" CssClass="control-label" runat="server" Text=""></asp:Label>
                    </div>
                  </div>
            </div>
          </div>
          <div class="modal-footer">
            <div class="form-group"> 
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" class="btn btn-default">Xác nhận </button>
                    </div>
                  </div>
          </div>
       

     </asp:Panel>
          
  </div>
      
   <%--   phần xừ lý modal--%>


</asp:Content>
