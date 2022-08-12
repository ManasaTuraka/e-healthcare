<%@ Page Title="Login" Language="C#" MasterPageFile="~/Users/UserMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineMedicalStoreProject.Users.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <center style="font-size: medium; font-weight: bold; background-color: #CCFF99" >
<br />
<br />
<br />
<br />
<br />
<table align="center" 
        style="background-color: #05f7e8; width: 35%; height: 250px;  font-size: large; font-weight: bold;">
        <tr>
            
            <td colspan="3" style="height: 100px">
            <h1 align="center" style="background-color: #000000; color: #FFFFFF" > Login</h1>
            </td>
        </tr>
        
        <tr>
            <td rowspan="6" width="182px">
                <img id="imges1" src="vendor/img/elements-img/portfolio-img/portfolio-img/portfolio-img-1.jpg"  Height="200px" Width="150px" />
            </td>
            <td colspan="2" align="center" style="height: 47px">
                <asp:DropDownList ID="DroupDownListLogin" runat="server"  BackColor="White" 
                Height="32px" Width="149px">
                <asp:ListItem>Select Type</asp:ListItem>
                <asp:ListItem>USER</asp:ListItem>
                <asp:ListItem>ADMIN</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        
       <tr>
        <td style="width: 169px; height: 57px" align="center"><label>Username</label></td>
        <td style="height: 57px">
            <asp:TextBox ID="txtusername" placeholder="Username" runat="server" 
         Height="40px" Width="200px" BackColor="White"></asp:TextBox></td>
       </tr>
       
       <tr>
            <td style="width: 169px; height: 50px" align="center"><label>Password</label></td>
            <td style="height: 50px"><asp:TextBox ID="txtpassword" TextMode="Password" 
                    placeholder="Password" runat="server" 
             Height="40px" Width="200px"   BackColor="White"></asp:TextBox></td>
       </tr>
       
       <tr>
       <td colspan="2" align="center">
       <asp:Button ID="btnLogin" class="login login-submit" runat="server" Text="Login" 
                Font-Bold="True" Font-Size="Large" ForeColor="Black" 
               Height="34px" Width="250px" BackColor="#0099CC" OnClick="btnLogin_Click"/>
       </td>
       </tr>
       
     
</table>
<br />
<br />
<br />
<br />
<br />
</center>



</asp:Content>
