<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="addCategory.aspx.cs" Inherits="Development.Admin.addCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 160px;
            border: solid 1px #ccc;
            padding-left: 5px;
        }
        .auto-style5 {
            height: 27px;
        }
    .auto-style6 {
        border: 1px solid #ccc;
        padding-left: 5px;
    }
        .auto-style8 {
        color: #008080;
        text-align: right;
        height: 88px;
    }
    .auto-style9 {
        height: 88px;
    }
        .auto-style11 {
            height: 63px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead" style="text-align:center">
                ADD Category</td>
        </tr>
        <tr>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style2">
                    <tr>
                        <td>
                        &nbsp;</td>
                        <td>
                        &nbsp;</td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            Category Name :</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="categoryNameTxt" runat="server" CssClass="auto-style6" Height="22px"></asp:TextBox>
                        </td>
                        <td class="auto-style9">
                            <%-- <asp:RequiredFieldValidator ID="rfvStaffName" runat="server" ControlToValidate="txtname" ErrorMessage="StaffName is required!" ForeColor="Red" SetFocusOnError="true">

                            </asp:RequiredFieldValidator>--%>
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                        <td class="auto-style9">
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            Description :</td>

                        <td class="auto-style11">
                            <%--<asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtemail" ErrorMessage="Email is required!" ForeColor="Red" SetFocusOnError="true">

                            </asp:RequiredFieldValidator>--%>
                            <a href="addCategory.aspx">addCategory.aspx</a><asp:TextBox ID="descriptionTxt" runat="server" CssClass="auto-style6" Height="41px" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td class="auto-style11">
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                    
                        <td>
                        &nbsp;</td>
                        <td>
                            <asp:Button ID="btnadd" runat="server" CssClass="btn" Text="ADD" 
                                onclick="btnadd_Click" />
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                        &nbsp;</td>
                        <td>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString14 %>" DeleteCommand="DELETE FROM [category] WHERE [category_id] = @category_id" InsertCommand="INSERT INTO [category] ([name], [description]) VALUES (@name, @description)" SelectCommand="SELECT * FROM [category]" UpdateCommand="UPDATE [category] SET [name] = @name, [description] = @description WHERE [category_id] = @category_id">
                                <DeleteParameters>
                                    <asp:Parameter Name="category_id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="name" Type="String" />
                                    <asp:Parameter Name="description" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="name" Type="String" />
                                    <asp:Parameter Name="description" Type="String" />
                                    <asp:Parameter Name="category_id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                        </td>
                        <td class="auto-style5">
                            &nbsp;</td>
                        <td class="auto-style5">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>
