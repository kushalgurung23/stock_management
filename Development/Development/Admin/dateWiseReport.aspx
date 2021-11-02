<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="dateWiseReport.aspx.cs" Inherits="Development.Admin.dateWiseReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <table class="tbl">
        <tr>
            <td class="tblhead" style="text-align:center">Date wise sales report
            </td>
        </tr>
        <tr>
            <td class="style3">
                            <asp:Label ID="Label3" runat="server" ForeColor="Teal" Text="Date :"></asp:Label>
                &nbsp;<asp:Button ID="selectDateBtn" runat="server" BackColor="Teal" ForeColor="White" OnClick="selectDateBtn_Click" Text="Click to select date" />
                <br />
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
                <br />
                <asp:TextBox ID="selectDateTxt" runat="server" ReadOnly="True"></asp:TextBox>
                <br />
                <br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="sales_id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="sales_id" HeaderText="Sales ID" InsertVisible="False" ReadOnly="True" SortExpression="sales_id" />
                        <asp:BoundField DataField="member_number" HeaderText="Member Number" SortExpression="member_number" />
                        <asp:BoundField DataField="item_id" HeaderText="Item ID" SortExpression="item_id" />
                        <asp:BoundField DataField="total_quantity" HeaderText="Total Quantity" SortExpression="total_quantity" />
                        <asp:BoundField DataField="total_amount" HeaderText="Total Amount" SortExpression="total_amount" />
                        <asp:BoundField DataField="billing_date" HeaderText="Billing date" SortExpression="billing_date" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString12 %>" SelectCommand="SELECT * FROM [sales] WHERE ([billing_date] = @billing_date)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="selectDateTxt" DbType="Date" Name="billing_date" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br /></td>
        </tr>
    </table>
    <br />

</asp:Content>
