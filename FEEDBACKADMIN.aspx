<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Adminmaster.master" AutoEventWireup="true" CodeFile="FEEDBACKADMIN.aspx.cs" Inherits="USER_FEEDBACKADMIN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Emailid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Emailid" HeaderText="Emailid" ReadOnly="True" SortExpression="Emailid" />
            <asp:BoundField DataField="Feedback" HeaderText="Feedback" SortExpression="Feedback" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
</asp:Content>

