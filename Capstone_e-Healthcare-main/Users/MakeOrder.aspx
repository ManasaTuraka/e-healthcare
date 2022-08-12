<%@ Page Title="MakeOrder" Language="C#" MasterPageFile="~/Users/UserMaster.Master" AutoEventWireup="true" CodeBehind="MakeOrder.aspx.cs" Inherits="OnlineMedicalStoreProject.Users.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<center style="background-color: #f770dd">
		<br />
		<br />
<section class="logins py-5">
		<div class="container py-xl-5 py-lg-3">
			<div class="title-section mb-md-5 mb-4">
				<h6 class="w3ls-title-sub">Order now</h6>
				<h3 class="w3ls-title text-uppercase text-dark font-weight-bold">Register Now</h3>
			</div>
			<div class="login px-sm-4 mx-auto mw-100 login-wrapper">
				<form class="login-wrapper" action="#" method="post">
					<div class="form-group">
						<label>First Name</label>
						<asp:TextBox ID="txtFirstName" class="form-control" runat="server"></asp:TextBox>
						
					</div>
					<div class="form-group">
						<label>Last Name</label>
						<asp:TextBox ID="txtLastName" class="form-control" runat="server"></asp:TextBox>
						
					</div>
					<div class="form-group">
						<label>Email</label>
						<asp:TextBox ID="txtEmails" class="form-control" runat="server"></asp:TextBox>
						
					</div>
					<div class="form-group">
						<label>Mobile</label>
						<asp:TextBox ID="txtMobiles" class="form-control" runat="server"></asp:TextBox>
						
					</div>
					<div class="form-group">
						<label class="mb-2">Medicine Type</label>
						<asp:DropDownList ID="DropDownListMediicineType" runat="server">
							<asp:ListItem>Tablet</asp:ListItem>
							<asp:ListItem>Capsules</asp:ListItem>
							<asp:ListItem>Topical medicines</asp:ListItem>
							<asp:ListItem>Suppositories</asp:ListItem>
							<asp:ListItem>Drops</asp:ListItem>
							<asp:ListItem>Injections</asp:ListItem>
						</asp:DropDownList>
						
					</div>
					<div class="form-group mb-4">
						<label>Medicine Name*</label>
						<asp:TextBox ID="txtMedicineName" class="form-control" runat="server"></asp:TextBox>
						
					</div>
					<div class="form-group mb-4">
						<label>Quantity</label>
						<asp:TextBox ID="txtQuantity" class="form-control" runat="server"></asp:TextBox>
						
					</div>
						<div class="form-group mb-4">
						<label>Order date</label>
						<asp:TextBox ID="txtDate" TextMode="Date" class="form-control" runat="server"></asp:TextBox>
						
					</div>
					<asp:Button ID="btnMakeOrder" BackColor="#00cc00" ForeColor="White" runat="server" class="btn submit mt-4" Text="Make Order" OnClick="btnMakeOrder_Click" />&nbsp&nbsp
					<asp:Button ID="btnLogout" OnClick="btnLogout_Click" BackColor="Red" ForeColor="White" runat="server" Text="Logout" />
					
					<p class="text-center mt-5">
	
					</p>
				</form>
			</div>
		</div>
	</section>

</center>





</asp:Content>
