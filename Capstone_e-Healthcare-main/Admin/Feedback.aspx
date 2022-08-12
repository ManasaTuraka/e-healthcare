<%@ Page Title="Feedback" Language="C#" MasterPageFile="~/Admin/AdminMAster.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="OnlineMedicalStoreProject.Admin.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<center style="background-color: #CCFF99">
    <asp:GridView ID="GridView1Feedback" runat="server" AllowPaging="True" width="80%"
        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
        GridLines="Vertical" OnSelectedIndexChanged="GridView1Feedback_SelectedIndexChanged">
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:TemplateField HeaderText="First Name">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("firstName") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Last Name">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%#Eval("lastName") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Mobile">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%#Eval("mobile") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Email">
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%#Eval("email") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Message">
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%#Eval("message") %>'></asp:Label>
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
