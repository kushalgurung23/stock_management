<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="manageCustomer.aspx.cs" Inherits="Development.Admin.addCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">


    .style2
    {
        width: 394px;
    }
    .auto-style2 {
        color: #008080;
        text-align: right;
        height: 27px;
    }
    
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
            <td class="tblhead">Manage Customer Details</td>
        </tr>
        <tr>
            <td class="style3"></td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style2">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Customer name :</td>
                        <td>
                            <asp:TextBox ID="customerNameTxt" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            <%-- <asp:RequiredFieldValidator ID="rfvStaffName" runat="server" ControlToValidate="txtname" ErrorMessage="StaffName is required!" ForeColor="Red" SetFocusOnError="true">

                            </asp:RequiredFieldValidator>--%>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Age :</td>
                        <td>
                            <asp:TextBox ID="ageTxt" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            <%--<asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtemail" ErrorMessage="Email is required!" ForeColor="Red" SetFocusOnError="true">

                            </asp:RequiredFieldValidator>--%>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Address :</td>
                        <td>
                            <asp:TextBox ID="addressTxt" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            <%--  <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtmobile" ErrorMessage="Mobile is required" ForeColor="Red" SetFocusOnError="true">

                            </asp:RequiredFieldValidator>--%>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Contact number : </td>
                        <td>
                            <asp:TextBox ID="contactNumberTxt" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            <%-- <asp:RequiredFieldValidator ID="rfvQualification" runat="server" ControlToValidate="txtqual" ErrorMessage="Qualification is required!" ForeColor="Red" SetFocusOnError="true">

                            </asp:RequiredFieldValidator>--%>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Email address : </td>
                        <td>
                            <asp:TextBox ID="emailTxt" runat="server" CssClass="txt" Height="33px" TextMode="Email" Width="161px"></asp:TextBox>
                        </td>
                        <td>
                            <%--<asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtadd" ErrorMessage="Address is required!" ForeColor="Red" SetFocusOnError="true">

                            </asp:RequiredFieldValidator>--%>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Member type : </td>
                        <td>
                            <asp:DropDownList ID="memberTypeDDown" runat="server" CssClass="txt">
                                <asp:ListItem>New</asp:ListItem>
                                <asp:ListItem Value="Regular">Regular</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="addButton" runat="server" CssClass="auto-style3" onclick="btnadd_Click" Text="ADD" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString19 %>" DeleteCommand="DELETE FROM [customer] WHERE [member_number] = @member_number" InsertCommand="INSERT INTO [customer] ([name], [age], [address], [contact_number], [email_address], [member_type]) VALUES (@name, @age, @address, @contact_number, @email_address, @member_type)" SelectCommand="SELECT * FROM [customer]" UpdateCommand="UPDATE [customer] SET [name] = @name, [age] = @age, [address] = @address, [contact_number] = @contact_number, [email_address] = @email_address, [member_type] = @member_type WHERE [member_number] = @member_number">
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
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="member_number" DataSourceID="SqlDataSource2" GridLines="Horizontal">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="member_number" HeaderText="Member Number" InsertVisible="False" ReadOnly="True" SortExpression="member_number" />
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                        <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                        <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                        <asp:BoundField DataField="contact_number" HeaderText="Contact Number" SortExpression="contact_number" />
                        <asp:BoundField DataField="email_address" HeaderText="Email Address" SortExpression="email_address" />
                        <asp:BoundField DataField="member_type" HeaderText="member_type" SortExpression="member_type" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString12 %>" DeleteCommand="DELETE FROM [customer] WHERE [member_number] = @member_number" InsertCommand="INSERT INTO [customer] ([name], [age], [address], [contact_number], [email_address], [member_type]) VALUES (@name, @age, @address, @contact_number, @email_address, @member_type)" SelectCommand="SELECT * FROM [customer]" UpdateCommand="UPDATE [customer] SET [name] = @name, [age] = @age, [address] = @address, [contact_number] = @contact_number, [email_address] = @email_address, [member_type] = @member_type WHERE [member_number] = @member_number">
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
</asp:Content>
