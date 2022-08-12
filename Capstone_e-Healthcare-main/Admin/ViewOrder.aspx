<%@ Page Title="ViewOrder" Language="C#" MasterPageFile="~/Admin/AdminMAster.Master" AutoEventWireup="true" CodeBehind="ViewOrder.aspx.cs" Inherits="OnlineMedicalStoreProject.Admin.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<center style="font-size: medium; font-weight: bold; background-color: #CCFF99">
<br />
<br />
<br />
<br />
<br />
 <asp:GridView Text-align="center" ID="GridView01User" runat="server" 
        AllowPaging="True" CellPadding="4" 
        ForeColor="#333333" GridLines="None" Height="332px"  Width="1100px" 
        AutoGenerateColumns="False" Font-Size="Medium" OnSelectedIndexChanged="GridView01User_SelectedIndexChanged" >
        <Columns>
            
            <asp:TemplateField HeaderText="First Name">
            <ItemTemplate>
                <asp:Label ID="lblfnm" runat="server" Text='<%#Eval("firstName") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Middle Name">
            <ItemTemplate>
                <asp:Label ID="lbllmnm" runat="server" Text='<%#Eval("middleName") %>'></asp:Label>
            </ItemTemplate>
           
            </asp:TemplateField>
            
            
            
            <asp:TemplateField HeaderText="Last Name">
            <ItemTemplate>
                <asp:Label ID="lbllnm" runat="server" Text='<%#Eval("lastName") %>'></asp:Label>
            </ItemTemplate>
          
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Gender">
            <ItemTemplate>
                <asp:Label ID="lblgender" runat="server" Text='<%#Eval("gender") %>'></asp:Label>
            </ItemTemplate>
           
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Mobile">
            <ItemTemplate>
                <asp:Label ID="lblmobile" runat="server" Text='<%#Eval("mobile") %>'></asp:Label>
            </ItemTemplate>
        
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Address">
            <ItemTemplate>
                <asp:Label ID="lbladdress" runat="server" Text='<%#Eval("address") %>'></asp:Label>
            </ItemTemplate>
    
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Email">
            <ItemTemplate>
                <asp:Label ID="lblemail" runat="server" Text='<%#Eval("email") %>'></asp:Label>
            </ItemTemplate>
           
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Password">
            <ItemTemplate>
                <asp:Label ID="lblpass" runat="server" Text='<%#Eval("pass") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
            </EditItemTemplate>
            </asp:TemplateField>
            
            <asp:CommandField ShowSelectButton="True" />
            
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />
</center>



</asp:Content>
