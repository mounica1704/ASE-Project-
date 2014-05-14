<%@ Page Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="frmManageUserOrders.aspx.cs" Inherits="Admin_frmManageUserOrders" Title="Manage Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
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
</td>
</tr>
</table> 
        <br />
<table>
<tr>
<td><h3>View Orders</h3>
</td>
</tr>
</table> 
<table style="border:1px; border-color:Blue; border-style:solid; width: 275px;">
<tr style="background-color:Transparent">
<td><asp:GridView ID="GVManageOrders" Width="100" CssClass="EU_DataTable" runat="server" ShowFooter="true" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Bold="True" Font-Size="Small" EmptyDataText="No Data Avaliable" OnRowEditing="GVManageOrders_RowEditing" OnRowCancelingEdit="GVManageOrders_RowCancelingEdit" OnRowUpdating="GVManageOrders_RowUpdating" OnRowDataBound="GVManageOrders_RowDataBound" OnRowCommand="GVManageOrders_RowCommand">
<Columns>

<asp:BoundField HeaderText="UserOrderId" ReadOnly="true" Visible="false"  DataField="UserOrderId"/> 
<asp:BoundField HeaderText="UserName" ReadOnly="true" Visible="false"  DataField="UserName" />
<asp:BoundField HeaderText="Order Date" ReadOnly="true"  DataField="UserOrderDate" />
<asp:BoundField HeaderText="Status" ReadOnly="true"  DataField="OrderStatus" />

  <asp:TemplateField HeaderText="Payment Done" >
    <ItemTemplate><%# (Boolean.Parse(Eval("PaymentDone").ToString())) ? "Yes" : "No" %></ItemTemplate>
</asp:TemplateField>
    <asp:TemplateField HeaderText="Products">
        <EditItemTemplate>
            <asp:GridView ID="gvProducts" runat="server" Width="100"   AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Bold="True" Font-Size="Small" EmptyDataText="No Data Avaliable" OnRowEditing="GVProducts_RowEditing" OnRowCancelingEdit="GVProducts_RowCancelingEdit" OnRowUpdating="GVProducts_RowUpdating" OnRowDataBound="GVProducts_RowDataBound">
                <Columns>
                    <asp:BoundField HeaderText="ProductName" ReadOnly="true" Visible="true"  DataField="ProductName"/> 
                    <asp:BoundField HeaderText="ProductNumber" ReadOnly="true"  DataField="ProductNumber" />
                    <asp:BoundField HeaderText="ProductDescription" ReadOnly="true"  DataField="ProductDescription" />
                    <asp:BoundField HeaderText="Cost" ReadOnly="true"  DataField="Cost" />

                </Columns>

            </asp:GridView>   
        </EditItemTemplate>
        <ItemTemplate>
             <asp:GridView ID="gvProducts" runat="server" Width="100"   AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Bold="True" Font-Size="Small" EmptyDataText="No Data Avaliable" OnRowEditing="GVProducts_RowEditing" OnRowCancelingEdit="GVProducts_RowCancelingEdit" OnRowUpdating="GVProducts_RowUpdating" OnRowDataBound="GVProducts_RowDataBound">
                        <Columns>
                    <asp:BoundField HeaderText="ProductName" ReadOnly="true" Visible="true"  DataField="ProductName"/> 
                    <asp:BoundField HeaderText="ProductNumber" ReadOnly="true"  DataField="ProductNumber" />
                                                <asp:BoundField HeaderText="ProductDescription" ReadOnly="true"  DataField="ProductDescription" />
                    <asp:BoundField HeaderText="Cost" ReadOnly="true"  DataField="Cost" />
                </Columns>
            </asp:GridView>   
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField  HeaderText="Amount" SortExpression="Amount">
                    <ItemTemplate>
                        <asp:Literal ID="AmountLiteral" runat="server" />
                    </ItemTemplate>
                     <FooterTemplate>
                         <asp:HiddenField runat="server" ID="hdnOrderID" />
                        <asp:Literal ID="AmountTotal" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
                          <asp:TemplateField>
                            <HeaderTemplate>Make Payment</HeaderTemplate>
                            <ItemTemplate>
                                
                                <asp:LinkButton Text="Make Payment" Visible='<%# Convert.ToInt32(Eval("PaymentDone")) == 0 %>'   CommandArgument='<%#Eval("UserOrderID") %>' ID="btnMakePayment" CommandName="btnMakePayment" runat="server" /></ItemTemplate>
                        </asp:TemplateField>

</Columns> 
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
</asp:GridView> 
</td>
</tr>
</table> 
<table>
<tr>
<td><asp:Label ID="lblMsg" Visible="false"  runat="server" ForeColor="#FF0000"   Font-Bold="true" Font-Names="Verdana" Font-Size="X-Small" ></asp:Label>  </td>
</tr>
</table>
</center>
</asp:Content>

