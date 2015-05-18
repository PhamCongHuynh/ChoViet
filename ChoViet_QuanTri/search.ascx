<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="search.ascx.cs" Inherits="ChoViet_QuanTri.search" %>

             <div class="jumbotron">
                <div class="form-inline navbar-search">
                    <asp:Label ID="Label5" runat="server" Text="Tìm kiếm theo ID"></asp:Label>
                    <input id="txttimkiem" class="texttimkiem" type="text"/>
                    <button type="submit" id="Button" class="btntile2 btn-primary">Tìm kiếm</button>
                </div>
              <hr />
                <div class="form-inline navbar-search">
                    <asp:Label ID="Label1" runat="server" Text="Từ ngày"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <input id="txttungay" class="textlich" type="text"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <asp:Label ID="Label2" runat="server" Text="Đến ngày"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <input id="txtdenngay" class="textlich" type="text"/>
                </div>

                <div class="form-inline navbar-search">
                    <asp:Label ID="Label3" runat="server" Text="Loại tin đăng"></asp:Label>
		          <select class="textbinhthuong">
			        <option>All</option>
			        <option>CLOTHES </option>
			        <option>FOOD AND BEVERAGES </option>
			        <option>HEALTH &amp; BEAUTY </option>
			        <option>SPORTS &amp; LEISURE </option>
			        <option>BOOKS &amp; ENTERTAINMENTS </option>
		        </select> 
                    <asp:Label ID="Label4" runat="server" Text="Chọn khu vực"></asp:Label>
                <select class="textbinhthuong">
			        <option>All</option>
			        <option>CLOTHES </option>
			        <option>FOOD AND BEVERAGES </option>
			        <option>HEALTH &amp; BEAUTY </option>
			        <option>SPORTS &amp; LEISURE </option>
			        <option>BOOKS &amp; ENTERTAINMENTS </option>
		        </select>
		          <button type="submit" id="submitButton" class="btntile2 btn-primary">Tìm kiếm nâng cao</button>
                </div>
              

            </div>
