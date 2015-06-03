<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Choviet_MenuMember.ascx.cs" Inherits="ChoViet_TrangChu.Choviet_MenuMember" %>
<ul id="sideManu" class="nav nav-tabs nav-stacked">
			<li class="subMenu"><a>Thông tin cá nhân</a>
				<ul>
				<li><a href="Choviet_Thongtinchung.aspx"><i class="icon-chevron-right"></i>Thông tin chung </a></li>
				<li><a href="ChoViet_DoiThongTinCaNhan.aspx"><i class="icon-chevron-right"></i>Thay đổi thông tin cá nhân</a></li>
				<li><a href="ChoViet_DoiMatKhau.aspx"><i class="icon-chevron-right"></i>Đổi mật khẩu</a></li>
				</ul>
			</li>
            <li class="subMenu"><a>Quản lý tin đăng</a>
			<ul>
				<li><a href="ChoViet_Member.aspx?status_id=1"><i class="icon-chevron-right"></i>Đang rao vặt</a></li>
				<li><a href="ChoViet_Member.aspx?status_id=0"><i class="icon-chevron-right"></i>Tin mới chờ duyệt</a></li>																							
			    <li><a href="ChoViet_Member.aspx?status_id=2"><i class="icon-chevron-right"></i>Tin đợi duyệt</a></li>
				<li><a href="ChoViet_Member.aspx?status_id=3"><i class="icon-chevron-right"></i>Tin bị từ chối</a></li>																										
            </ul>
			</li>
</ul>	