<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ThongTin.Master" AutoEventWireup="true" CodeBehind="ChoViet_LienHe.aspx.cs" Inherits="ChoViet_TrangChu.ChoViet_LienHe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
	                <hr class="soften">
	                <h1>Trung tâm tư vấn khách hàng</h1>
	                <hr class="soften">	
	                <div class="row">
		                <div class="span4">
		                <h4>Chi tiết liên lạc</h4>
		                <p>	18 Mỹ Đình,<br> Hà Nội, Việt Nam
			                <br><br>
			                lienhechoviet@gmail.com<br>
			                ﻿Tel 123-456-6780<br>
			                Fax 123-456-5679<br>
			                web:chợ việt.net
		                </p>		
		                </div>
			
		                <div class="span4">
		                <h4>thời gian làm việc</h4>
			                <h5> Thứ hai - Chủ nhật</h5>
			                <p>09:00am - 09:00pm<br><br></p>
			                <h5>Thứ bảy</h5>
			                <p>09:00am - 07:00pm<br><br></p>
			                <h5>Chủ nhật</h5>
			                <p>12:30pm - 06:00pm<br><br></p>
		                </div>
		                <div class="span4">
		                <h4>Email Us</h4>
		                <div class="form-horizontal">
                        <fieldset>
                          <div class="control-group">
           
                              <input type="text" placeholder="name" class="input-xlarge">
           
                          </div>
		                   <div class="control-group">
           
                              <input type="text" placeholder="email" class="input-xlarge">
           
                          </div>
		                   <div class="control-group">
           
                              <input type="text" placeholder="subject" class="input-xlarge">
          
                          </div>
                          <div class="control-group">
                              <textarea rows="3" id="textarea" class="input-xlarge"></textarea>
           
                          </div>

                            <button class="btn btn-large" type="submit">Send Messages</button>

                        </fieldset>
                      </div>
		                </div>
	                </div>
	                <div class="row">
	                <div class="span12">
	                <iframe style="width:100%; height:300; border: 0px" scrolling="no" src="https://maps.google.co.uk/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=18+California,+Fresno,+CA,+United+States&amp;aq=0&amp;oq=18+California+united+state&amp;sll=39.9589,-120.955336&amp;sspn=0.007114,0.016512&amp;ie=UTF8&amp;hq=&amp;hnear=18,+Fresno,+California+93727,+United+States&amp;t=m&amp;ll=36.732762,-119.695787&amp;spn=0.017197,0.100336&amp;z=14&amp;output=embed"></iframe><br>
	                <small><a href="https://maps.google.co.uk/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=18+California,+Fresno,+CA,+United+States&amp;aq=0&amp;oq=18+California+united+state&amp;sll=39.9589,-120.955336&amp;sspn=0.007114,0.016512&amp;ie=UTF8&amp;hq=&amp;hnear=18,+Fresno,+California+93727,+United+States&amp;t=m&amp;ll=36.732762,-119.695787&amp;spn=0.017197,0.100336&amp;z=14" style="color:#0000FF;text-align:left">View Larger Map</a></small>
	                </div>
	                </div>
</div>

</asp:Content>
