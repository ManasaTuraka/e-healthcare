<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Users/UserMaster.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="OnlineMedicalStoreProject.Users.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<center style="background-color: #f770dd">
<table align="center" 
         style=" width: 50%; height: 800px; background-color: #06fdf4; font-size: large; font-weight: bold;">
        <tr>
            <td colspan="2" style=" font-size: large; font-weight: bold;">
            <h1 align="center" style="background-color: #000000; color: #FFFFFF"> Registration</h1>
            </td>
        </tr>
        
      
        <tr>
            <td  align="center">
              <asp:Label ID="lbl_signup_name" runat="server" Text="Name"></asp:Label>
            </td>
            <td align="center" >
                <asp:TextBox ID="txtFirstNAme" placeholder="First Name" runat="server" Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox> 
               <%-- <asp:RequiredFieldValidator ID="validfname" runat="server" ControlToValidate="txt_signup_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                
            </td>
            
        </tr>
    <tr>
            <td  align="center">
              <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            </td>
            <td align="center" >
                <asp:TextBox ID="txtMiddleName" placeholder="Middle Name" runat="server" Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox> 
               <%-- <asp:RequiredFieldValidator ID="validfname" runat="server" ControlToValidate="txt_signup_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                
            </td>
            
        </tr>
     <tr>
            <td  align="center">
              <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td align="center" >
                <asp:TextBox ID="txtLAstNAme" placeholder="Last Name" runat="server" Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox> 
               <%-- <asp:RequiredFieldValidator ID="validfname" runat="server" ControlToValidate="txt_signup_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                
            </td>
            
        </tr>
     
        
       
        
        <tr>
            <td  align="center">
                <asp:Label ID="lbl_signup_gender" runat="server" Text="Gender"></asp:Label><br />
            </td>
            <td  align="center">
                <asp:RadioButtonList ID="RadioButtoneList_Gender" runat="server">
                
                <asp:ListItem Text="male">Male</asp:ListItem>
                <asp:ListItem Text="female" >Female</asp:ListItem>
                <asp:ListItem Text="female" >Other</asp:ListItem>
                </asp:RadioButtonList>
                
            </td>
        </tr>
        
        <tr>
            <td  align="center"><asp:Label ID="lbl_signup_mobile" runat="server" Text="Mobile"></asp:Label>
            </td>
            <td  align="center">
                <asp:TextBox ID="txtMobile" placeholder="Mobile" runat="server" Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
               <%-- <asp:RequiredFieldValidator ID="validmobile" runat="server" ControlToValidate="txt_signup_mobile" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                
            </td>
        </tr>

            <tr>
            <td  align="center"><asp:Label ID="lbl_signup_address" runat="server" Text="Address"></asp:Label>
            </td>
            <td  align="center"><asp:TextBox ID="txt_Address" TextMode="MultiLine" placeholder="Address" runat="server"  BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium" Width="390px"></asp:TextBox>
            <%--<asp:RequiredFieldValidator ID="valid_address" runat="server" ControlToValidate="txt_signup_address" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%></td>
        </tr>
        
        <tr>
            <td  align="center"><asp:Label ID="lbl_signup_email" runat="server" Text="Email"></asp:Label></td>
            <td align="center">
             <asp:TextBox ID="txtEmail" placeholder="Email" runat="server" Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>   
           <%-- <asp:RequiredFieldValidator ID="validemail" runat="server" ControlToValidate="txt_signup_email" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
            <asp:RegularExpressionValidator ID="Regulare_mail" runat="server" ErrorMessage="Valid Email ID" ValidationGroup="vgSubmit" ControlToValidate="txt_signup_email"  ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
            </asp:RegularExpressionValidator>--%>
        </tr>
        
        <tr>
            <td  align="center"><asp:Label ID="lbl_signup_pass" runat="server" Text="Password"></asp:Label>
            </td>
            <td  align="center"><asp:TextBox ID="txt_signup_pass" placeholder="Password" runat="server" Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
       <%--     <asp:RequiredFieldValidator ID="validpwd" runat="server" ControlToValidate="txt_signup_pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
           
            </td>
        </tr>

        <tr>
            <td  align="center"><asp:Label ID="lbl_signup_cpass" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td  align="center"><asp:TextBox ID="txt_signup_cpass"  placeholder="Confirm Password" runat="server" Height="25px" Width="380px" 
                    BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium" ></asp:TextBox>
                <%-- <asp:RequiredFieldValidator ID="validcpass" runat="server" ControlToValidate="txt_signup_cpass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>

            </td>
        </tr>

    
        
        <tr>
            <td colspan="2" align="center" 
                style=" font-size: large; font-weight: bold;">
                <asp:Button ID="btnSubmit" class="login login-submit" runat="server" 
                Text="Submit"  Font-Bold="True" Font-Size="Large" 
                    Height="40px" Width="512px" BackColor="Lime" ForeColor="White" OnClick="btnSubmit_Click"  />
            </td>
        </tr>
</table>
</center>



</asp:Content>
