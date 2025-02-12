<%@ Page Title="" Language="C#" MasterPageFile="~/USER/UserMaster_Page.master" AutoEventWireup="true" CodeFile="Login_user.aspx.cs" Inherits="USER_Login_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        body {
    margin:0;
    padding:0; 
    font-family:Verdana;
}
.table
{
    background-color:silver;
    border-radius:10px;
    box-shadow:8px 8px 8px #c2c2c2;
    margin-top:80px;
    border-style:outset;
    

}

.bsubmit 
        {
            color:black;
            margin-left:4vw;
            margin-top:2vh;
            padding-bottom:10px;
            padding-top:10px;
            padding-left:15px;
            padding-right:15px;
            border-radius:6px;
            border:1px solid;
            background-color:#ffffff;
        }
        .bsubmit:hover
        {
            color:#ffffff;
            background-color:black;
        }
        .textbox 
        {
            width:70%;
            height: 30px;
            border: 0;
            text-align:left;
            margin-top: 2.5vh;
            margin-left: 0vw;
            border-radius: 20px;
            padding-left:0px;
            padding-right:30px;

        }
        .textbox
        {
            height: 30px;
            border: 0;
            margin-top: 2.5vh;
            margin-left: 4vw;
            border-radius: 20px;
        }
        .textbox
        {
        font-family:'Trebuchet MS','Lucida Sans Unicode','Lucida Handwriting','Lucida Sans',Arial,sans-serif;
        padding-left:1vw;
        font-size:13px;
        }
.tlabel 
{   
    width:50%;
    text-align:center;
    padding-top:10px;
    padding-left:30px;
    margin-right:30px;
}



    </style>
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
                <td>
                    <asp:TextBox ID="txtID" CssClass="textbox" placeholder="Email ID" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td class="tlabel">Password </td>
                <td class="textbox">
                    <asp:TextBox ID="txtPass" placeholder="Password" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan="2" style="text-align:center">
                    <asp:Button ID="Button1" runat="server" CssClass="bsubmit" Text="Login" Height="35px" Width="70px" OnClick="Button1_Click" /></td>
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

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

