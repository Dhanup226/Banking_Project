<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Withdrawal Records.aspx.cs" Inherits="Withdrawal_Records" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 46px;
            font-size: xx-large;
            color: #FF3300;
        }
    </style>
    </head>
<body>
    <div style="background-image: url('1652363361445.jpg'); height: 1263px;">
    <form id="form1" runat="server">
        <table style="width: 100%; height: 70px;">
            <tr>
                <td class="auto-style1"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; INTERNET BANKING</strong></td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Activity Page" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Account Number" HeaderText="Account Number" SortExpression="Account Number" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Registration pageConnectionString16 %>" ProviderName="<%$ ConnectionStrings:Registration pageConnectionString16.ProviderName %>" SelectCommand="SELECT * FROM [Withdraw]"></asp:SqlDataSource>
    </form>
        </div>
</body>
</html>
