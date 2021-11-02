<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="viewItemsQuantity.aspx.cs" Inherits="Development.Admin.viewAllItems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">

    
    .style3
    {
        height: 19px;
    }
    

    .style2
    {
        width: 394px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <table class="tbl">
        <tr>
            <td class="tblhead">Items Quantity</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" ForeColor="Teal" Text="Select Item: "></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="quantity" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="35px" Width="192px"></asp:DropDownList>
     <br />

    &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString11 %>" DeleteCommand="DELETE FROM [item] WHERE [item_id] = @item_id" InsertCommand="INSERT INTO [item] ([category_id], [name], [description], [price], [purchase_date], [manufactured_date], [expiry_date], [quantity]) VALUES (@category_id, @name, @description, @price, @purchase_date, @manufactured_date, @expiry_date, @quantity)" SelectCommand="SELECT * FROM [item]" UpdateCommand="UPDATE [item] SET [category_id] = @category_id, [name] = @name, [description] = @description, [price] = @price, [purchase_date] = @purchase_date, [manufactured_date] = @manufactured_date, [expiry_date] = @expiry_date, [quantity] = @quantity WHERE [item_id] = @item_id">
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
                <asp:Label ID="Label2" runat="server" ForeColor="Teal" Text="Total Quantity:"></asp:Label>
<asp:TextBox ID="itemQuantityTxt" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>

</asp:Content>
