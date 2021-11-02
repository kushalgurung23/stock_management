<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="manageUser.aspx.cs" Inherits="Development.Admin.addUser" %>
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
    .auto-style2 {
        width: 430px;
    }
        .auto-style3 {
            width: 419px;
        }
    .auto-style4 {
        width: 321px;
    }
    .auto-style5 {
        color: #008080;
        text-align: right;
        width: 321px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <table class="tbl">
    <tr>
        <td class="tblhead">Manage user details</td>
    </tr>
    <tr>
        <td class="style3"></td>
    </tr>
    <tr>
        <td>
            <table align="center" class="auto-style2">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" ForeColor="Teal" Text="Add new user:"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Full name :</td>
                    <td class="auto-style3">
                        &nbsp;<asp:TextBox ID="fullNameTxt" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                    <td>
                           <%-- <asp:RequiredFieldValidator ID="rfvStaffName" runat="server" ControlToValidate="txtname" ErrorMessage="StaffName is required!" ForeColor="Red" SetFocusOnError="true">

                            </asp:RequiredFieldValidator>--%>
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Contact number :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="contactNumberTxt" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                    <td>
                            <%--<asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtemail" ErrorMessage="Email is required!" ForeColor="Red" SetFocusOnError="true">

                            </asp:RequiredFieldValidator>--%>
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Address :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="addressTxt" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                    <td>
                          <%--  <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtmobile" ErrorMessage="Mobile is required" ForeColor="Red" SetFocusOnError="true">

                            </asp:RequiredFieldValidator>--%>
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Gender : </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="genderDDown" runat="server" CssClass="txt">
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                           <%-- <asp:RequiredFieldValidator ID="rfvQualification" runat="server" ControlToValidate="txtqual" ErrorMessage="Qualification is required!" ForeColor="Red" SetFocusOnError="true">

                            </asp:RequiredFieldValidator>--%>
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Position : </td>
                    <td class="auto-style3">
                            <asp:TextBox ID="positionTxt" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                    <td>
                            <%--<asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtadd" ErrorMessage="Address is required!" ForeColor="Red" SetFocusOnError="true">

                            </asp:RequiredFieldValidator>--%>
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Email Address: </td>
                    <td class="auto-style3">
                            <asp:TextBox ID="emailAddressTxt" runat="server" CssClass="txt" TextMode="Email"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <%--<tr>
                        <td class="lbl">
                            Photo : </td>
                        <td>
                            <asp:FileUpload ID="fileuploadImage" runat="server" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>--%>
                    
                    <tr>
                        <td class="auto-style5">Username:</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="userNameTxt" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            <%--<asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtuname" ErrorMessage="Username is required!" ForeColor="Red" SetFocusOnError="true">

                            </asp:RequiredFieldValidator>--%>
                        </td>
                        <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Password : </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="passwordTxt" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                           <%-- <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtpass" ErrorMessage="Password is required!" ForeColor="Red" SetFocusOnError="true">

                            </asp:RequiredFieldValidator>--%>
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Confirm Password : </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="confirmPassTxt" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ControlToCompare="passwordTxt" ControlToValidate="confirmPassTxt" ErrorMessage="Re-enter correct password." ForeColor="Red"></asp:CompareValidator>
                    </td>
                    <td>
                            <%--<asp:RequiredFieldValidator ID="rfvCpassword" runat="server" ControlToValidate="txtcpass" ErrorMessage="Password should be confirmed!" ForeColor="Red" SetFocusOnError="true">

                            </asp:RequiredFieldValidator>--%>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">New admin account? </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="isAdminDDown" runat="server" CssClass="txt">
                            <asp:ListItem Value="1">Yes</asp:ListItem>
                            <asp:ListItem Value="0">No</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                           <%-- <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtpass" ErrorMessage="Password is required!" ForeColor="Red" SetFocusOnError="true">

                            </asp:RequiredFieldValidator>--%>
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="addButton" runat="server" CssClass="btn" onclick="btnadd_Click" Text="ADD" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString12 %>" DeleteCommand="DELETE FROM [user] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [user] ([name], [username], [email], [password], [contact], [address], [gender], [position], [is_admin]) VALUES (@name, @username, @email, @password, @contact, @address, @gender, @position, @is_admin)" SelectCommand="SELECT * FROM [user]" UpdateCommand="UPDATE [user] SET [name] = @name, [username] = @username, [email] = @email, [password] = @password, [contact] = @contact, [address] = @address, [gender] = @gender, [position] = @position, [is_admin] = @is_admin WHERE [user_id] = @user_id">
                            <DeleteParameters>
                                <asp:Parameter Name="user_id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="username" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                                <asp:Parameter Name="contact" Type="String" />
                                <asp:Parameter Name="address" Type="String" />
                                <asp:Parameter Name="gender" Type="String" />
                                <asp:Parameter Name="position" Type="String" />
                                <asp:Parameter Name="is_admin" Type="Byte" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="username" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                                <asp:Parameter Name="contact" Type="String" />
                                <asp:Parameter Name="address" Type="String" />
                                <asp:Parameter Name="gender" Type="String" />
                                <asp:Parameter Name="position" Type="String" />
                                <asp:Parameter Name="is_admin" Type="Byte" />
                                <asp:Parameter Name="user_id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString9 %>" DeleteCommand="DELETE FROM [user] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [user] ([name], [username], [email], [password], [contact], [address], [gender], [position], [is_admin]) VALUES (@name, @username, @email, @password, @contact, @address, @gender, @position, @is_admin)" SelectCommand="SELECT * FROM [user]" UpdateCommand="UPDATE [user] SET [name] = @name, [username] = @username, [email] = @email, [password] = @password, [contact] = @contact, [address] = @address, [gender] = @gender, [position] = @position, [is_admin] = @is_admin WHERE [user_id] = @user_id">
                            <DeleteParameters>
                                <asp:Parameter Name="user_id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="username" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                                <asp:Parameter Name="contact" Type="String" />
                                <asp:Parameter Name="address" Type="String" />
                                <asp:Parameter Name="gender" Type="String" />
                                <asp:Parameter Name="position" Type="String" />
                                <asp:Parameter Name="is_admin" Type="Byte" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="username" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                                <asp:Parameter Name="contact" Type="String" />
                                <asp:Parameter Name="address" Type="String" />
                                <asp:Parameter Name="gender" Type="String" />
                                <asp:Parameter Name="position" Type="String" />
                                <asp:Parameter Name="is_admin" Type="Byte" />
                                <asp:Parameter Name="user_id" Type="Int32" />
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
                        <asp:Label ID="Label2" runat="server" ForeColor="Teal" Text="Manage user details:"></asp:Label>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="user_id" DataSourceID="SqlDataSource2" GridLines="Horizontal">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="user_id" HeaderText="User ID" InsertVisible="False" ReadOnly="True" SortExpression="user_id" />
                                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                                <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                                <asp:BoundField DataField="contact" HeaderText="Contact" SortExpression="contact" />
                                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                                <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" />
                                <asp:BoundField DataField="is_admin" HeaderText="Is Admin" SortExpression="is_admin" />
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
                        </td>
    </tr>
</table>

</asp:Content>
