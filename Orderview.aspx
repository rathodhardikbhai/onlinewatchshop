<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Adminmaster.master" AutoEventWireup="true" CodeFile="Orderview.aspx.cs" Inherits="ADMIN_Orderview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr >
            <td style="text-align:right; width:1000px  ">
                <asp:Label ID="Label4" runat="server" Text="Search Product:-"  Font-Bold="True" Font-Size="25px"></asp:Label>&nbsp;</td> 
                <td><asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="171px" style="margin-bottom: 0px; border-radius:20px; padding-left:10px"></asp:TextBox></td>
               <td> <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" Width="30px" ImageUrl="~/image/Search.jpeg" OnClick="ImageButton2_Click" />
            </td>
        </tr>

        <tr>
            
            <td>select</td>
            <td >
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Username" DataValueField="Username"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Username] FROM [Order]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /></td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Order] WHERE ([Username] = @Username)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Username" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Orderid" HeaderText="Orderid" SortExpression="Orderid" />
            <asp:BoundField DataField="Sno" HeaderText="Sno" SortExpression="Sno" />
            <asp:BoundField DataField="Pid" HeaderText="Pid" SortExpression="Pid" />
            <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="Orderdate" HeaderText="Orderdate" SortExpression="Orderdate" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
        </Columns>
    
    </asp:GridView>
    </asp:Content>

