<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cardpayment.aspx.cs" Inherits="placeorder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="payment.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="table" style="border-style:outset; margin-top:100px" align="center" >
            <tr>
                <td colspan="2" style="text-align:center">
                    <asp:Label ID="Label1" runat="server" Text="Card Details" Font-Bold="true" Font-Size="X-Large"></asp:Label></td>
            </tr>

            <tr>
                <td>
                    <asp:Label CssClass="tlabel" ID="Label2" runat="server" Text="First Name"></asp:Label><br />
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" placeholder="First Name"></asp:TextBox></td>
                <td>
                    <asp:Label CssClass="tlabel" ID="Label3" runat="server" Text="Last Name"></asp:Label><br />
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" placeholder="Last Name"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:Label CssClass="tlabel" ID="Label4" runat="server" Text="Card Number"></asp:Label><br /><table style="width:128px"><tr><td style="width:100px">
                        <asp:TextBox ID="TextBox3" CssClass="textbox" runat="server" placeholder="1234 1234 1234 1234" Width="217px"></asp:TextBox></td>
                        <td>
                        <asp:Image ID="Image1" runat="server" Height="41px" ImageUrl="~/image/atmlogo.jpg" Width="94px" />
                        </td></tr></table></td>
            </tr>

            <tr>
                <td>
                    <asp:Label CssClass="tlabel" ID="Label5" runat="server" Text="Expiry"></asp:Label><br /><asp:TextBox ID="TextBox4" CssClass="textbox" runat="server" placeholder="MM/YY"></asp:TextBox></td>
                <td>
                    <asp:Label CssClass="tlabel" ID="Label6" runat="server" Text="CVC"></asp:Label><br /><asp:TextBox ID="TextBox5" CssClass="textbox" runat="server" placeholder="CVC"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:Label CssClass="tlabel" ID="Label7" runat="server" Text="Address"></asp:Label><br /><asp:TextBox ID="TextBox6" CssClass="textbox" runat="server" TextMode="MultiLine" placeholder="Your Address......" Width="261px"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan="2" style="text-align:center">
                    <asp:Button ID="Button1" CssClass="bsubmit" runat="server" Text="Pay Now" Font-Bold="true" Font-Size="X-Large" OnClick="Button1_Click" /></td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="true" ForeColor="Red" HeaderText="Fix The Following Error" />
                </td>
            </tr>

            <tr style="text-decoration:none">
                <td style="text-align:left">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="~/USER/Addtocart.aspx" Font-Overline="False" Font-Underline="False">Previous Page</asp:HyperLink></td>
                <td style="text-align:right">
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" NavigateUrl="~/USER/Home.aspx" EnableViewState="False" Font-Strikeout="False" Font-Underline="False">Home Page</asp:HyperLink></td>
            </tr> 
        </table>
    </div>
    </form>
</body>
</html>
