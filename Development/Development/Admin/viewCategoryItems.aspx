<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="viewCategoryItems.aspx.cs" Inherits="Development.Admin.viewItems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">

    
    .style3
    {
        height: 19px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead">Category Items</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" ForeColor="Teal" Text="Select Category: "></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="category_id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="35px" Width="192px">
                </asp:DropDownList>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" ForeColor="Teal" Text="List of Items:"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="item_id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                    <Columns>
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString12 %>" SelectCommand="SELECT * FROM [item] WHERE ([category_id] = @category_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="categoryItemsTxt" Name="category_id" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString11 %>" DeleteCommand="DELETE FROM [category] WHERE [category_id] = @category_id" InsertCommand="INSERT INTO [category] ([name], [description]) VALUES (@name, @description)" SelectCommand="SELECT * FROM [category]" UpdateCommand="UPDATE [category] SET [name] = @name, [description] = @description WHERE [category_id] = @category_id">
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
                <asp:TextBox ID="categoryItemsTxt" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
