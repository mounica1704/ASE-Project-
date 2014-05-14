<%@ Page Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="frmManageUsers.aspx.cs" Inherits="Admin_frmManageUsers" Title="Manage Users" %>
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
<td><h3>MANAGE USERS</h3>
</td>
</tr>
</table> 
<table style="border:1px; border-color:Blue; border-style:solid; width: 275px;">
<tr style="background-color:Transparent">
<td><asp:GridView ID="GVManageUsers" runat="server"  CssClass="EU_DataTable"  AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnRowEditing="GVManageUsers_RowEditing" AllowPaging="True" Font-Bold="True" Font-Size="Small" OnPageIndexChanging="GVManageUsers_PageIndexChanging" PageSize="2" AllowSorting="True" OnSorting="GVManageUsers_Sorting" OnRowDeleting="GVManageUsers_RowDeleting">
<Columns>

<asp:BoundField HeaderText="UserId" DataField="UserId" Visible="false"/> 
<asp:BoundField HeaderText="Name" DataField="FirstName" SortExpression="FirstName"/>
<asp:BoundField HeaderText="Qualification" DataField="Qualification"/>
<asp:BoundField HeaderText="Address" DataField="Address"/>
<asp:BoundField HeaderText="EmailId" DataField="EmailId"/>
<asp:BoundField HeaderText="ContactNo" DataField="ContactNo"/>
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

