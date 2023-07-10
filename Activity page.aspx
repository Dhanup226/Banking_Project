<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Activity page.aspx.cs" Inherits="Activity_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            height: 82px;
            color: #FF3300;
        }
        .auto-style2 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div aria-multiline="False" style="background-image: url('1652363361445.jpg'); height: 1264px;">
    
        <table style="width: 100%; height: 158px;">
            <tr>
                <td class="auto-style1" colspan="5"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; INTERNET BANKING</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button6" runat="server" CssClass="auto-style2" PostBackUrl="~/Home.aspx" style="font-weight: 700" Text="Home" Width="116px" />
                </td>
                <td>
                    <asp:Button ID="Button7" runat="server" CssClass="auto-style2" PostBackUrl="~/Customers Records.aspx" style="font-weight: 700" Text="Customers " />
                </td>
                <td>
                    <asp:Button ID="Button8" runat="server" CssClass="auto-style2" PostBackUrl="~/Deposit Records.aspx" style="font-weight: 700" Text="Deposit Records" />
                </td>
                <td>
                    <asp:Button ID="Button9" runat="server" CssClass="auto-style2" PostBackUrl="~/Transfer Records.aspx" style="font-weight: 700" Text="Transfer Records" />
                </td>
                <td>
                    <asp:Button ID="Button10" runat="server" CssClass="auto-style2" PostBackUrl="~/Withdrawal Records.aspx" style="font-weight: 700" Text="Withdrawal Records" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
