<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Development.Admin.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <table class="tbl">
        <tr>
            <td class="tblhead" style="text-align:center">Profile</td>
        </tr>
        <tr>
            <td class="style3">
                <br />
                <asp:Label ID="Label3" runat="server" ForeColor="Teal" Text="User ID :"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="user_id" DataValueField="email" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:TextBox ID="emailTxt" runat="server" Visible="False"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" ForeColor="Teal" Text="Old Password :"></asp:Label>
                &nbsp;<asp:TextBox ID="oldPasswordTxt" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" ForeColor="Teal" Text="New Password :"></asp:Label>
                <asp:TextBox ID="newPasswordTxt" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" ForeColor="Teal" Text="Confirm Password"></asp:Label>
                <asp:TextBox ID="confirmPasswordTxt" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ControlToCompare="newPasswordTxt" ControlToValidate="confirmPasswordTxt" ErrorMessage="Please re-enter correct password" ForeColor="Red"></asp:CompareValidator>
                <br />
                <br />
                <asp:Button ID="confirmBtn" runat="server" BackColor="Teal" ForeColor="White" OnClick="confirmPayment_Click" Text="Confirm" />
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString12 %>" DeleteCommand="DELETE FROM [user] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [user] ([name], [username], [email], [password], [contact], [address], [gender], [position], [is_admin]) VALUES (@name, @username, @email, @password, @contact, @address, @gender, @position, @is_admin)" SelectCommand="SELECT * FROM [user]" UpdateCommand="UPDATE [user] SET [name] = @name, [username] = @username, [email] = @email, [password] = @password, [contact] = @contact, [address] = @address, [gender] = @gender, [position] = @position, [is_admin] = @is_admin WHERE [user_id] = @user_id">
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
        </tr>
    </table>
    <br />

</asp:Content>
