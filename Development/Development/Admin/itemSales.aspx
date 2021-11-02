<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="itemSales.aspx.cs" Inherits="Development.Admin.sale" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">


    
    .style3
    {
        height: 19px;
    }
    

    .auto-style3 {
        height: 30px;
        width: 100px;
        padding-left: 8px;
        border: solid 1px #ccc;
        background: #008080;
        margin-top: 5px;
        font-weight: bold;
        font-size: 14px;
        color: #fff;
        border-radius: 4px;
        transition: background 1s ease;
        margin-left: 0px;
    }
            

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <table class="tbl">
        <tr>
            <td class="tblhead">Item Sales</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" ForeColor="Teal" Text="Select Item Category: "></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="category_id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="35px" Width="192px">
                </asp:DropDownList>
                <asp:TextBox ID="categoryTxt" runat="server" Visible="False"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" ForeColor="Teal" Text="Select Item :"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="item_id" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged1">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" ForeColor="Teal" Text="Available Quantity :"></asp:Label>
                &nbsp;<asp:TextBox ID="quantityTxt" runat="server" ReadOnly="True"></asp:TextBox>
            &nbsp;<br />
                <br />
                <asp:Label ID="Label2" runat="server" ForeColor="Teal" Text="Select Quantity:"></asp:Label>
                <asp:TextBox ID="selectQuantityTxt" runat="server" value="1" min="1" TextMode="Number"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" ForeColor="Teal" Text="Price:"></asp:Label>
                <asp:TextBox ID="priceTxt" runat="server" ReadOnly="True"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" ForeColor="Teal" Text="Customer name:"></asp:Label>
                &nbsp;<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="name" DataValueField="member_number">
                </asp:DropDownList>
                <asp:TextBox ID="memberNumberTxt" runat="server" Visible="False"></asp:TextBox>
                <br />
                <br />&nbsp;<asp:Button ID="addButton" runat="server" CssClass="auto-style3" onclick="btnadd_Click" Text="Add to cart" />
                        <br />
                <br />
                <asp:Label ID="Label7" runat="server" ForeColor="Teal" Text="List of cart items:"></asp:Label>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cart_id" DataSourceID="SqlDataSource5" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="cart_id" HeaderText="Cart ID" InsertVisible="False" ReadOnly="True" SortExpression="cart_id" />
                        <asp:BoundField DataField="member_number" HeaderText="Member Number" SortExpression="member_number" />
                        <asp:BoundField DataField="item_id" HeaderText="Item ID" SortExpression="item_id" />
                        <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="line_total" HeaderText="Line Total" SortExpression="line_total" />
                        <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
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
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString13 %>" DeleteCommand="DELETE FROM [cart] WHERE [cart_id] = @cart_id" InsertCommand="INSERT INTO [cart] ([member_number], [item_id], [quantity], [line_total], [status]) VALUES (@member_number, @item_id, @quantity, @line_total, @status)" SelectCommand="SELECT * FROM [cart] WHERE ([status] = @status)" UpdateCommand="UPDATE [cart] SET [member_number] = @member_number, [item_id] = @item_id, [quantity] = @quantity, [line_total] = @line_total, [status] = @status WHERE [cart_id] = @cart_id">
                    <DeleteParameters>
                        <asp:Parameter Name="cart_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="member_number" Type="Int32" />
                        <asp:Parameter Name="item_id" Type="Int32" />
                        <asp:Parameter Name="quantity" Type="Int32" />
                        <asp:Parameter Name="line_total" Type="Int32" />
                        <asp:Parameter Name="status" Type="Byte" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="status" Type="Byte" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="member_number" Type="Int32" />
                        <asp:Parameter Name="item_id" Type="Int32" />
                        <asp:Parameter Name="quantity" Type="Int32" />
                        <asp:Parameter Name="line_total" Type="Int32" />
                        <asp:Parameter Name="status" Type="Byte" />
                        <asp:Parameter Name="cart_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString11 %>" DeleteCommand="DELETE FROM [item] WHERE [item_id] = @item_id" InsertCommand="INSERT INTO [item] ([category_id], [name], [description], [price], [purchase_date], [manufactured_date], [expiry_date], [quantity]) VALUES (@category_id, @name, @description, @price, @purchase_date, @manufactured_date, @expiry_date, @quantity)" SelectCommand="SELECT * FROM [item] WHERE ([category_id] = @category_id)" UpdateCommand="UPDATE [item] SET [category_id] = @category_id, [name] = @name, [description] = @description, [price] = @price, [purchase_date] = @purchase_date, [manufactured_date] = @manufactured_date, [expiry_date] = @expiry_date, [quantity] = @quantity WHERE [item_id] = @item_id">
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
                    <SelectParameters>
                        <asp:ControlParameter ControlID="categoryTxt" Name="category_id" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString11 %>" DeleteCommand="DELETE FROM [category] WHERE [category_id] = @category_id" InsertCommand="INSERT INTO [category] ([name], [description]) VALUES (@name, @description)" SelectCommand="SELECT * FROM [category]" UpdateCommand="UPDATE [category] SET [name] = @name, [description] = @description WHERE [category_id] = @category_id">
                    <DeleteParameters>
                        <asp:Parameter Name="category_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="description" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="category_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString13 %>" SelectCommand="SELECT * FROM [customer]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString12 %>" DeleteCommand="DELETE FROM [cart] WHERE [cart_id] = @cart_id" InsertCommand="INSERT INTO [cart] ([cart_id], [member_number], [item_id], [quantity], [price], [status]) VALUES (@cart_id, @member_number, @item_id, @quantity, @price, @status)" SelectCommand="SELECT * FROM [cart]" UpdateCommand="UPDATE [cart] SET [member_number] = @member_number, [item_id] = @item_id, [quantity] = @quantity, [price] = @price, [status] = @status WHERE [cart_id] = @cart_id">
                    <DeleteParameters>
                        <asp:Parameter Name="cart_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="cart_id" Type="Int32" />
                        <asp:Parameter Name="member_number" Type="Int32" />
                        <asp:Parameter Name="item_id" Type="Int32" />
                        <asp:Parameter Name="quantity" Type="Int32" />
                        <asp:Parameter Name="price" Type="Int32" />
                        <asp:Parameter Name="status" Type="Byte" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="member_number" Type="Int32" />
                        <asp:Parameter Name="item_id" Type="Int32" />
                        <asp:Parameter Name="quantity" Type="Int32" />
                        <asp:Parameter Name="price" Type="Int32" />
                        <asp:Parameter Name="status" Type="Byte" />
                        <asp:Parameter Name="cart_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
    </table>

</asp:Content>
