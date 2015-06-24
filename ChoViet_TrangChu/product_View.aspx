<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ChiTiet.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="product_View.aspx.cs" Inherits="ChoViet_TrangChu.product_View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.aspx">Trang chủ</a> <span class="divider">/</span></li>
		<li class="active">Danh sách sản phẩm</li>
    </ul>
	<h3> Danh sách sản phẩm <small class="pull-right"> </small></h3>	
	<hr class="soft">
	<p>
		Chợ việt kiểm duyệt toàn bộ tin trước khi đăng để việc mua bán an toàn & hiệu quả hơn. Tuy nhiên, quá trình duyệt tin chỉ có thể hạn chế tối đa các trường hợp không trung thực. Hãy báo cho chúng tôi những tin xấu để chúng tôi có thể xác minh & xây dựng trang web mua bán an toàn nhất cho người Việt.
	</p>
	<hr class="soft">
	<%--<div class="form-horizontal span6">
		<div class="control-group">
		  <label class="control-label alignL">Sort By </label>
			<select>
              <option>Priduct name A - Z</option>
              <option>Priduct name Z - A</option>
              <option>Priduct Stoke</option>
              <option>Price Lowest first</option>
            </select>
		</div>
	  </div>--%>
 <div class="pull-left">
     <h5>Tổng số kết quả : <asp:Label ID="lbltongsptim" style ="color:red" runat="server" Text=""></asp:Label></h5>
</div>	
<div id="myTab" class="pull-right">
 <a href="#listView" data-toggle="tab"><span class="btn btn-large"><i class="icon-list"></i></span></a>
 <a href="#blockView" data-toggle="tab"><span class="btn btn-large btn-primary"><i class="icon-th-large"></i></span></a>
</div>
<br class="clr">
<div class="tab-content">
		<div class="tab-pane" id="listView">
            <asp:Repeater ID="DLListView" runat="server">
                    <ItemTemplate>
                       <div class="row">	  
					<div class="span2">
						<asp:Image ID="Imahinhanh" runat="server" ImageUrl='<%# Eval("image1", "~/Images/{0}") %>' Height="160px" Width="160px" />
					</div>
					<div class="span5">
                        <h5>Ngày đăng :<%# Eval("timeaction") %> </h5><br />
                        <h7>Người đăng :<%# Eval("nguoidang") %> </h7>										
						<hr class="soft">
						<h5><%# Eval("title") %> </h5>
						<p>
						<%# Eval("content") %>
						</p>
						<a class="btn btn-small pull-right" href="product_detail.aspx?matinid=<%# Eval("ID") %>">Xem chi tiết </a>
						<br class="clr">
					</div>
					<div class="span2 alignR">
					<form class="form-horizontal qtyFrm">
					<h3><%# Eval("price") %></h3><br />
                    <p><%# Eval("like") %> Người đã thích </p>
						</form>
					</div>
			    </div>
			    <hr class="soft">
                    </ItemTemplate>
                </asp:Repeater>
		    </div>
			<div class="tab-pane active" id="blockView">
				<ul class="thumbnails">
                    <asp:Repeater ID="DLblockView" runat="server" >
                        <ItemTemplate>
                           <li class="span3">
                            <a href="product_detail.aspx?matinid=<%# Eval("ID") %>">
					          <div class="thumbnail">
						        <asp:Image ID="Imahinhanh" runat="server" ImageUrl='<%# Eval("image1", "~/Images/{0}") %>' Height="160px" Width="160px" />
						        <div class="caption">
						          <h5><%# Eval("nguoidang") %></h5>
						          <p  style="text-align:left"> 
							       <%# Eval("title") %> 
						          </p>
						          <p style="text-align:left"><a style="color:red" href="#"><%# Eval("price") %></a><a class="pull-right"><%# Eval("like") %> Thích</a></p>
						        </div>
					          </div>
                                </a>
					        </li>
                        </ItemTemplate>
                    </asp:Repeater>	
				</ul>
			<hr class="soft">
			</div>
</div>
	<div class="pagination">
		   <asp:Repeater ID="rptPages" runat="server"
                onitemcommand="rptPages_ItemCommand1">
                <ItemTemplate>
                    <asp:LinkButton ID="btnPage"
                     style="padding:1px 3px; margin:1px; background:#ccc; border:solid 1px #666; font:8pt tahoma;"
                     CommandName="Page" CommandArgument="<%# Container.DataItem %>"
                     runat="server"><%# Container.DataItem %>
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:Repeater>
			</div>
			<br class="clr">

</div>
</asp:Content>
