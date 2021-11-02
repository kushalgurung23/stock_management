<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Development.login" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 480px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p class="auto-style1">
                &nbsp;</p>
            <p class="auto-style1">
                &nbsp;</p>
            <p class="auto-style1">
                &nbsp;</p>
            <p class="auto-style1">
                &nbsp;</p>
            <p class="auto-style1">
                <asp:Label ID="Label4" runat="server" ForeColor="Teal" Text="Trillionaires Stock Management System"></asp:Label>
            </p>
            <p class="auto-style1">
                &nbsp;<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Username" ForeColor="Teal"></asp:Label>
            <asp:TextBox ID="userNameTxt" runat="server" ValidationGroup="loginValidation"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ControlToValidate="userNameTxt" ErrorMessage="Please enter your username" ForeColor="Red" ValidationGroup="loginValidation"></asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password" ForeColor="Teal"></asp:Label>
            <asp:TextBox ID="passwordTxt" runat="server" TextMode="Password" ValidationGroup="loginValidation"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="passwordTxt" ErrorMessage="Please enter password" ForeColor="Red" ValidationGroup="loginValidation"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="loginBtn" runat="server" Text="Login" OnClick="loginBtn_Click" ValidationGroup="loginValidation" BackColor="Teal" ForeColor="White" Width="198px" />
            <br />
            <br />
            <asp:Label ID="messageLbl" runat="server" Text="[LabelMessage]" ForeColor="Blue"></asp:Label>
            <br />
            </p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString7 %>" SelectCommand="SELECT * FROM [user] WHERE (([username] = @username) AND ([password] = @password))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="userNameTxt" Name="username" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="passwordTxt" Name="password" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
