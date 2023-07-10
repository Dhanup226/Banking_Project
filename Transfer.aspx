<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Transfer.aspx.cs" Inherits="Transfer" %>

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
            width: 245px;
        }
        .auto-style3 {
            width: 248px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: url('1652363361445.jpg'); height: 1285px;">
    
        <table style="width: 100%; height: 200px;">
            <tr>
                <td colspan="3"><strong><span class="auto-style1">&nbsp;<asp:Button ID="Button2" runat="server" PostBackUrl="~/Home.aspx" Text="Home" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; INTERNET BANKING</span></strong>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: large" Text="From Account Number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" style="font-weight: 700; font-size: large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: large" Text="To Account Number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" style="font-weight: 700; font-size: large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%; height: 206px;">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: large" Text="Amount"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" style="font-weight: 700; font-size: large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: 700; font-size: large" Text="Transfer" />
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" style="font-weight: 700; font-size: large" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
