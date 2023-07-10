<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Deposit.aspx.cs" Inherits="Deposit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 73px;
            font-size: xx-large;
            color: #FF3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: url('1652363361445.jpg'); height: 1258px;">
    
        <table style="width: 100%; height: 139px;">
            <tr>
                <td class="auto-style1" colspan="3"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; INTERNET BANKING</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" PostBackUrl="~/Home.aspx" style="font-weight: 700" Text="Home" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%; height: 194px;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: large" Text="Account Number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" style="font-weight: 700; font-size: large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: large" Text="Amount"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" style="font-weight: 700; font-size: large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" style="font-weight: 700" Text="Deposit" />
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: large" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
