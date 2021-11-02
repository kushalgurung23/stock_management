<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="customerNotBought.aspx.cs" Inherits="Development.Admin.customerNotBought" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <table class="tbl">
        <tr>
            <td class="tblhead" style="text-align:center">List of customers with no purchases in last 31 days:</td>
        </tr>
        <tr>
            <td class="style3">
                <br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="member_number" DataSourceID="SqlDataSource1" GridLines="Horizontal">
    <Columns>
        <asp:BoundField DataField="member_number" HeaderText="Member Number" InsertVisible="False" ReadOnly="True" SortExpression="member_number" />
        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
        <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
        <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
        <asp:BoundField DataField="contact_number" HeaderText="Contact Number" SortExpression="contact_number" />
        <asp:BoundField DataField="email_address" HeaderText="Email Address" SortExpression="email_address" />
        <asp:BoundField DataField="member_type" HeaderText="Member Type" SortExpression="member_type" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString12 %>" SelectCommand="SELECT member_number, name, age, address, contact_number, email_address, member_type FROM customer WHERE (member_number NOT IN (SELECT s.member_number FROM sales AS s INNER JOIN customer AS c ON s.member_number = c.member_number AND s.billing_date &gt;= GETDATE() - 31 GROUP BY s.member_number))"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
<br />

</asp:Content>
