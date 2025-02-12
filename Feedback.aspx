<%@ Page Title="" Language="C#" MasterPageFile="~/USER/UserMaster_Page.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="USER_Feedback" %>

<script runat="server">

    
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>Email ID</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Feedback</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /></td>
            
        </tr>

        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
           
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

