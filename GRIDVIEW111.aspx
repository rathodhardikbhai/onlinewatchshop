<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GRIDVIEW111.aspx.cs" Inherits="ADMIN_GRIDVIEW111" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Catid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Catid" HeaderText="Catid" InsertVisible="False" ReadOnly="True" SortExpression="Catid" />
                <asp:BoundField DataField="Catname" HeaderText="Catname" SortExpression="Catname" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkSelect" runat="server" AutoPostBack="true" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            
           <%-- <EmptyDataTemplate>
                <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Eval("Catname") %>' />
            </EmptyDataTemplate>--%>
        </asp:GridView>
        
        <asp:Button ID="Button1" runat="server" Text="Tranfer" OnClick="Button1_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
