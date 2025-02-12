<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Adminmaster.master" AutoEventWireup="true" CodeFile="Userview.aspx.cs" Inherits="ADMIN_Userview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
</asp:Content>

