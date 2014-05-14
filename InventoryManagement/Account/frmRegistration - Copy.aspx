<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmRegistration - Copy.aspx.cs" Inherits="frmRegistration" Title="User Registration Page" %>

<!DOCTYPE html>
<script language="javascript" type="text/javascript">
    function onlyNumbers(evt) {
        var e = event || evt;
        var charCode = e.which || e.keyCode;
        if ((charCode > 47 && charCode < 58))
            return true;
        else
            return false;
    }
    function OnlyChars(evt) {
        var e = event || evt;
        var charCode = e.which || e.keyCode;
        if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || charCode == 32)
            return true;
        else
            return false;
    }
    function onlyNumbersdot(evt) {
        var e = event || evt;
        var charCode = e.which || e.keyCode;
        if (charCode > 47 && charCode < 58 || charCode == 46)
            return true;
        else
            return false;
    }
    function onlyNumbershifen(evt) {
        var e = event || evt;
        var charCode = e.which || e.keyCode;
        if ((charCode > 47 && charCode < 58 || charCode == 45))
            return true;
        else
            return false;
    }
    function onlyNumbersUnderScore(evt) {
        var e = event || evt;
        var charCode = e.which || e.keyCode;
        if ((charCode > 47 && charCode < 58 || charCode == 95))
            return true;
        else
            return false;
    }
</script>
<html lang="en">
<head runat="server">
    <title><%: Page.Title %> - My ASP.NET Application</title>
    <link href="../Content/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

</head>
<body>
    <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">


            <li><a href="../Default.aspx">Home</a></li>
        </ul>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <p>
                    <img src="../images/warehouse1.png" width="100%" />
                </p>
            </div>
        </div>
    </div>
    <form runat="server">

        <table>
            <tr>
                <td colspan="5">
                    <strong>USER REGISTRATION FORM</strong></td>
            </tr>

            <tr>
                <td colspan="5" style="font-size: 14px; font-family: Verdana">
                    <strong>PERSONNEL DETAILS</strong></td>
            </tr>
            <tr>
                <td style="font-size: 12px; font-family: Verdana; width: 128px; text-align: right; font-weight: bold;">First Name:
                </td>
                <td style="font-size: 12px; width: 24px; font-family: Verdana; text-align: right"></td>
                <td style="width: 188px; text-align: left">
                    <asp:TextBox ID="txtFName" Width="177px" OnKeypress="return OnlyChars(event)" runat="server"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txtFName" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-size: 12px; font-family: Verdana; width: 128px; text-align: right; font-weight: bold;">Last Name:
                </td>
                <td style="font-size: 12px; width: 24px; font-family: Verdana; text-align: right"></td>
                <td style="width: 188px; text-align: left">
                    <asp:TextBox ID="txtLName" Width="177px" OnKeypress="return OnlyChars(event)" runat="server"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txtLName" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-size: 12px; font-family: Verdana; width: 128px; text-align: right; font-weight: bold;" valign="middle">Gender:
                </td>
                <td style="font-size: 12px; width: 24px; font-family: Verdana; text-align: right"
                    valign="middle"></td>
                <td style="height: 38px; width: 188px; text-align: left;">
                    <asp:RadioButtonList Width="179px" ID="rblGender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList></td>
                <td style="height: 38px; text-align: left;">
                    <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="rblGender" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-size: 12px; font-family: Verdana; width: 128px; text-align: right; font-weight: bold;">Qualification:
                </td>
                <td style="font-size: 12px; width: 24px; font-family: Verdana; text-align: right"></td>
                <td style="width: 188px; text-align: left">
                    <asp:TextBox ID="txtQualification" Width="177px" runat="server"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="txtQualification" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-size: 12px; font-family: Verdana; width: 128px; text-align: right; font-weight: bold;">Designation:
                </td>
                <td style="font-size: 12px; width: 24px; font-family: Verdana; text-align: right"></td>
                <td style="width: 188px; text-align: left">
                    <asp:TextBox ID="txtDesignation" Width="177px" runat="server"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="rfv02" runat="server" ControlToValidate="txtDesignation" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-size: 12px; font-family: Verdana; width: 128px; text-align: right; font-weight: bold;">Address:
                </td>
                <td style="font-size: 12px; width: 24px; font-family: Verdana; text-align: right"></td>
                <td style="width: 188px; text-align: left">
                    <asp:TextBox ID="txtAddress" TextMode="MultiLine" runat="server"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="rfv5" runat="server" ControlToValidate="txtAddress" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-size: 12px; font-family: Verdana; width: 128px; text-align: right; font-weight: bold;">EmailId:
                </td>
                <td style="font-size: 12px; width: 24px; font-family: Verdana; text-align: right"></td>
                <td style="width: 188px; text-align: left">
                    <asp:TextBox ID="txtEmail" Width="177px" runat="server"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="rfv03" runat="server" ControlToValidate="txtEmail" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rex1" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="font-size: 12px; font-family: Verdana; width: 128px; text-align: right; font-weight: bold;">ContactNo:
                </td>
                <td style="font-size: 12px; width: 24px; font-family: Verdana; text-align: right"></td>
                <td style="width: 188px; text-align: left">
                    <asp:TextBox ID="txtContactNo" Width="177px" OnKeypress="return onlyNumbers(event)" runat="server" MaxLength="10"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="rfv07" runat="server" ControlToValidate="txtContactNo" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-size: 12px; font-family: Verdana; width: 128px; text-align: right; font-weight: bold;">UserName:
                </td>
                <td style="font-size: 12px; width: 24px; font-family: Verdana; text-align: right"></td>
                <td style="width: 188px; text-align: left">
                    <asp:TextBox ID="txtUserName" MaxLength="10" Width="177px" runat="server"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="rfv04" runat="server" ControlToValidate="txtUserName" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:LinkButton ID="lbCheck" runat="server" Text="Check Availability" ForeColor="#FF0000" CausesValidation="false" Font-Bold="true" Font-Names="Verdana" Font-Size="X-Small" OnClick="lbCheck_Click"></asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="font-size: 12px; font-family: Verdana; width: 128px; text-align: right; font-weight: bold;">Password:
                </td>
                <td style="font-size: 12px; width: 24px; font-family: Verdana; text-align: right"></td>
                <td style="width: 188px; text-align: left">
                    <asp:TextBox ID="txtPassword" Width="177px" TextMode="Password" MaxLength="6" runat="server"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="rfv05" runat="server" ControlToValidate="txtPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-size: 12px; font-family: Verdana; width: 128px; text-align: right; font-weight: bold;">HintQuestion:
                </td>
                <td style="font-size: 12px; width: 24px; font-family: Verdana; text-align: right"></td>
                <td style="width: 188px; text-align: left">
                    <asp:DropDownList ID="ddlquestion" Width="177px" runat="server">
                        <asp:ListItem Text="what is ur PetName"></asp:ListItem>
                        <asp:ListItem Text="your favourate color"></asp:ListItem>
                        <asp:ListItem Text="your role Model"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-size: 12px; font-family: Verdana; width: 128px; text-align: right; font-weight: bold;">Answer:
                </td>
                <td style="font-size: 12px; width: 24px; font-family: Verdana; text-align: right"></td>
                <td style="width: 188px; text-align: left">
                    <asp:TextBox ID="txtAnswer" Width="177px" TextMode="Password" MaxLength="50" runat="server"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="rfv06" runat="server" ControlToValidate="txtAnswer" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="4" style="font-size: 12px; font-family: Verdana; text-align: right;">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" ForeColor="#FF0000" Font-Bold="true" Font-Names="Verdana" Font-Size="X-Small" OnClick="btnSubmit_Click" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" CausesValidation="false" ForeColor="#FF0000" Font-Bold="true" Font-Names="Verdana" Font-Size="X-Small" OnClick="btnClear_Click" />
                    &nbsp; &nbsp;&nbsp; &nbsp;</td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblMsg" Visible="false" runat="server" ForeColor="#FF0000" Font-Bold="true" Font-Names="Verdana" Font-Size="X-Small"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>

</html>
