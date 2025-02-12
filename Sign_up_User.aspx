<%@ Page Title="" Language="C#" MasterPageFile="~/USER/UserMaster_Page.master" AutoEventWireup="true" CodeFile="Sign_up_User.aspx.cs" Inherits="ADMIN_Sign_up_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <table align="center" class="table" style="width:400px; height:300px; background-color:silver; margin-top:50px">
        <tr>
            <td colspan="2" style="text-align:center; font-size:30px">
                <asp:Label ID="Label1" runat="server" Text="Sign Up" ForeColor="Blue"></asp:Label></td>
        </tr>

        <tr>
            <td class="tlabel">Frist Name</td>
            <td class="textbox">
                <asp:TextBox ID="txtFname"  placeholder="First Name" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="tlabel">Last Name</td>
            <td class="textbox">
                <asp:TextBox ID="txtLname"  placeholder="Last Name" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="tlabel">Contact No</td>
            <td class="textbox">
                <asp:TextBox ID="txtContact"  placeholder="Contact No" runat="server"></asp:TextBox>
            </td>
        </tr>


        <tr>
            <td class="tlabel">Email ID</td>
            <td class="textbox">
                <asp:TextBox ID="txtEmail"  placeholder="Email ID" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="tlabel">Password</td>
            <td class="textbox">
                <asp:TextBox ID="txtPassword"  placeholder="Password" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="tlabel">Confirm Password</td>
            <td class="textbox">
                <asp:TextBox ID="txtConPassword"  placeholder="Confirm Password" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="tlabel">Gender</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="70%">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td class="tlabel">Address</td>
            <td class="textbox"> 
                <asp:TextBox ID="txtAddress"  placeholder="Address" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="tlabel">Type</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Width="70%">
                    <asp:ListItem>Select Type</asp:ListItem>
                    <asp:ListItem>USER</asp:ListItem>
                    <asp:ListItem>ADMIN</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        
        <tr>
            <td colspan="2" style="text-align:center" class="bsubmit">
                <asp:Button ID="Button1" runat="server" Text="Sign Up" /></td>
        </tr>

        <tr>
            <td colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Already a Account?"></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ADMIN/Login.aspx" ForeColor="Blue">Login</asp:HyperLink><br />
                <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

