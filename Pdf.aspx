<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pdf.aspx.cs" Inherits="USER_Pdf" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .panel {
            background-color:#63BE88;
            margin-left:143px;
            margin-right:143px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style="margin-top:100px">
        <asp:Button ID="Button1" runat="server" Text="Download Invoice" BackColor="Silver" Font-Bold="true" Font-Size="X-Large" Height="49px" OnClick="Button1_Click" />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/USER/Home.aspx" Font-Bold="true" Font-Size="X-Large">Go To Home Page</asp:HyperLink>
        <br /><br />

        <asp:Panel ID="Panel1" runat="server" CssClass="panel">
      
        <table border="1">
            <%--<tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/image/logo.jpeg" Height="150px" Width="150px" /></td>
            </tr>--%>
            <tr style="text-align:center">
                <td class="auto-style1" colspan="2"><h2 style="text-align:center">Retails Invoice</h2></td>
            </tr>

            <tr>
                <td class="auto-style1">
                    Order No:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br /><br />
                    Order Date:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    
                </td>
                <td>
                    USer Name:<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="auto-style1" colspan="2">
                    <table>
                        <tr>
                            <td style="width:50%">Buyer Addres:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                            
                            <td style="width:50%">Seller Address:<br /><br />At.Post-Vadtal TA-Nadiyad Disit-Kheda Gujarat....</td>
                        </tr>
                    </table>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1050px">
                        <Columns>
                            <asp:BoundField DataField="Sno" HeaderText="Sno">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Pid" HeaderText="Product Id">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Pname" HeaderText="Product Nmae">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Price" HeaderText="Price">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Totalprice" HeaderText="Totalprice">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                        </Columns>

                    </asp:GridView>
                </td>
            </tr>

            <tr>
                <td class="auto-style1" colspan="2">Grand Total:<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
            </tr>

            <tr>
                <td align="center" class="auto-style1" colspan="2">This Is PDF</td>
            </tr>
        </table>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
