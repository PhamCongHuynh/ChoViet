<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ThongTin.Master" AutoEventWireup="true" CodeBehind="Choviet_Dangtin.aspx.cs" Inherits="ChoViet_TrangChu.Choviet_Dangtin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
    <div class="row">
        <div class="span2"></div>
    <div class="span7">
    <div class="form-horizontal">
        <h3> Đăng tin mới </h3>
            
    <h4> Thông tin liên hệ </h4>
    <hr />
    <div class="form-group">
        <label class="control-label  col-sm-10">Tên: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtemail" CssClass="control-group" runat="server" placeholder="Điền đầy đủ họ tên"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">E-mail: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtmatkhau" CssClass="control-group" runat="server" placeholder="Chúng tôi sẽ liên hệ với bạn qua Email"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Số điện thoại: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtnhaplaimk" CssClass="control-group" runat="server" placeholder="Điền đầy đủ số điện thoại"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Địa chỉ: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtngaysinh" CssClass="control-group" runat="server" placeholder="Địa chỉ của bạn"></asp:TextBox>
        </div>
    </div>
    <h4>Nội dung tin </h4>
    <hr />
    <div class="form-group">
        <label class="control-label col-sm-4">Chuyên mục: </label>
        <div class="col-ms-8">
            <asp:DropDownList ID="Drgioitinh" CssClass="control-group" runat="server"></asp:DropDownList>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Vùng: </label>
        <div class="col-ms-8">
            <asp:DropDownList ID="Drvung" CssClass="control-group" runat="server"></asp:DropDownList>
    </div>
    </div>
    
    <div class="form-group">
        <label class="control-label col-sm-4">Bạn đăng tin: </label>
        <div class="col-ms-8">
            <asp:RadioButtonList ID="rdloaitin" CssClass="control-list" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="1">Cần Mua</asp:ListItem>
                <asp:ListItem Value="2">Cần Bán</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Tựa đề: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtdiachi" CssClass="control-group" runat="server" placeholder="Dùng tiếng việt có dấu"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Nội dung tin: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtnoidung" CssClass="control-group" runat="server" placeholder="Dùng tiếng việt có dấu"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Giá: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="TextBox1" CssClass="control-group" runat="server" placeholder="Giá trị của sản phẩm"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Hình ảnh: </label>
        <div class="col-ms-8">
            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
        </div>
    </div>  
     <div class="form-group">
        <label class="control-label col-sm-4"> </label>
        <div class="col-ms-8">
            <asp:FileUpload ID="FileUpload2" runat="server" /><br />
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4"> </label>
        <div class="col-ms-8">
            <asp:FileUpload ID="FileUpload3" runat="server" /><br />
        </div>
    </div>
     <div class="form-group">
        <label class="control-label col-sm-4"> </label>
        <div class="col-ms-8">
            <asp:FileUpload ID="FileUpload4" runat="server" /><br />
        </div>
    </div>
     <div class="form-group">
        <label class="control-label col-sm-4"> </label>
        <div class="col-ms-8">
            <asp:FileUpload ID="FileUpload5" runat="server" /><br />
        </div>
    </div>
     <div class="form-group">
        <label class="control-label col-sm-4"> </label>
        <div class="col-ms-8">
            <asp:FileUpload ID="FileUpload6" runat="server" /><br />
        </div>
    </div>


    <div class="form-group">
        <label class="control-label col-sm-4">Cách Thanh toán: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="TextBox2" CssClass="control-group" runat="server" placeholder="Cách thanh toán"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Vận chuyển, giao nhận : </label>
        <div class="col-ms-8">
            <asp:TextBox ID="TextBox3" CssClass="control-group" runat="server" placeholder="Quy trình vận chuyển, giao nhận"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4"> </label>      
        <asp:Button ID="btndangky" CssClass="btn btn-success" runat="server" Text="Bước tiếp theo" />
    </div>
</div>
            </div>
       </div>
</div>


</asp:Content>
