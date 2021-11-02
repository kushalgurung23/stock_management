<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="noItemSold.aspx.cs" Inherits="Development.Admin.noItemSold" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <table class="tbl">
        <tr>
            <td class="tblhead" style="text-align:center">List of items unsold in last 31 days:</td>
        </tr>
        <tr>
            <td class="style3">
                <br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="item_id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
    <Columns>
        <asp:BoundField DataField="item_id" HeaderText="Item ID" InsertVisible="False" ReadOnly="True" SortExpression="item_id" />
        <asp:BoundField DataField="category_id" HeaderText="Category ID" SortExpression="category_id" />
        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
        <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
        <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
        <asp:BoundField DataField="purchase_date" HeaderText="Purchase date" SortExpression="purchase_date" />
        <asp:BoundField DataField="manufactured_date" HeaderText="Manufactured date" SortExpression="manufactured_date" />
        <asp:BoundField DataField="expiry_date" HeaderText="Expiry date" SortExpression="expiry_date" />
        <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#333333" />
    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F7F7F7" />
    <SortedAscendingHeaderStyle BackColor="#487575" />
    <SortedDescendingCellStyle BackColor="#E5E5E5" />
    <SortedDescendingHeaderStyle BackColor="#275353" />
</asp:GridView>
                <br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString12 %>" SelectCommand="SELECT item_id, category_id, name, description, price, purchase_date, manufactured_date, expiry_date, quantity FROM item WHERE (item_id NOT IN (SELECT i.item_id FROM item AS i INNER JOIN sales AS s ON i.item_id = s.item_id AND s.billing_date &gt;= GETDATE() - 31 GROUP BY i.item_id))"></asp:SqlDataSource>
                <br />
                <br />
            </td>
        </tr>
    </table>
<br />

</asp:Content>
