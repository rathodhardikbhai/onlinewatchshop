<%@ Page Title="" Language="C#" MasterPageFile="~/USER/UserMaster_Page.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="USER_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .image {
            width:150px;
            height:150px;
            border-radius:100px;
        }
    </style>
    <table>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td>
                
            </td>
        </tr>

        <tr>
            <td>
                <table>
                    <tr>
                        <td colspan="2">(1)</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Image ID="Image1" CssClass="image" runat="server" ImageUrl="~/Image1/123.jpeg" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            </td>
            <td></td>
            <td></td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

