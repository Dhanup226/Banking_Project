<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Transfer Records.aspx.cs" Inherits="Transfer_Records" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            height: 1123px;
        }
    </style>
</head>
<body bgcolor="green">
    <form id="form1" runat="server">
    <div class="auto-style1" style="background-image: url('1652363361445.jpg')">
    
        <strong><marquee style="color: #CC6600; background-color: #FFFFFF">INTERNET BANKING</marquee><br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Home" style="font-weight: 700" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" SortExpression="AccountNumber" />
                <asp:BoundField DataField="ToAccountNumber" HeaderText="ToAccountNumber" SortExpression="ToAccountNumber" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Registration pageConnectionString15 %>" ProviderName="<%$ ConnectionStrings:Registration pageConnectionString15.ProviderName %>" SelectCommand="SELECT * FROM [Transfer]"></asp:SqlDataSource>
        </strong></div>
    </form>
</body>
</html>
