<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="QuanTri_TinQuangCao.aspx.cs" Inherits="ChoViet_QuanTri.QuanTri_TinQuangCao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul class="breadcrumb">
		<li><a href="index.aspx">Quản trị hệ thống</a><span class="divider"></span></li>
		<li class="active">Quản lý tin quảng cáo</li>
    </ul>
    <hr />
    <div class="jumbotron">
        <%--<div class="navbar-form">
            <div class="form-group">
                <asp:Label ID="Label1" CssClass="text-center" runat="server" Text="Tìm kiếm theo ID "></asp:Label>  
            </div>
            <div class="form-group" style="min-width:70%">
                <asp:TextBox ID="txttimkiem" CssClass="form-control" style="min-width:100%"  runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btltimkiem" CssClass="btn btn-success" runat="server" Text="Tìm kiếm" OnClick="btltimkiem_Click" />
            </div>          
        </div>
        <div class="navbar-form">
            <div class="form-group">
                <asp:Label ID="Label2" CssClass="text-center" runat="server" Text="Lọc theo khu vực "></asp:Label>  
            </div>
            <div class="form-group" style="min-width:50%">
                <asp:TextBox ID="TextBox1" CssClass="form-control" style="min-width:100%"  runat="server"></asp:TextBox>
            </div>
                      
        </div>
        <div class="navbar-form">
            <div class="form-group">
                <asp:Label ID="Label3" CssClass="text-center" runat="server" Text="Lọc theo loại tin"></asp:Label>  
            </div>
            <div class="form-group" style="min-width:50%">
                <asp:TextBox ID="TextBox2" CssClass="form-control" style="min-width:100%"  runat="server"></asp:TextBox>
            </div>                 
        </div>
    --%>
        <div class="form-horizontal">
            <div class="form-group">
               <div class="col-sm-5">
                   <asp:TextBox ID="txtimkiem" CssClass="form-control" placeholder="Tìm kiếm theo từ khóa"  runat="server"></asp:TextBox>                  
               </div>
                <div class="col-sm-3">
                   <asp:DropDownList ID="Drkhuvuc"  CssClass="form-control" runat="server">
                       <asp:ListItem Value="1">Lọc theo khu vực </asp:ListItem>
                   </asp:DropDownList>
               </div>
                 <div class="col-sm-2">
                   <asp:DropDownList ID="Drloaitin"  CssClass="form-control" runat="server">
                       <asp:ListItem Value="1">Lọc theo loại tin </asp:ListItem>
                       <asp:ListItem Value="1">Cần mua </asp:ListItem>
                       <asp:ListItem Value="2">Cần bán</asp:ListItem>
                     </asp:DropDownList>
               </div>
                <div class="col-sm-2">
                    <asp:Button ID="btbtimkiem" CssClass="btn btn-success" runat="server" Text="Tìm kiếm"  OnClick="btbtimkiem_Click"/>
               </div>
            </div>
        </div>
    </div>
    <asp:Label ID="lblthongbao" runat="server" Text=""></asp:Label>
    <div class="pull-right">
         <h4>Tổng số : <asp:Label ID="lbltongketqua" style ="color:red" runat="server" Text=""></asp:Label> kết quả</h4>
    </div>
    <asp:GridView ID="GrdanhSachtinquangcao" CssClass="table table-hover" runat="server" AllowPaging="True" PageSize="20" OnPageIndexChanging="GrdanhSachtinquangcao_PageIndexChanging" AutoGenerateColumns="False" DataKeyNames="matin" OnRowEditing="GrdanhSachtinquangcao_RowEditing" OnRowDataBound="GrdanhSachtinquangcao_RowDataBound" OnRowDeleting="GrdanhSachtinquangcao_RowDeleting">
        <Columns>
            <asp:BoundField DataField="matin" HeaderText="Mã tin" />
            <asp:BoundField DataField="tieude" HeaderText="Tiêu đề" />
            <asp:BoundField DataField="loaitin" HeaderText="Loại tin" />
            <asp:BoundField DataField="khuvuc" HeaderText="Khu vực" />
            <asp:BoundField DataField="danhmuc" HeaderText="Danh mục" />
            <asp:BoundField DataField="nguoidang" HeaderText="Người đăng" />
            <asp:BoundField DataField="thoigiangui" HeaderText="Ngày gửi" />
            <asp:CommandField DeleteText="Xóa" HeaderText="Thao tác" SelectText="Xem " ShowDeleteButton="True" EditText="Xem chi tiết" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
   
</asp:Content>
