<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addtocart.aspx.cs" Inherits="Addtocart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .btnorder
       {
         background:green;
         height:40px;
         width:200px;
         font-weight:bold;
         color:#ffffff;
         font-size:medium;
         cursor:pointer;
        }

       .btnorder:hover 
       {
         background:#63BE88;
         height:40px;
         width:200px;
         font-weight:bold;
         color:black;
         transition: background-color 0.6s ease;  cursor:pointer;
       }
        .image {
            width:250px;
            height:250px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin:0 auto" align="center">
    <h2 style="text-decoration:underline overline; color:#5f98f3">You Have Following Product In Your Cart</h2>

        <br /><br />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="true" Font-Size="X-Large" NavigateUrl="~/USER/Home.aspx">Continue Shopping</asp:HyperLink>
        <br />
        <br />
        Order id:-<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        Order date:-<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <asp:GridView ID="GridView1" style="margin-top:0px; background-color:#63BE88" runat="server" AutoGenerateColumns="False" BorderWidth="5px" EmptyDataText="No Product Available in Shopping Cart" Font-Bold="True" Height="257px" ShowFooter="True" Width="1100px" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="Sno" HeaderText="Sr No"><ItemStyle HorizontalAlign="Center" /></asp:BoundField>
                <asp:BoundField DataField="Pid" HeaderText="Prodect Id"><ItemStyle HorizontalAlign="Center" /></asp:BoundField>
                <asp:ImageField DataImageUrlField="Photo" HeaderText="Product Image" ControlStyle-CssClass="image"><ItemStyle HorizontalAlign="Center" Height="100px" Width="100px" /></asp:ImageField>
                <asp:BoundField DataField="Pname" HeaderText="Product Name"><ItemStyle HorizontalAlign="Center" /></asp:BoundField>
                <asp:BoundField DataField="Price" HeaderText="Price"><ItemStyle HorizontalAlign="Center" /></asp:BoundField>
                <asp:BoundField DataField="Quantity" HeaderText="Quantity"><ItemStyle HorizontalAlign="Center" /></asp:BoundField>
                <asp:BoundField DataField="Totalprice" HeaderText="Total Price"><ItemStyle HorizontalAlign="Center" /></asp:BoundField>
                <asp:CommandField  DeleteText="Remove" ShowDeleteButton="true" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" CellSpacing="10" Font-Bold="True" RepeatDirection="Horizontal">
            <asp:ListItem Text="COD" Value="Codpayment.aspx"></asp:ListItem>
            <asp:ListItem Text="CARD" Value="CardPayment.aspx"></asp:ListItem>        
        </asp:RadioButtonList>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Selected One" ForeColor="Red"></asp:RequiredFieldValidator>

        <br />
        <asp:Button ID="Button1" CssClass="btnorder" runat="server" Text="Order Now" Font-Bold="true" Font-Size="Large" Height="46px" Width="135px" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
