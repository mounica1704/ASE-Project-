<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="frmMakeOrderPayment.aspx.cs" Inherits="Inventory_frmMakeOrderPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <table>
<tr>
<td>
</td>
</tr>
</table> 
        <br />    <table>
<tr>
<td>
</td>
</tr>
</table> 
        <br />    <table>
<tr>
<td>
</td>
</tr>
</table> 
        <br />    <table>
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

                <asp:GridView ID="gvOrderCost" DataKeyNames="UserOrderID" runat="server" CssClass="EU_DataTable"
                    AutoGenerateColumns="false" HeaderStyle-BackColor="#61A6F8"
                    ShowFooter="true" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="White" OnRowCommand="gvOrderCost_RowCommand">
                    <Columns>

                        <asp:TemplateField>
                            <HeaderTemplate>Total Cost</HeaderTemplate>
                            <ItemTemplate>
                                <asp:TextBox ID="txtCost" runat="server" Text='<%#Eval("TotalCost") %>' /></ItemTemplate>
                        </asp:TemplateField>
                       

 

                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
    <table>
<tr>
<td><asp:Label ID="lblMsg" Visible="false"  runat="server" ForeColor="#FF0000"   Font-Bold="true" Font-Names="Verdana" Font-Size="X-Small" ></asp:Label>  </td>
</tr>
</table>
</asp:Content>

