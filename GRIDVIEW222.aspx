<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GRIDVIEW222.aspx.cs" Inherits="ADMIN_GRIDVIEW222" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField HeaderText="Catid" />
                <asp:BoundField HeaderText="Cat Name" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
