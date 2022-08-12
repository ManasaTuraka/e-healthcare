<%@ Page Title="AddMedicine" Language="C#" MasterPageFile="~/Admin/AdminMAster.Master" AutoEventWireup="true" CodeBehind="AddMedicine.aspx.cs" Inherits="OnlineMedicalStoreProject.Admin.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <center style="font-size: medium; font-weight: bold; background-color: #CCFF99">
<br />
<br />
<br />
<br />
<table align="center" 
        
        style="width: 50%; height: 700px; background-color: #C0C0C0; font-size: large; font-weight: bold;">
        <tr>
            <td colspan="3" style="height: 77px">
            <h1 align="center" style="background-color: #000000; color: #FFFFFF"> Add New Medicine</h1>
                </td>
        </tr>
        
        <tr>
            <td align="center">
                <asp:Label ID="lbltid" runat="server" Text="Tablate Code"></asp:Label></td>
            <td >
               <asp:TextBox class="input--style-5" ID="txtTablateCode" runat="server"></asp:TextBox> 
              <%-- <asp:RequiredFieldValidator ID="valid_pid" runat="server" ControlToValidate="txt_addproduct_pid" ErrorMessage="required!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
               </td>
         
        </tr>
        <tr>
            <td align="center">
               <asp:Label ID="lbltname" runat="server" Text="Tablate Name"></asp:Label></td>
            <td >
                <asp:TextBox ID="txtMedicineName" class="input--style-5" runat="server"></asp:TextBox>
               <%-- <asp:RequiredFieldValidator ID="valid_pname" runat="server" ControlToValidate="txt_addproduct_pname" ErrorMessage="required!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                </td>
            
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lblMedicienType" runat="server" Text="Medicine Type"></asp:Label></td>
            <td>
               <asp:DropDownList ID="DropDownListMediicineTypes" runat="server">
							<asp:ListItem>Tablet</asp:ListItem>
							<asp:ListItem>Capsules</asp:ListItem>
							<asp:ListItem>Topical medicines</asp:ListItem>
							<asp:ListItem>Suppositories</asp:ListItem>
							<asp:ListItem>Drops</asp:ListItem>
							<asp:ListItem>Injections</asp:ListItem>
						</asp:DropDownList>
               <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_addproduct_price" ErrorMessage="required!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
               </td>
            
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lblfprice" runat="server" Text="Price"></asp:Label></td>
            <td>
               <asp:TextBox ID="txtPrice" class="input--style-5" runat="server"></asp:TextBox> 
              <%-- <asp:RequiredFieldValidator ID="valid_price" runat="server" ControlToValidate="txt_addproduct_price" ErrorMessage="required!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
               </td>
            
        </tr>
     <tr>
            <td align="center">
                <asp:Label ID="lblQuentity" runat="server" Text="Quantity"></asp:Label></td>
            <td>
               <asp:TextBox ID="txtQuantity" class="input--style-5" runat="server"></asp:TextBox> 
              <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_addproduct_price" ErrorMessage="required!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
               </td>
            
        </tr>
     <tr>
            <td align="center">
                <asp:Label ID="lblmDate" runat="server" Text="Menufacture Date"></asp:Label></td>
            <td>
               <asp:TextBox ID="txtMDate" TextMode="Date" class="input--style-5" runat="server"></asp:TextBox> 
              <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_addproduct_price" ErrorMessage="required!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
               </td>
            
        </tr>
     <tr>
            <td align="center">
                <asp:Label ID="Label1" runat="server" Text="Menufacture Date"></asp:Label></td>
            <td>
               <asp:TextBox ID="txtEDate" TextMode="Date" class="input--style-5" runat="server"></asp:TextBox> 
              <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_addproduct_price" ErrorMessage="required!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
               </td>
            
        </tr>
     <tr>
            <td align="center">
                <asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label></td>
            <td>
               <asp:TextBox ID="txtdescription" TextMode="Multiline" class="input--style-5" runat="server"></asp:TextBox> 
              <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_addproduct_price" ErrorMessage="required!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
               </td>
            
        </tr>


        
        <tr>
            <td colspan="3" align="center"><asp:Button ID="btnAddMedicine"  runat="server" 
               Text="Add Medicine"  BackColor="#FF5050" Font-Bold="True" 
                    Font-Size="Large" Height="29px" Width="183px" OnClick="btnAddMedicine_Click"  /></td>
        </tr>
</table>
<br />
<br />
<br />
<br />

</center>




</asp:Content>
