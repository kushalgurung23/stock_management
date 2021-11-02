<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="addItem.aspx.cs" Inherits="Development.Admin.addItem" %>
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
        .auto-style4 {
            border: solid 1px #ccc;
            padding-left: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <table class="tbl">
        <tr>
            <td class="tblhead">Add Item</td>
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
                        <td class="lbl">Item name :</td>
                        <td>
                            <asp:TextBox ID="itemNameTxt" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            <%-- <asp:RequiredFieldValidator ID="rfvStaffName" runat="server" ControlToValidate="txtname" ErrorMessage="StaffName is required!" ForeColor="Red" SetFocusOnError="true">

                            </asp:RequiredFieldValidator>--%>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Price :</td>
                        <td>
                            <asp:TextBox ID="priceTxt" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            <%--<asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtemail" ErrorMessage="Email is required!" ForeColor="Red" SetFocusOnError="true">

                            </asp:RequiredFieldValidator>--%>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Purchased date :</td>
                        <td>
                            <asp:TextBox ID="purchasedDateTxt" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            <%--  <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtmobile" ErrorMessage="Mobile is required" ForeColor="Red" SetFocusOnError="true">

                            </asp:RequiredFieldValidator>--%>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Manufactured date: </td>
                        <td>
                            <asp:TextBox ID="manufacturedDateTxt" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            <%-- <asp:RequiredFieldValidator ID="rfvQualification" runat="server" ControlToValidate="txtqual" ErrorMessage="Qualification is required!" ForeColor="Red" SetFocusOnError="true">

                            </asp:RequiredFieldValidator>--%>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Description : </td>
                        <td>
                            <asp:TextBox ID="descriptionTxt" runat="server" CssClass="auto-style4" Height="44px" TextMode="MultiLine" Width="161px"></asp:TextBox>
                        </td>
                        <td>
                            <%--<asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtadd" ErrorMessage="Address is required!" ForeColor="Red" SetFocusOnError="true">

                            </asp:RequiredFieldValidator>--%>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Category : </td>
                        <td>
                            <asp:DropDownList ID="categoryDDown" runat="server" CssClass="txt" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="category_id">
                                <asp:ListItem>New</asp:ListItem>
                                <asp:ListItem Value="Regular">Regular</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Expiry date : </td>
                        <td>
                            <asp:TextBox ID="expiryDateTxt" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Quantity : </td>
                        <td>
                            <asp:TextBox ID="quantityTxt" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString19 %>" DeleteCommand="DELETE FROM [category] WHERE [category_id] = @category_id" InsertCommand="INSERT INTO [category] ([name], [description]) VALUES (@name, @description)" SelectCommand="SELECT * FROM [category]" UpdateCommand="UPDATE [category] SET [name] = @name, [description] = @description WHERE [category_id] = @category_id">
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
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:courseworkConnectionString10 %>" DeleteCommand="DELETE FROM [item] WHERE [item_id] = @item_id" InsertCommand="INSERT INTO [item] ([category_id], [name], [description], [price], [purchase_date], [manufactured_date], [expiry_date], [quantity]) VALUES (@category_id, @name, @description, @price, @purchase_date, @manufactured_date, @expiry_date, @quantity)" SelectCommand="SELECT * FROM [item]" UpdateCommand="UPDATE [item] SET [category_id] = @category_id, [name] = @name, [description] = @description, [price] = @price, [purchase_date] = @purchase_date, [manufactured_date] = @manufactured_date, [expiry_date] = @expiry_date, [quantity] = @quantity WHERE [item_id] = @item_id">
                                <DeleteParameters>
                                    <asp:Parameter Name="item_id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="category_id" Type="Int32" />
                                    <asp:Parameter Name="name" Type="String" />
                                    <asp:Parameter Name="description" Type="String" />
                                    <asp:Parameter Name="price" Type="Int32" />
                                    <asp:Parameter DbType="Date" Name="purchase_date" />
                                    <asp:Parameter DbType="Date" Name="manufactured_date" />
                                    <asp:Parameter DbType="Date" Name="expiry_date" />
                                    <asp:Parameter Name="quantity" Type="Int32" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="category_id" Type="Int32" />
                                    <asp:Parameter Name="name" Type="String" />
                                    <asp:Parameter Name="description" Type="String" />
                                    <asp:Parameter Name="price" Type="Int32" />
                                    <asp:Parameter DbType="Date" Name="purchase_date" />
                                    <asp:Parameter DbType="Date" Name="manufactured_date" />
                                    <asp:Parameter DbType="Date" Name="expiry_date" />
                                    <asp:Parameter Name="quantity" Type="Int32" />
                                    <asp:Parameter Name="item_id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                        
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
