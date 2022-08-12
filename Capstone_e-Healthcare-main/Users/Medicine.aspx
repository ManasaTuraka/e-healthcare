<%@ Page Title="Medicine" Language="C#" MasterPageFile="~/Users/UserMaster.Master" AutoEventWireup="true" CodeBehind="Medicine.aspx.cs" Inherits="OnlineMedicalStoreProject.Users.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <center style="background-color: #CCFF99">

         <asp:TextBox ID="SearchByTagTB" runat="server" Font-Bold="True" Width="338px" 
         BorderColor="#990000" Font-Size="Large"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="SearchByTagButton" runat="server" Text="SEARCH"
             BackColor="#6699FF" 
         BorderColor="#990000" Font-Bold="True" ForeColor="Black" OnClick="SearchByTagButton_Click" /><br />
        <asp:GridView ID="gvPatients" runat="server"></asp:GridView>





    <asp:GridView ID="GridView1Feedback" runat="server" AllowPaging="True" width="80%"
        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
        GridLines="Vertical" >
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:TemplateField HeaderText="Medicine Code">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("tableCode") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Tablet Name">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%#Eval("tableName") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Medicine Type">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%#Eval("medicineType") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Price">
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%#Eval("price") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Quantity">
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%#Eval("quantity") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Manufacture Date">
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%#Eval("manufactureDate") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Expired Date">
            <ItemTemplate>
                <asp:Label ID="Label7" runat="server" Text='<%#Eval("expiredDate") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

              <asp:TemplateField HeaderText="Description">
            <ItemTemplate>
                <asp:Label ID="Label8" runat="server" Text='<%#Eval("description") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
        </Columns>
          
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
</center>




</asp:Content>
