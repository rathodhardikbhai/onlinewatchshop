<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Adminmaster.master" AutoEventWireup="true" CodeFile="Addproduct.aspx.cs" Inherits="ADMIN_Addproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <style>
            .image {
            width:100px;
            height:100px;
        }
        </style>
     <div>      
    <table align="center" style="border-style:outset; width:450px; height:260px; margin-top:50px">
        <tr class="tblhead">
            <td colspan="2" style="text-align:center">Add Product</td>
        </tr>

        <tr class="lbl">
            <td>Category</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Catname" DataValueField="Catname" ></asp:DropDownList>
                
            </td>
        </tr>

        <tr class="lbl">
            <td>Product Name</td>
            <td>
                <asp:TextBox ID="txtPname" runat="server"></asp:TextBox></td>
        </tr>

        <tr class="lbl">
            <td>Product Des</td>
            <td>
                <asp:TextBox ID="txtPdec" runat="server" TextMode="MultiLine"></asp:TextBox></td>
        </tr>

        <tr class="lbl">
            <td>Product Price(Rs)</td>
            <td>
                <asp:TextBox ID="txtPprice" runat="server"></asp:TextBox></td>
        </tr>

        <tr class="lbl">
            <td>Product Quantity</td>
            <td>
                <asp:TextBox ID="txtPquantity" runat="server"></asp:TextBox></td>
        </tr>

        <tr class="lbl">
            <td>Image</td>
            <td>
                <asp:FileUpload ID="imageUpload" runat="server" /></td>
        </tr>

        <tr>
            <td colspan="2" style="text-align:center">
                <asp:Button ID="btnAddproduct" runat="server" Text="Add Product" CssClass="btn" OnClick="btnAddproduct_Click" /></td>
            
        </tr>

        <tr>
            <td colspan="2" style="text-align:center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Pid" DataSourceID="SqlDataSource2" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" AllowPaging="True" PageSize="5">
                    <Columns>
                        <asp:BoundField DataField="Pid" HeaderText="Pid" InsertVisible="False" ReadOnly="True" SortExpression="Pid" />
                        <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                        <asp:BoundField DataField="Pcategory" HeaderText="Pcategory" SortExpression="Pcategory" />
                        <%--<asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" />--%>
                        <asp:ImageField DataImageUrlField="Photo" HeaderText="Product Image" ControlStyle-CssClass="image"><ItemStyle HorizontalAlign="Center" Height="100px" Width="100px" /></asp:ImageField>
                        <asp:CommandField CausesValidation="False" HeaderText="Operation" ShowDeleteButton="True" ShowEditButton="True">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:CommandField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
            </td>
            
        </tr>
    </table>
    </div>
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
    </div>
</asp:Content>

