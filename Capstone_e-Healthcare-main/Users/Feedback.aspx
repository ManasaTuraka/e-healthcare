<%@ Page Title="Feedback" Language="C#" MasterPageFile="~/Users/UserMaster.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="OnlineMedicalStoreProject.Users.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<center style="background-color: #CCFF99">
<!-- contact -->
	<div class="contact" id="contact">
		<div class="container">
			<div class="w3-heading-all">
				<h3>Contact Us</h3>
			</div>
			<div class="agile-contact-grids">
				<div class="col-md-5 address">
					<h4>Contact Info</h4>
					<div class="address-row">
						<div class="col-md-2 w3-agile-address-left">
							<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
						</div>
						<div class="col-md-10 w3-agile-address-right">
							<h5>Visit Us</h5>
							<p>Main branch <br/>Mumbai ,Maharastra-India </p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="address-row">
						<div class="col-md-2 w3-agile-address-left">
							<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
						</div>
						<div class="col-md-10 w3-agile-address-right">
							<h5>Mail Us</h5>
							<p><a href="#"> digitalmedicalStore@gmail.com</a></p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="address-row">
						<div class="col-md-2 w3-agile-address-left">
							<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
						</div>
						<div class="col-md-10 w3-agile-address-right">
							<h5>Call Us</h5>
							<p>+91 1234567890</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-7 contact-form">
					<form action="#" method="post">
					    
						<div>
						
						<div>
                        <asp:TextBox ID="txtFirstName" placeholder="First Name" runat="server" 
                            BackColor="White" Font-Bold="True" ForeColor="Black">
                        </asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="validfname1" runat="server" ControlToValidate="txt_msg_fname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                        
                          
						
                                
                        <asp:TextBox ID="txtLastName" placeholder="Last Name" runat="server" BackColor="White" Font-Bold="True"></asp:TextBox>
                   <%--      <asp:RequiredFieldValidator ID="validlname1" runat="server" ControlToValidate="txt_msg_lname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
						</div>

						
						<div>
                        <asp:TextBox ID="txtMobile"  placeholder="Mobile Number" runat="server" 
                            BackColor="White" Font-Bold="True"></asp:TextBox>
                   <%--      <asp:RequiredFieldValidator ID="validmobile1" runat="server" ControlToValidate="txt_msg_mobile" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
						
						
						
						 <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" 
                            BackColor="White" Font-Bold="True"></asp:TextBox> 
                        <%-- <asp:RequiredFieldValidator ID="validemail1" runat="server" ControlToValidate="txt_msg_email" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                         </div>
						
						
						<div>
                        <asp:TextBox ID="txtMessage" placeholder="Suggestions " width="600px" 
                            runat="server" Height="80px" BackColor="White" Font-Bold="True"></asp:TextBox>
                         <%--<asp:RequiredFieldValidator ID="validmsg1" runat="server" ControlToValidate="txt_msg_message" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
						</div>
						
						<div>
                        <asp:Button ID="btnSend" runat="server" Text="Send" 
                            BackColor="#3399FF" Font-Bold="True" Font-Size="Medium" ForeColor="Black" OnClick="btnSend_Click" 
                             />
                        </div>
                        
                        </div>
					</form>
				</div>
				<div class="clearfix"> </div>	
			</div>
		</div>
	</div>
	<!-- //contact -->
	

</center>





</asp:Content>
