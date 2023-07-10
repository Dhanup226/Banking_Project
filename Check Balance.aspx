<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Check Balance.aspx.cs" Inherits="Check_Balance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            color: #FF3300;
        }
        .auto-style2 {
            width: 443px;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: url('1652363361445.jpg'); height: 1339px;">
    
        <table style="width: 100%; height: 149px;">
            <tr>
                <td class="auto-style1" colspan="3"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; INTERNET BANKING</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button7" runat="server" PostBackUrl="~/Home.aspx" style="font-weight: 700" Text="Home" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%; height: 201px;">
            <tr>
                <td class="auto-style1" colspan="3"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Check Balance</strong></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: large" Text="Account Number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" style="font-weight: 700; font-size: large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button8" runat="server" style="font-weight: 700" Text="Check" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AccountNumber" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="312px" Width="310px">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" ReadOnly="True" SortExpression="AccountNumber" />
                            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Registration pageConnectionString14 %>" ProviderName="<%$ ConnectionStrings:Registration pageConnectionString14.ProviderName %>" SelectCommand="SELECT * FROM [Deposit] WHERE ([AccountNumber] LIKE '%' + ? + '%')" DeleteCommand="DELETE FROM [Deposit] WHERE [AccountNumber] = ?" InsertCommand="INSERT INTO [Deposit] ([AccountNumber], [Amount]) VALUES (?, ?)" UpdateCommand="UPDATE [Deposit] SET [Amount] = ? WHERE [AccountNumber] = ?">
                        <DeleteParameters>
                            <asp:Parameter Name="AccountNumber" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="AccountNumber" Type="String" />
                            <asp:Parameter Name="Amount" Type="Decimal" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="AccountNumber" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Amount" Type="Decimal" />
                            <asp:Parameter Name="AccountNumber" Type="String" />
                        </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
