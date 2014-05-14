<%@ Page Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="frmChangePassword.aspx.cs" Inherits="OperationAdmin_frmChangePassword" Title="Change PassWord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center >
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
<table >
<tr>
<td colspan ="3"><h4>CHANGE PASSWORD FORM</h4></td>
</tr>
</table>
<table >
<tr>
<td align="right"  style="font-size: 12px; font-family: Verdana">User Name:</td>
<td style="width: 158px; text-align: left"><asp:TextBox ID="txtUserName"  runat="server" Width="136px" ></asp:TextBox> </td>
<td><asp:RequiredFieldValidator ID="rfv1" ErrorMessage="*" ControlToValidate="txtUserName"  runat="server"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td align="right" Width="136px"   style="font-size: 12px; font-family: Verdana">Password:</td>
<td style="width: 158px; text-align: left"><asp:TextBox ID="txtPassword" TextMode="Password"  Width="136px" runat="server" ></asp:TextBox> </td>
<td><asp:RequiredFieldValidator ID="rfv2" ErrorMessage="*" ControlToValidate="txtPassword"   runat="server"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td  align="right"  style="font-size: 12px; font-family: Verdana">New Password:</td>
<td style="width: 158px; text-align: left"><asp:TextBox ID="txtNewPassword" TextMode="Password"  Width="136px" runat="server" ></asp:TextBox></td>
<td><asp:RequiredFieldValidator ID="rfv3" ErrorMessage="*" ControlToValidate="txtNewPassword"   runat="server"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td align="right"    style="font-size: 12px; font-family: Verdana">Confirm Password:</td>
<td style="width: 158px; text-align: left"><asp:TextBox ID="txtConfirmPassword" TextMode="Password"  Width="136px"   runat="server" ></asp:TextBox></td>
<td><asp:CompareValidator ID="cmpv1" ErrorMessage="*" ControlToValidate="txtConfirmPassword" ControlToCompare="txtNewPassword"   runat="server"/></td>
</tr>
<tr>
<td colspan="3" style="font-size: 12px; font-family: Verdana">
<asp:Button ID="btnsubmit" Text="Submit" ForeColor="#FF0000"   Font-Bold="true" Font-Names="Verdana" Font-Size="X-Small" OnClientClick="return confirm('Do u Want Update!')"    runat="server" OnClick="btnsubmit_Click" />   
<asp:Button ID="btnCancel" Text="Cancel" ForeColor="#FF0000"   Font-Bold="true" Font-Names="Verdana" Font-Size="X-Small"   runat="server" CausesValidation="False" OnClick="btnCancel_Click"  />   
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

