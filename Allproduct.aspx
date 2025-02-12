<%@ Page Title="" Language="C#" MasterPageFile="~/USER/UserMaster_Page.master" AutoEventWireup="true" CodeFile="Allproduct.aspx.cs" Inherits="USER_Allproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr >
            <td style="text-align:right; width:1000px  ">
                <asp:Label ID="Label4" runat="server" Text="Search Product:-"  Font-Bold="True" Font-Size="25px"></asp:Label>&nbsp;</td> 
                <td><asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="171px" style="margin-bottom: 0px"></asp:TextBox></td>
               <td> <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" Width="30px" OnClick="ImageButton2_Click" ImageUrl="~/image/Search.jpeg" />
            </td>
        </tr>
    </table>

      
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" RepeatColumns="4" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table style="margin-left:20px">
                <tr>
                    <td style="text-align:center" class="mbtn">
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("Pname") %>' Font-Bold="True" Font-Names="bold" ForeColor="White"></asp:Label></td> 
                </tr>

                <tr>
                    <td style="text-align:center">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Photo") %>' BorderColor="green" BorderWidth="1px" Height="278px" Width="278px" /></td> 
                </tr>

                <tr>
                    <td style="text-align:center" class="mbtn">
                        <asp:Label ID="Label2" runat="server" Text="Price Rs:" Font-Bold="true" Font-Names="Arial" ForeColor="White"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("Price") %>' Font-Bold="true" Font-Names="Arial" ForeColor="White"></asp:Label>
                    </td> 
                </tr>

                <tr>
                    <td align="center">Qauntity
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                        </asp:DropDownList></td> 
                </tr>

                <tr>
                    <td style="text-align:center">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/Addtocart.png" Height="39px" Width="140px" CommandArgument='<%#Eval("Pid") %>' CommandName="Addtocart" /></td> 
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Pid], [Pname], [Price], [Photo], [Quantity] FROM [Product]"></asp:SqlDataSource>
    

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

