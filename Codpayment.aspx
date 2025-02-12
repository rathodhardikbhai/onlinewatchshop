<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Codpayment.aspx.cs" Inherits="USER_cod" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <th colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Cash On Delivery"></asp:Label></th>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Frist Name:-"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Last Name:-"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td colspan="2">
                <asp:Label ID="Label4" runat="server" Text="Address:-"></asp:Label><br />
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Payment Now" PostBackUrl="~/USER/Pdf.aspx" /></td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
