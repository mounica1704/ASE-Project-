<%@ Page Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="frmManageSuppliers.aspx.cs" Inherits="Admin_frmManageDefects" Title="Manage Suppliers" %>
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
<td><h3>MANAGE SUPPLIERS</h3>
</td>
</tr>
</table> 
<table style="border:1px; border-color:Blue; border-style:solid; width: 275px;">
<tr style="background-color:Transparent">
<td><asp:GridView ID="GVManageSuppliers" Width="100"  CssClass="EU_DataTable"  runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Bold="True" Font-Size="Small" EmptyDataText="No Data Avaliable" OnRowEditing="GVManageSuppliers_RowEditing" OnRowCancelingEdit="GVManageSuppliers_RowCancelingEdit" OnRowUpdating="GVManageSuppliers_RowUpdating" OnRowDataBound="GVManageSuppliers_RowDataBound">
<Columns>
  
<asp:BoundField HeaderText="SupplierId" ReadOnly="true" visible="false"  DataField="SupplierId"/> 
<asp:BoundField HeaderText="SupplierName" ReadOnly="true"  DataField="SupplierName" />
<asp:BoundField HeaderText="SupplierAddress" ReadOnly="true"  DataField="SupplierAddress"/>
<asp:BoundField HeaderText="SupplierCity" ReadOnly="true"  DataField="SupplierCity" />
<asp:BoundField HeaderText="SupplierState" ReadOnly="true"  DataField="SupplierState" />
 <asp:BoundField HeaderText="SupplierCountry" ReadOnly="true"  DataField="SupplierCountry" />
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

