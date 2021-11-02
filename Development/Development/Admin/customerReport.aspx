<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="customerReport.aspx.cs" Inherits="Development.Admin.customerReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <table class="tbl">
        <tr>
            <td class="tblhead" style="text-align:center">Customer Report</td>
        </tr>
        <tr>
            <td class="style3">
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="Teal" Text="Select Customer:"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="member_number" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
</asp:DropDownList>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" ForeColor="Teal" Text="Customer Report:"></asp:Label>
                <br />
<asp:GridView ID="customerReportGridView" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString12 %>" DeleteCommand="DELETE FROM [customer] WHERE [member_number] = @member_number" InsertCommand="INSERT INTO [customer] ([name], [age], [address], [contact_number], [email_address], [member_type]) VALUES (@name, @age, @address, @contact_number, @email_address, @member_type)" SelectCommand="SELECT * FROM [customer]" UpdateCommand="UPDATE [customer] SET [name] = @name, [age] = @age, [address] = @address, [contact_number] = @contact_number, [email_address] = @email_address, [member_type] = @member_type WHERE [member_number] = @member_number">
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

                <br />
            </td>
        </tr>
    </table>
<br />

</asp:Content>
