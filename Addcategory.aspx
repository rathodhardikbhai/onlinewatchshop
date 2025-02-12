<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Adminmaster.master" AutoEventWireup="true" CodeFile="Addcategory.aspx.cs" Inherits="ADMIN_Addcategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table align="center" style="border-style:outset; width:450px; height:260px; margin-top:50px">
    <tr>
        <td colspan="2" class="tblhead">
            Add Category</td>
    </tr>
    
        <tbody class="tblbody"> 
    <tr>
        <td class="lbl">
            Category Name:</td>
        <td style="text-align:left; margin-top:5px">
            <asp:TextBox ID="txtname" runat="server" placeholder="Enter Category Name!!!" 
                CssClass="txt" Width="141px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtname" ErrorMessage="Enter Category" 
                ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        
        <td colspan="2" style="text-align:center">
            <asp:Button ID="btnadd" runat="server" BorderColor="#FFFF99" CssClass="btn" 
                style="margin-left: 0px" Text="ADD" Width="70px" 
                Height="30px" OnClick="btnadd_Click" />
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderColor="#333333" BorderWidth="2px" DataKeyNames="Catid" EmptyDataText="No Record to Display" Font-Bold="True"  PageSize="4" Width="257px" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="Category">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Text='<%# Eval("Catname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Catname") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:CommandField CausesValidation="False" HeaderText="Operation" ShowDeleteButton="True" ShowEditButton="True">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:CommandField>
                </Columns>
                <HeaderStyle BorderColor="#333333" BorderWidth="3px" Font-Size="Larger" />
            </asp:GridView>

        </td>
        
    </tr>
        </tbody>
   </table>
</asp:Content>

