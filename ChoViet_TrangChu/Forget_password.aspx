﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ChiTiet.Master" AutoEventWireup="true" CodeBehind="Forget_password.aspx.cs" Inherits="ChoViet_TrangChu.Forget_password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
		<li class="active">Quên mật khẩu?</li>
    </ul>
	<h3> Quên mật khẩu ?</h3>	
	<hr class="soft">
	
	<div class="row">
		<div class="span9" style="min-height:900px">
			<div class="well">
			<h5>Reset your password</h5><br>
			Please enter the email address for your account. A verification code will be sent to you. Once you have received the verification code, you will be able to choose a new password for your account.<br><br><br>
			<div>
			  <div class="control-group">
				<label class="control-label" for="inputEmail1">E-mail address</label>
				<div class="controls">
				  <input class="span3" type="text" id="inputEmail1" placeholder="Email"/>
				</div>
			  </div>
			  <div class="controls">
			  <button type="submit" class="btn block">Submit</button>
			  </div>
			</div>
		</div>
		</div>
	</div>	
	
</div>

</asp:Content>
