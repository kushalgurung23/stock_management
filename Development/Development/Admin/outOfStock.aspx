<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="outOfStock.aspx.cs" Inherits="Development.Admin.outOfStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <table class="tbl">
        <tr>
            <td class="tblhead" style="text-align:center">Out of stock items</td>
        </tr>
        <tr>
            <td class="style3">
                <br />
<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
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
<asp:Button ID="itemNameBtn" runat="server" BackColor="Teal" ForeColor="White" OnClick="itemNameBtn_Click" Text="Sort by name (Asc)" />
                <br />
                <br />
<asp:Button ID="stockDateBtn" runat="server" BackColor="Teal" ForeColor="White" OnClick="stockDateBtn_Click" Text="Sort by stock date (Desc)" />
                <br />
                <br />
<asp:Button ID="stockQuantityBtn" runat="server" BackColor="Teal" ForeColor="White" OnClick="stockQuantityBtn_Click" Text="Sort by stock quantity (High-Low)" />
                <br />
                <br />
            </td>
        </tr>
    </table>
<br />

</asp:Content>
