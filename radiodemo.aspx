<%@ Page Language="C#" AutoEventWireup="true" CodeFile="radiodemo.aspx.cs" Inherits="USER_radiodemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Text="Option11111" Value="cod.aspx"></asp:ListItem>
            <asp:ListItem Text="Option22222" Value="card.aspx"></asp:ListItem>

        </asp:RadioButtonList>
        <asp:Button ID="Button1" runat="server" Text="Order Now" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
