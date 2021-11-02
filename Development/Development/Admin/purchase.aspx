<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="purchase.aspx.cs" Inherits="Development.Admin.purchase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

                <table class="tbl">
                    <tr>
                        <td class="tblhead" style="text-align:center">Purchase</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <br />
                            <asp:Label ID="Label3" runat="server" ForeColor="Teal" Text="Select Customer :"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="member_number" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
                            <asp:TextBox ID="customerTxt" runat="server" Visible="False"></asp:TextBox>
                            <br />
                            <br />
                <asp:Label ID="Label4" runat="server" ForeColor="Teal" Text="Cart Details :"></asp:Label>
                            <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="cart_id" DataSourceID="SqlDataSource2" GridLines="Horizontal">
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
                            <br />
                            <asp:Label ID="Label5" runat="server" ForeColor="Teal" Text="Total Amount :"></asp:Label>
                            <asp:TextBox ID="totalAmountTxt" runat="server" CssClass="txt"></asp:TextBox>
                            <br />
                            <br />
    <asp:Button ID="confirmPayment" runat="server" BackColor="Teal" ForeColor="White" OnClick="confirmPayment_Click" Text="Confirm Payment" />
                            <br />
                            <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString12 %>" DeleteCommand="DELETE FROM [cart] WHERE [cart_id] = @cart_id" InsertCommand="INSERT INTO [cart] ([member_number], [item_id], [quantity], [line_total], [status]) VALUES (@member_number, @item_id, @quantity, @line_total, @status)" SelectCommand="SELECT * FROM [cart] WHERE (([member_number] = @member_number) AND ([status] = @status))" UpdateCommand="UPDATE [cart] SET [member_number] = @member_number, [item_id] = @item_id, [quantity] = @quantity, [line_total] = @line_total, [status] = @status WHERE [cart_id] = @cart_id">
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
            <asp:ControlParameter ControlID="customerTxt" Name="member_number" PropertyName="Text" Type="Int32" />
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString12 %>" DeleteCommand="DELETE FROM [customer] WHERE [member_number] = @member_number" InsertCommand="INSERT INTO [customer] ([name], [age], [address], [contact_number], [email_address], [member_type]) VALUES (@name, @age, @address, @contact_number, @email_address, @member_type)" SelectCommand="SELECT * FROM [customer]" UpdateCommand="UPDATE [customer] SET [name] = @name, [age] = @age, [address] = @address, [contact_number] = @contact_number, [email_address] = @email_address, [member_type] = @member_type WHERE [member_number] = @member_number" OnSelecting="SqlDataSource1_Selecting">
        <DeleteParameters>
            <asp:Parameter Name="member_number" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="contact_number" Type="String" />
            <asp:Parameter Name="email_address" Type="String" />
            <asp:Parameter Name="member_type" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="contact_number" Type="String" />
            <asp:Parameter Name="email_address" Type="String" />
            <asp:Parameter Name="member_type" Type="String" />
            <asp:Parameter Name="member_number" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

                        </td>
                    </tr>
                </table>
                <br />

</asp:Content>
