<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Adminmaster.master" AutoEventWireup="true" CodeFile="Addquantity.aspx.cs" Inherits="ADMIN_Addquantity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="border-style:outset; width:450px; height:260px; margin-top:50px">
        <tr>
        <td colspan="2" class="tblhead">
            ADD QUANTITY PAGE</td>
    </tr>
    <tr>
        <td class="lbl">
            Select Item:</td>
        <td align="LEFT">
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            ADD Quantity:</td>
        <td style="text-align: left"  >
            <asp:TextBox ID="txtquan" runat="server" placeholder="Enter Quantity!!!" 
                CssClass="txt" Width="100px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtquan" ErrorMessage="Enter Quantity" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        
        <td align="center" colspan="2">
            <asp:Button ID="Button9" runat="server" CssClass="btn" 
                Text="ADD " Width="70px" Height="30px" OnClick="Button9_Click" /><br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>

        <tr>
            <td colspan="2" style="text-align:center" align="center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                 BackColor="White" BorderColor="#999999" 
                BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                GridLines="Vertical" Width="645px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="Pname" HeaderText="ITEM NAME" 
                        SortExpression="INAME" />
                    <asp:BoundField DataField="Quantity" HeaderText="TOTAL QUANTITY" 
                        SortExpression="QNT" />
                    <asp:BoundField DataField="Pcategory" HeaderText="AVAILABLE QUANTITY" 
                        SortExpression="AQNT" />
                    <asp:BoundField DataField="Price" HeaderText="SELL QUANTITY" 
                        SortExpression="SQNT" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </td>
        </tr>
    </table>
</asp:Content>

