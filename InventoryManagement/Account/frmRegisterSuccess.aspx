<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmRegisterSuccess.aspx.cs" Inherits="frmRegisterSuccess" Title="Register Success" %>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - My ASP.NET Application</title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

</head>
<body style="margin:0; background-color:#BA8543">
    <br />
    <br />
    <form runat="server">
        <table>
            <tr>
                <td>
                    <h2>SUCCESSFULLY REGISTERED........... </h2>
                </td>
            </tr>
            <tr>
                <td>
                    <h4>
                        <asp:LinkButton ID="lbContinue" runat="server" PostBackUrl="~/Default.aspx">Click Here For Login</asp:LinkButton>
                    </h4>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

