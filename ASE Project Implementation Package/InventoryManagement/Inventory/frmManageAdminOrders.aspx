<%@ Page Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="frmManageAdminOrders.aspx.cs" Inherits="Admin_frmManageAdminOrders" Title="Manage Orders" %>
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
<td><h3>MANAGE ORDERS</h3>
</td>
</tr>
</table> 
<table style="border:1px; border-color:Blue; border-style:solid; width: 275px;">
<tr style="background-color:Transparent">
<td><asp:GridView ID="GVManageOrders" Width="100"  CssClass="EU_DataTable"  runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Bold="True" Font-Size="Small" EmptyDataText="No Data Avaliable" OnRowEditing="GVManageOrders_RowEditing" OnRowCancelingEdit="GVManageOrders_RowCancelingEdit" OnRowUpdating="GVManageOrders_RowUpdating" OnRowCommand="GVManageOrders_RowCommand" OnRowDataBound="GVManageOrders_RowDataBound">
<Columns>
<asp:CommandField ShowEditButton="True"/>  
<asp:BoundField HeaderText="AdminOrderId" ReadOnly="true"  visible="true" DataField="AdminOrderId"/> 
<asp:BoundField HeaderText="AdminUserID" ReadOnly="true"  visible="false"  DataField="AdminUserID" />
<asp:BoundField HeaderText="User Name" ReadOnly="true"  DataField="FirstName" />
<asp:BoundField HeaderText="OrderStatus" ReadOnly="true"  DataField="OrderStatus" />
     <asp:TemplateField HeaderText="Payment Done" >
    <ItemTemplate><%# (Boolean.Parse(Eval("PaymentDone").ToString())) ? "Yes" : "No" %></ItemTemplate>
</asp:TemplateField>
    <asp:TemplateField HeaderText="Status">
        <EditItemTemplate>
            <asp:DropDownList ID="ddlStatus" runat="server">
         
            </asp:DropDownList>   
        </EditItemTemplate>
        <ItemTemplate>
             <asp:DropDownList ID="ddlStatus" runat="server">
         
            </asp:DropDownList>   
        </ItemTemplate>
    </asp:TemplateField>
 <asp:TemplateField HeaderText="Payments">
        <EditItemTemplate>
            <asp:GridView ID="gvPayments" runat="server" Width="100"   AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Bold="True" Font-Size="Small" EmptyDataText="No Data Avaliable" >
                 <Columns>
                    <asp:BoundField HeaderText="PaymentAmount" ReadOnly="true" Visible="true"  DataField="PaymentAmount"/> 
                </Columns>
            </asp:GridView>   
        </EditItemTemplate>
        <ItemTemplate>
            <asp:GridView ID="gvPayments" runat="server" Width="100"   AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Bold="True" Font-Size="Small" EmptyDataText="No Data Avaliable" >
                 <Columns>
                    <asp:BoundField HeaderText="PaymentAmount" ReadOnly="true" Visible="true"  DataField="PaymentAmount"/> 
                </Columns>
            </asp:GridView>   
        </ItemTemplate>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Products Orders">
        <EditItemTemplate>
               <asp:GridView ID="gvProducts" runat="server" Width="100"   AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Bold="True" Font-Size="Small" EmptyDataText="No Data Avaliable" >
                 <Columns>
                    <asp:BoundField HeaderText="ProductName" ReadOnly="true" Visible="true"  DataField="ProductName"/> 
                    <asp:BoundField HeaderText="ProductNumber" ReadOnly="true"  DataField="ProductNumber" />
                                                <asp:BoundField HeaderText="ProductDescription" ReadOnly="true"  DataField="ProductDescription" />
                    <asp:BoundField HeaderText="Cost" ReadOnly="true"  DataField="Cost" />
                </Columns>
            </asp:GridView>    
        </EditItemTemplate>
        <ItemTemplate>
               <asp:GridView ID="gvProducts" runat="server" Width="100"   AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Bold="True" Font-Size="Small" EmptyDataText="No Data Avaliable" >
                 <Columns>
                    <asp:BoundField HeaderText="ProductName" ReadOnly="true" Visible="true"  DataField="ProductName"/> 
                    <asp:BoundField HeaderText="ProductNumber" ReadOnly="true"  DataField="ProductNumber" />
                                                <asp:BoundField HeaderText="ProductDescription" ReadOnly="true"  DataField="ProductDescription" />
                    <asp:BoundField HeaderText="Cost" ReadOnly="true"  DataField="Cost" />
                     <asp:BoundField HeaderText="Quantity" ReadOnly="true"  DataField="Quantity" />
                </Columns>
            </asp:GridView>  
        </ItemTemplate>
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

