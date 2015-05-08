<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ThongTin.Master" AutoEventWireup="true" CodeBehind="Choviet_rule.aspx.cs" Inherits="ChoViet_TrangChu.Choviet_rule" %>

<%@ Register Src="~/Choviet_MenuRight.ascx" TagPrefix="uc1" TagName="Choviet_MenuRight" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
	<div class="row">
<!-- Sidebar ================================================== -->
	<div id="sidebar" class="span3">
		<div class="well well-small"><a id="myCart" href="product_summary.html"><img src="themes/images/ico-cart.png" alt="cart">3 Items in your cart  <span class="badge badge-warning pull-right">$155.00</span></a></div>
        <uc1:Choviet_MenuRight runat="server" ID="Choviet_MenuRight" />
		<br>
	</div>
<!-- Sidebar end=============================================== -->
	<div class="span9">
        <asp:FormView ID="FormView1" runat="server">
            <ItemTemplate>
                <ul class="breadcrumb">
		            <li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
		            <li class="active">Quy chế</li>
                </ul>
	            <h3><%# Eval("name") %></h3>	
	            <hr class="soft">
	            <div id="legalNotice">
		            <h5><%# Eval("title") %></h5><br>
		            <p>
		              <%# Eval("content") %>
		            </p>           
	            </div>
            </ItemTemplate>
        </asp:FormView>

  
	</div>
</div>
</div>
</asp:Content>
