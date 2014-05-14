<%@ Page Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="frmEditProfile.aspx.cs" Inherits="OperationAdmin_frmEditProfile" Title="Edit Profile" %>
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
    <strong>UPDATE PROFILE</strong></td>
</tr>
</table> <br />
<table style="border:1px; border-color:Blue; border-style:solid; width: 275px;">
<tr>
<td colspan="4" style="font-size: 14px; font-family: Verdana">
    <strong>PERSONNEL DETAILS</strong></td>
</tr>
    <tr>
        <td style="font-size: 12px; font-family: Verdana; width: 99px; text-align: right;">
            UserAccountId:</td>
        <td>
          <asp:TextBox  ReadOnly="true"  ID="txtUserId" Width="177px"  runat="server"></asp:TextBox>
        </td>
        <td>
        </td>
    </tr>
<tr>
<td style="font-size: 12px; font-family: Verdana; width: 99px; text-align: right;">User Name:
</td>
<td><asp:TextBox ID="txtFName" ReadOnly="true"  Width="177px" OnKeypress="return OnlyChars(event)"  runat="server"></asp:TextBox></td>
<td><asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txtFName" ErrorMessage="*" ></asp:RequiredFieldValidator>     </td>  
</tr>
<tr>
<td style="font-size: 12px; font-family: Verdana; width: 99px; text-align: right;">Qualification:
</td>
<td><asp:TextBox ID="txtQualification" Width="177px" runat="server"></asp:TextBox></td>
<td><asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="txtQualification" ErrorMessage="*" ></asp:RequiredFieldValidator>     </td>  
</tr>
<tr>
<td style="font-size: 12px; font-family: Verdana; width: 99px; text-align: right;">DesiDesignation:
</td>
<td><asp:TextBox ID="txtDesignation"  Width="177px" runat="server"></asp:TextBox></td>
<td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDesignation" ErrorMessage="*" ></asp:RequiredFieldValidator>     </td>  
</tr>
<tr>
<td style="font-size: 12px; font-family: Verdana; width: 99px; text-align: right;">Address:

<td><asp:TextBox ID="txtAddress" TextMode="MultiLine"   runat="server"></asp:TextBox></td>
<td><asp:RequiredFieldValidator ID="rfv5" runat="server" ControlToValidate="txtAddress" ErrorMessage="*" ></asp:RequiredFieldValidator>     </td>  
</tr>
<tr>
<td style="font-size: 12px; font-family: Verdana; width: 99px; text-align: right;">EmailId:
</td>
<td><asp:TextBox ID="txtEmail" Width="177px"    runat="server"></asp:TextBox></td>
<td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ></asp:RequiredFieldValidator> 
<asp:RegularExpressionValidator ID="rex1" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>        </td>  
</tr>
<tr>
<td style="font-size: 12px; font-family: Verdana; width: 99px; text-align: right;">ContactNo:
</td>
<td><asp:TextBox ID="txtContactNo" Width="177px" OnKeypress="return onlyNumbers(event)" runat="server" MaxLength="12"></asp:TextBox></td>
<td><asp:RequiredFieldValidator ID="rfv07" runat="server" ControlToValidate="txtContactNo" ErrorMessage="*" ></asp:RequiredFieldValidator>     </td>  
</tr>
    
<tr>
<td colspan="3" style="font-size: 12px; font-family: Verdana">
    &nbsp; &nbsp;
<asp:Button ID="btnSubmit" runat="server" Text="Submit"  ForeColor="#FF0000"   Font-Bold="true" Font-Names="Verdana" Font-Size="X-Small" OnClick="btnSubmit_Click"  />  
<asp:Button ID="btnClear" runat="server" Text="Clear" CausesValidation="false"   ForeColor="#FF0000"   Font-Bold="true" Font-Names="Verdana" Font-Size="X-Small" OnClick="btnClear_Click"  />  
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

