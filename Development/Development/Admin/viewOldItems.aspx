<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="viewOldItems.aspx.cs" Inherits="Development.Admin.viewOldItems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <table class="tbl">
        <tr>
            <td class="tblhead" style="text-align:center">List of Old items</td>
        </tr>
        <tr>
            <td class="style3">
                <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="item_id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="item_id" HeaderText="Item ID" InsertVisible="False" ReadOnly="True" SortExpression="item_id" />
            <asp:BoundField DataField="category_id" HeaderText="Category ID" SortExpression="category_id" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            <asp:BoundField DataField="purchase_date" HeaderText="Purchase date" SortExpression="purchase_date" />
            <asp:BoundField DataField="manufactured_date" HeaderText="Manufacture date" SortExpression="manufactured_date" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString13 %>" DeleteCommand="DELETE FROM [item] WHERE [item_id] = @item_id" InsertCommand="INSERT INTO [item] ([category_id], [name], [description], [price], [purchase_date], [manufactured_date], [expiry_date], [quantity]) VALUES (@category_id, @name, @description, @price, @purchase_date, @manufactured_date, @expiry_date, @quantity)" SelectCommand="SELECT item_id, category_id, name, description, price, purchase_date, manufactured_date, expiry_date, quantity FROM item WHERE (purchase_date &lt;= '20170101')" UpdateCommand="UPDATE [item] SET [category_id] = @category_id, [name] = @name, [description] = @description, [price] = @price, [purchase_date] = @purchase_date, [manufactured_date] = @manufactured_date, [expiry_date] = @expiry_date, [quantity] = @quantity WHERE [item_id] = @item_id">
    <DeleteParameters>
        <asp:Parameter Name="item_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="category_id" Type="Int32" />
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="description" Type="String" />
        <asp:Parameter Name="price" Type="Int32" />
        <asp:Parameter DbType="Date" Name="purchase_date" />
        <asp:Parameter DbType="Date" Name="manufactured_date" />
        <asp:Parameter DbType="Date" Name="expiry_date" />
        <asp:Parameter Name="quantity" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="category_id" Type="Int32" />
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="description" Type="String" />
        <asp:Parameter Name="price" Type="Int32" />
        <asp:Parameter DbType="Date" Name="purchase_date" />
        <asp:Parameter DbType="Date" Name="manufactured_date" />
        <asp:Parameter DbType="Date" Name="expiry_date" />
        <asp:Parameter Name="quantity" Type="Int32" />
        <asp:Parameter Name="item_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
                <br />
            </td>
        </tr>
    </table>
    <br />
    </asp:Content>
