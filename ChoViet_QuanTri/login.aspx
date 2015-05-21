<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ChoViet_QuanTri.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="viewport" content="width=1,initial-scale=1,user-scalable=1"/>
	<link href="http://fonts.googleapis.com/css?family=Lato:100italic,100,300italic,300,400italic,400,700italic,700,900italic,900" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="assets/css/styles.css"/>
</head>
<body>
    <form id="form1" runat="server">
 
	<section class="container login-form">
		<section>
			<div>
				<img src="assets/images/logo.png" alt="" class="img-responsive" />
				<div class="form-group">
                    <asp:TextBox ID="txttmaaikhoan" runat="server"  CssClass="form-control" placeholder="Nhập mã nhân viên"></asp:TextBox>
					
				</div>
				<div class="form-group">
                    <asp:TextBox ID="txtmatkhau" runat="server"  CssClass="form-control" TextMode="Password" placeholder="Nhập mật khẩu"></asp:TextBox>	
				</div>
                <asp:Button ID="btndangnhap" CssClass="btn btn-primary btn-block" runat="server" Text="Đăng nhập" OnClick="btndangnhap_Click" />
				
				<a href="#">Nhớ mật khẩu</a>
			</div>
		</section>
	</section>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
