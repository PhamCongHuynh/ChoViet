<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ThongTin.Master" AutoEventWireup="true" CodeBehind="Choviet_Dangtin.aspx.cs" Inherits="ChoViet_TrangChu.Choviet_Dangtin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
    <div class="row">
    <div class="span2"></div>
    <div class="span8">
    <div class="form-horizontal">
        <h3> Đăng tin mới </h3>
            
    <h4> Thông tin liên hệ </h4>
    <hr />
    <div class="form-group">
        <label class="control-label  col-sm-10">Tên: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txthoten" CssClass="control-group" runat="server" placeholder="Điền đầy đủ họ tên" style="min-width:40%;"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">E-mail: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtemail" CssClass="control-group" runat="server" style="min-width:40%;" placeholder="Chúng tôi sẽ liên hệ với bạn qua Email"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Số điện thoại: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtsodienthoai" CssClass="control-group" runat="server" style="min-width:40%;" placeholder="Điền đầy đủ số điện thoại"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Địa chỉ: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtdiachi" CssClass="control-group" runat="server" style="min-width:40%;" placeholder="Địa chỉ của bạn"></asp:TextBox>
        </div>
    </div>
    <h4>Nội dung tin </h4>
    <hr />
    <div class="form-group">
        <label class="control-label col-sm-4">Chuyên mục: </label>
        <div class="col-ms-8">
            <asp:DropDownList ID="Drchuyenmuc" CssClass="control-group" style="min-width:40%;" runat="server"></asp:DropDownList>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Vùng: </label>
        <div class="col-ms-8">
            <asp:DropDownList ID="Drvung" CssClass="control-group" style="min-width:40%;" runat="server"></asp:DropDownList>
    </div>
    </div>
    
    <div class="form-group">
        <label class="control-label col-sm-4">Bạn đăng tin: </label>
        <div class="col-ms-8">
            <asp:RadioButtonList ID="rdloaitin" CssClass="control-list" style="min-width:40%;" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table" TextAlign="Right">
                <asp:ListItem Value="1">Cần Mua</asp:ListItem>
                <asp:ListItem Value="2">Cần Bán</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Tựa đề: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txttuade"  CssClass="control-group" style="min-width:60%;" TextMode="multiline" Columns="50" Rows="3" runat="server" placeholder="Dùng tiếng việt có dấu"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Nội dung tin: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtnoidung" TextMode="multiline" style="min-width:60%;" Columns="50" Rows="5" CssClass="control-group" runat="server" placeholder="Dùng tiếng việt có dấu"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Giá: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtgia" CssClass="control-group" style="min-width:40%;" runat="server" placeholder="Giá trị của sản phẩm"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Hình ảnh: </label>
        <div class="col-ms-8">
            <asp:FileUpload ID="image1" runat="server" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="image1" Display="Dynamic" SetFocusOnError="true"  ErrorMessage="Không đúng định dạng tải lên" ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.jpeg|.JPEG|.gif|.GIF|.png|.PNG|.JPG|.jpg|.bitmap|.BITMAP)$"></asp:RegularExpressionValidator>
       
            <br />
        </div>
    </div>  
     <div class="form-group">
        <label class="control-label col-sm-4"> </label>
        <div class="col-ms-8">
            <asp:FileUpload ID="image2" runat="server" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="image2" Display="Dynamic" SetFocusOnError="true"  ErrorMessage="Không đúng định dạng tải lên" ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.jpeg|.JPEG|.gif|.GIF|.png|.PNG|.JPG|.jpg|.bitmap|.BITMAP)$"></asp:RegularExpressionValidator>
            <br />
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4"> </label>
        <div class="col-ms-8">
            <asp:FileUpload ID="image3" runat="server" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="image3" Display="Dynamic" SetFocusOnError="true"  ErrorMessage="Không đúng định dạng tải lên" ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.jpeg|.JPEG|.gif|.GIF|.png|.PNG|.JPG|.jpg|.bitmap|.BITMAP)$"></asp:RegularExpressionValidator>
            <br />
        </div>
    </div>
     <div class="form-group">
        <label class="control-label col-sm-4"> </label>
        <div class="col-ms-8">
            <asp:FileUpload ID="image4" runat="server" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="image4" Display="Dynamic" SetFocusOnError="true"  ErrorMessage="Không đúng định dạng tải lên" ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.jpeg|.JPEG|.gif|.GIF|.png|.PNG|.JPG|.jpg|.bitmap|.BITMAP)$"></asp:RegularExpressionValidator>
            <br />
        </div>
    </div>
     <div class="form-group">
        <label class="control-label col-sm-4"> </label>
        <div class="col-ms-8">
            <asp:FileUpload ID="image5" runat="server" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="image5" Display="Dynamic" SetFocusOnError="true"  ErrorMessage="Không đúng định dạng tải lên" ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.jpeg|.JPEG|.gif|.GIF|.png|.PNG|.JPG|.jpg|.bitmap|.BITMAP)$"></asp:RegularExpressionValidator>
            <br />
        </div>
    </div>
     <div class="form-group">
        <label class="control-label col-sm-4"> </label>
        <div class="col-ms-8">
            <asp:FileUpload ID="image6" runat="server" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="image6" Display="Dynamic" SetFocusOnError="true"  ErrorMessage="Không đúng định dạng tải lên" ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.jpeg|.JPEG|.gif|.GIF|.png|.PNG|.JPG|.jpg|.bitmap|.BITMAP)$"></asp:RegularExpressionValidator>
            <br />
        </div>
    </div>


    <div class="form-group">
        <label class="control-label col-sm-4">Cách Thanh toán: </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtcachthanhtoan" CssClass="control-group" style="min-width:40%;" runat="server" placeholder="Cách thanh toán"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4">Vận chuyển, giao nhận : </label>
        <div class="col-ms-8">
            <asp:TextBox ID="txtvanchuyen" CssClass="control-group" style="min-width:60%;" TextMode="multiline" Columns="50" Rows="3" runat="server" placeholder="Quy trình vận chuyển, giao nhận"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-4"> </label>      
        <asp:Button ID="btndangky" CssClass="btn btn-success" runat="server" Text="Bước tiếp theo" OnClick="btndangky_Click" />
    </div>
</div>
            </div>
    <div class="span2"></div>
    </div>
</div>


</asp:Content>
