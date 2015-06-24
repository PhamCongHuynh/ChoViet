<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="TinQuangCao_ViewChiTiet.aspx.cs" Inherits="ChoViet_QuanTri.TinQuangCao_ViewChiTiet" %>

<%@ Register TagPrefix="cc1" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
               <%-- <div class="form-group">
                    <asp:Button ID="btnduyet" CssClass="btn btn-default col-ms-3" runat="server" Text="Duyệt tin đăng" ToolTip="Duyệt đăng ngay" OnClick="btnduyet_Click" />
                    <asp:Button ID="btnchoxemxet" CssClass="btn btn-default col-ms-3" runat="server" Text="Chờ duyệt" ToolTip="Lưu xem xet chờ duyệt"/>
                    <cc1:ModalPopupExtender runat="server" DynamicServicePath="" BehaviorID="btnchoxemxet_ModalPopupExtender" PopupControlID="Panelchoduyet" TargetControlID="btnchoxemxet" ID="btnchoxemxet_ModalPopupExtender" BackgroundCssClass="modalBackground" ></cc1:ModalPopupExtender>
                    <asp:Button ID="btnvipham" CssClass="btn btn-default col-ms-3" runat="server" Text="Vi phạm quy chế" ToolTip="Đánh dấu vi phạm quy chế" />
                    <cc1:ModalPopupExtender runat="server" DynamicServicePath="" BehaviorID="btnvipham_ModalPopupExtender" TargetControlID="btnvipham" ID="btnvipham_ModalPopupExtender" PopupControlID="PanelVipham" BackgroundCssClass="modalBackground"></cc1:ModalPopupExtender>
                    <asp:Button ID="btnxoa" CssClass="btn btn-default col-ms-3" runat="server" Text="Xóa tin này" ToolTip="Xóa tin " OnClick="btnxoa_Click" />
               </div>--%>
 </div>
     </div>
        </ItemTemplate>    
    </asp:Repeater>
    <div class="form-horizontal">
              <div class="form-group">
                    <asp:Button ID="btnduyet" CssClass="btn btn-default col-ms-3" runat="server" Text="Duyệt tin đăng" ToolTip="Duyệt đăng ngay" OnClick="btnduyet_Click" />
                    <asp:Button ID="btnchoxemxet" CssClass="btn btn-default col-ms-3" runat="server" Text="Chờ duyệt" ToolTip="Lưu xem xet chờ duyệt"/>
                    <cc1:ModalPopupExtender runat="server" DynamicServicePath="" BehaviorID="btnchoxemxet_ModalPopupExtender" PopupControlID="Panelchoduyet" TargetControlID="btnchoxemxet" ID="btnchoxemxet_ModalPopupExtender" BackgroundCssClass="modalBackground" ></cc1:ModalPopupExtender>
                    <asp:Button ID="btntbvipham" CssClass="btn btn-default col-ms-3" runat="server" Text="Vi phạm quy chế" ToolTip="Đánh dấu vi phạm quy chế" />
                    <cc1:ModalPopupExtender runat="server" DynamicServicePath="" BehaviorID="btnvipham_ModalPopupExtender" TargetControlID="btntbvipham" ID="btnvipham_ModalPopupExtender" PopupControlID="PanelVipham" BackgroundCssClass="modalBackground"></cc1:ModalPopupExtender>
                    <asp:Button ID="btnxoa" CssClass="btn btn-default col-ms-3" runat="server" Text="Xóa tin này" ToolTip="Xóa tin " OnClick="btnxoa_Click" />
               </div>
    </div>
   <%-- //PopupControlID="Panelchoduyet" TargetControlID="btnchoxemxet"--%>
    <asp:Panel ID="Panelchoduyet" style="width:60%;height:auto; display:none; background:white;" runat="server">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Tin quảng cáo chờ xem xét</h4>
          </div>
          <div class="modal-body">
              <div class="form-horizontal" role="form">
                  <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Ghi chú lí do :</label>
                    <div class="col-sm-10">
                     <asp:TextBox ID="txtghichuchoduyet" TextMode="MultiLine" Columns="70" Rows="5" runat="server"></asp:TextBox>
                    </div>
                  </div>                 
            </div>
          </div>
          <div class="modal-footer">
            <div class="form-group"> 
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button ID="btnxacnhanchoduyet" runat="server" Text="Lưu" OnClick="btnxacnhanchoduyet_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Hủy" />
                    </div>
                  </div>
          </div>
       
    </asp:Panel>
    <asp:Panel ID="PanelVipham" style="width:60%;height:auto; display:none; background:white;" runat="server">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Tin quảng cáo vi phạm</h4>
          </div>
          <div class="modal-body">
              <div class="form-horizontal" role="form">
                  <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Ghi chú lí do:</label>
                    <div class="col-sm-10">
                     <asp:TextBox ID="txtghichuvipham" TextMode="MultiLine" Columns="70" Rows="5" runat="server"></asp:TextBox>
                    </div>
                  </div>                 
            </div>
          </div>
          <div class="modal-footer">
            <div class="form-group"> 
                    <div class="col-sm-offset-2 col-sm-10">
                        
                        <asp:Button ID="btnvipham" runat="server" Text="Lưu" OnClick="btnvipham_Click" />
                        <asp:Button ID="Button1" runat="server" Text="Hủy" />
                    </div>
                  </div>
          </div>
    </asp:Panel>
   


</asp:Content>
