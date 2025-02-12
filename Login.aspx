<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Login.css" rel="stylesheet" type="text/css" />
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" class="table" style="width:350px; height:300px; margin-top:80px" >
            

            <tr>
                <td colspan="2" style="text-align:center">
                    <asp:Image ID="Image2" runat="server" Width="35px" Height="35px" ImageUrl="~/image/Login1.jpeg"/></td>
                
            </tr>

            <tr>
                <td colspan="2" style="text-align:center; font-size:30px; margin-top:0px">
                    <asp:Label ID="Label1" runat="server" Text="Login" ForeColor="Blue"></asp:Label></td>
            </tr>

            <tr>
                <td class="tlabel">Email ID</td>
                <td class="textbox">
                    <asp:TextBox ID="txtID" placeholder="Email ID" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td class="tlabel">Password </td>
                <td class="textbox">
                    <asp:TextBox ID="txtPass" placeholder="Password" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan="2" style="text-align:center" class="bsubmit">
                    <asp:Button ID="Button1" runat="server" Text="Login" Height="35px" Width="70px" OnClick="Button1_Click" /></td>
            </tr>

            <tr>
                <td colspan="2" style="font-size:12px">
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Create an Account? "></asp:Label><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ADMIN/Sign_Up.aspx" ForeColor="Blue">Sign Up</asp:HyperLink></td>
            </tr>
            <tr>
                <td colspan="2" style="font-size:12px">
                    <br />
                    <asp:Label ID="Label3" runat="server"></asp:Label></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
