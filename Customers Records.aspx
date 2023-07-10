<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customers Records.aspx.cs" Inherits="Customers_Records" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            color: #FF3300;
            height: 1037px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1" style="background-image: url('1652363361445.jpg'); background-color: #FFFFFF; font-weight: 700;">
    
        <marquee style="background-color: #FFFFFF; font-size: xx-large;">INTERNET BANKING</marquee><br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Home" Height="40px" style="font-weight: 700; font-size: large" Width="97px" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="1018px" Height="264px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="First Name" HeaderText="First Name" SortExpression="First Name" />
                <asp:BoundField DataField="Last Name" HeaderText="Last Name" SortExpression="Last Name" />
                <asp:BoundField DataField="Account Type" HeaderText="Account Type" SortExpression="Account Type" />
                <asp:BoundField DataField="Account Number" HeaderText="Account Number" SortExpression="Account Number" />
                <asp:BoundField DataField="IFSC Code" HeaderText="IFSC Code" SortExpression="IFSC Code" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Contact Number" HeaderText="Contact Number" SortExpression="Contact Number" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Registration pageConnectionString12 %>" ProviderName="<%$ ConnectionStrings:Registration pageConnectionString12.ProviderName %>" SelectCommand="SELECT * FROM [CreateAc]"></asp:SqlDataSource>
        </div>
&nbsp;</form>
</body>
</html>
