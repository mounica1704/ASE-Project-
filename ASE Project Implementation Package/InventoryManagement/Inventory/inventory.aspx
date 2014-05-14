<%@ Page Title="AdminLogin" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="inventory.aspx.cs" Inherits="inventory" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <table>
<tr>
<td>
</td>
</tr>
</table> 
        <br />
    <table>
<tr>
<td>
</td>
</tr>
</table> 
        <br />
    <table>
<tr>
<td>
</td>
</tr>
</table> 
        <br />
    <table>
<tr>
<td>
</td>
</tr>
</table> 
        <br />
        <table>
<tr>
<td>
</td>
</tr>
</table> 
        <br />
    <table>
<tr>
<td>
    <h1>Search Product</h1>
</td>
</tr>
</table> 
        <br />

    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>vendor</asp:ListItem>
        <asp:ListItem>item</asp:ListItem>
        <asp:ListItem>productNumber</asp:ListItem>
    </asp:DropDownList>&nbsp &nbsp
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />&nbsp &nbsp&nbsp;&nbsp;&nbsp;
       
        <br />
    <br />

    <br />
    <%--<div id="bookurl" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>--%>
    <asp:GridView ID="gvDetails" DataKeyNames="ProductID" runat="server" CssClass="EU_DataTable"
        AutoGenerateColumns="false" HeaderStyle-BackColor="#61A6F8"
        ShowFooter="true" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="White" OnRowCommand="gvDetails_RowCommand">
        <Columns>
             <asp:TemplateField>
                <HeaderTemplate>Select</HeaderTemplate>
                <ItemTemplate>
                    <asp:RadioButton ID="rbSelector" runat="server" OnCheckedChanged="rbSelector_CheckedChanged"
                                AutoPostBack="true" /></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>Product Name</HeaderTemplate>
                <ItemTemplate>
                    <asp:Literal ID="txtProductName" runat="server" Text='<%#Eval("ProductName") %>' /></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>Product Description</HeaderTemplate>
                <ItemTemplate>
                    <asp:Literal ID="txtProductDescr" runat="server" Text='<%#Eval("ProductDescription") %>' /></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>Product Cost</HeaderTemplate>
                <ItemTemplate>
                    <asp:Literal ID="txtCost" runat="server" Text='<%#Eval("Cost") %>' /></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>Available Qty</HeaderTemplate>
                <ItemTemplate>
                    <asp:Literal ID="txtAvailableQuantity" runat="server" Text='<%#Eval("AvailableQuantity") %>' /></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>Supplier Name</HeaderTemplate>
                <ItemTemplate>
                    <asp:Literal ID="txtSupplierName" runat="server" Text='<%#Eval("SupplierName") %>' /></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>Order Qty</HeaderTemplate>
                <ItemTemplate>
                    <asp:TextBox ID="txtQty" runat="server" />
                    <asp:RequiredFieldValidator runat="server" ID="rfQty" ControlToValidate="txtQty"></asp:RequiredFieldValidator>


                </ItemTemplate>

            </asp:TemplateField>


            <asp:TemplateField>
                <HeaderTemplate>Order</HeaderTemplate>
                <ItemTemplate>
                    <asp:LinkButton Text="Order" CommandArgument='<%#Eval("ProductID") %>' CausesValidation="false" ID="btnPlaceOrder" CommandName="btnPlaceOrder" runat="server"  /></ItemTemplate>
            </asp:TemplateField>


        </Columns>
    </asp:GridView>

</asp:Content>
