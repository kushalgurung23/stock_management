<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="Development.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Category Addition Form"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Category Name"></asp:Label>
        <asp:TextBox ID="categoryNameText" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCategoryName" runat="server" ControlToValidate="categoryNameText" ErrorMessage="Please enter category name." ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
        <asp:TextBox ID="descriptionText" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorDescription" runat="server" ControlToValidate="descriptionText" ErrorMessage="Please enter description." ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString %>" DeleteCommand="DELETE FROM [category] WHERE [category_id] = @category_id" InsertCommand="INSERT INTO [category] ([name], [description]) VALUES (@name, @description)" SelectCommand="SELECT * FROM [category] WHERE ([name] = @name)" UpdateCommand="UPDATE [category] SET [name] = @name, [description] = @description WHERE [category_id] = @category_id">
            <DeleteParameters>
                <asp:Parameter Name="category_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="description" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="categoryNameText" Name="name" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="category_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="#33CC33" Text="[LabelMessage]"></asp:Label>
        <br />
        <asp:Button ID="addCategoryButton" runat="server" Text="Add Category" OnClick="addCategoryButton_Click" style="height: 29px" />
        <br />
    </form>
</body>
</html>
