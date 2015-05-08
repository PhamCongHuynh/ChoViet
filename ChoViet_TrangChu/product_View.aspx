﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ChiTiet.Master" AutoEventWireup="true" CodeBehind="product_View.aspx.cs" Inherits="ChoViet_TrangChu.product_View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.aspx">Home</a> <span class="divider">/</span></li>
		<li class="active">Products Name</li>
    </ul>
	<h3> Products Name <small class="pull-right"> 40 products are available </small></h3>	
	<hr class="soft">
	<p>
		Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular and we have a great number of faithful customers all over the country.
	</p>
	<hr class="soft">
	<div class="form-horizontal span6">
		<div class="control-group">
		  <label class="control-label alignL">Sort By </label>
			<select>
              <option>Priduct name A - Z</option>
              <option>Priduct name Z - A</option>
              <option>Priduct Stoke</option>
              <option>Price Lowest first</option>
            </select>
		</div>
	  </div>
	  
<div id="myTab" class="pull-right">
 <a href="#listView" data-toggle="tab"><span class="btn btn-large"><i class="icon-list"></i></span></a>
 <a href="#blockView" data-toggle="tab"><span class="btn btn-large btn-primary"><i class="icon-th-large"></i></span></a>
</div>
<br class="clr">
<div class="tab-content">
		<div class="tab-pane" id="listView">
            <asp:DataList ID="DLListView" runat="server">
                    <ItemTemplate>
                       <div class="row">	  
					<div class="span2">
						<img src="<%# Eval("image1") %>" alt="">
					</div>
					<div class="span4">
						<h3>New | Available</h3>				
						<hr class="soft">
						<h5><%# Eval("title") %> </h5>
						<p>
						<%# Eval("content") %>
						</p>
						<a class="btn btn-small pull-right" href="product_details.html">Xem chi tiết</a>
						<br class="clr">
					</div>
					<div class="span3 alignR">
					<form class="form-horizontal qtyFrm">
					<h3><%# Eval("price") %></h3><br />
                     <asp:Label ID="Label1" runat="server" Text='<%# Eval("nguoidang") %>'></asp:Label>
					<br>
					<div class="btn-group">
					  <a href="product_detail.aspx" class="btn btn-large"><i class="icon-zoom-in"></i></a>
					 </div>
						</form>
					</div>
			    </div>
			    <hr class="soft">
                    </ItemTemplate>
                </asp:DataList>
		    </div>
			<div class="tab-pane active" id="blockView">
				<ul class="thumbnails">
                    <asp:DataList ID="DLblockView" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
                        <ItemTemplate>
                           <li class="span3">
					          <div class="thumbnail">
						        <a href="product_details.html"><img src="themes/images/products/10.jpg" alt=""></a>
						        <div class="caption">
						          <h5><%# Eval("nguoidang") %></h5>
						          <p> 
							       <%# Eval("title") %> 
						          </p>
						          <h4 style="text-align:center"><a class="btn" href="product_detail.aspx">Xem chi tiết<i class="icon-zoom-in"></i></a><a class="btn btn-primary" href="#"><%# Eval("price") %></a></h4>
						        </div>
					          </div>
					        </li>
                        </ItemTemplate>
                    </asp:DataList>	
				</ul>
			<hr class="soft">
			</div>
</div>

	<a href="compair.html" class="btn btn-large pull-right">Compair Product</a>
	<div class="pagination">
			<ul>
			<li><a href="#">‹</a></li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">...</a></li>
			<li><a href="#">›</a></li>
			</ul>
			</div>
			<br class="clr">

</div>
</asp:Content>
