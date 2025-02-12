<%@ Page Language="C#" AutoEventWireup="true" CodeFile="paymentdemo.aspx.cs" Inherits="USER_paymentdemo" %>

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
                <td colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="COD" />
                    <asp:Button ID="Button2" runat="server" Text="Card" />
                    <asp:Button ID="Button3" runat="server" Text="Wallate" />
                </td>
            </tr>

            <tr>
                <td>
                    <%--FRIST TABLE--%>
                    <div id="COD">
                    <table>
                        <tr>
                            <td colspan="2">COD Payment</td>
                        </tr>
                        <tr>
                            <td>Frist name</td>
                            <td>Text Box</td>
                        </tr>

                        <tr>
                            <td>Last name</td>
                            <td>Text box</td>
                        </tr>
                        
                        <tr>
                            <td>Address</td>
                            <td>Text Box</td>
                        </tr>

                        <tr>
                            <td colspan="2">Button</td>
                        </tr>
                    </table>
                    </div>
                </td>

                <%--SECOND TABLE--%>
                <td>
                    <div id="CARD">
                    <table>
                        <tr>
                            <td colspan="2">CARD PAYMENT</td>
                        </tr>
                        <tr>
                            <td>Frist name</td>
                            <td>Text Box</td>
                        </tr>

                        <tr>
                            <td>Last name</td>
                            <td>Text box</td>
                        </tr>
                        
                        <tr>
                            <td>Address</td>
                            <td>Text Box</td>
                        </tr>

                        <tr>
                            <td colspan="2">Button</td>
                        </tr>
                    </table>
                        </div>
                </td>

                <%--THIRD TABLE--%>
                <td>
                    <div id="WALLATE">
                    <table>
                        <tr>
                            <td colspan="2">WALLATE PAYMENT</td>
                        </tr>
                        <tr>
                            <td>Frist name</td>
                            <td>Text Box</td>
                        </tr>

                        <tr>
                            <td>Last name</td>
                            <td>Text box</td>
                        </tr>
                        
                        <tr>
                            <td>Address</td>
                            <td>Text Box</td>
                        </tr>

                        <tr>
                            <td colspan="2">Button</td>
                        </tr>
                    </table>
                  </div>
                </td>

            </tr>
        </table>
    </div>




        <div>

        </div>
    </form>
</body>
</html>
