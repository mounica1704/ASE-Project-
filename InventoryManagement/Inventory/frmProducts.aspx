<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPageMain.master"  CodeFile="frmProducts.aspx.cs" Inherits="Inventory_frmProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td></td>
        </tr>
    </table>
    <br />
        <table>
        <tr>
            <td></td>
        </tr>
    </table>
    <br />
        <table>
        <tr>
            <td></td>
        </tr>
    </table>
    <br />
        <table>
        <tr>
            <td></td>
        </tr>
    </table>
    <br />
        <table>
        <tr>
            <td></td>
        </tr>
    </table>
    <br />
        <table>
        <tr>
            <td></td>
        </tr>
    </table>
    <br />
        <table>
        <tr>
            <td><h1>Add/View Products</h1></td>
        </tr>
    </table>
    <br />
    <table>
        <tr>
            <td style="text-align: right">
                <span>Product Name :</span>
            </td>
            <td>
                <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
            </td>
        </tr>
                <tr>
            <td style="text-align: right">
                <span>Product Number :</span>
            </td>
            <td>
                <asp:TextBox ID="txtProductNumber" runat="server"></asp:TextBox>
            </td>
        </tr>
                <tr>
            <td style="text-align: right">
                <span>Product Description :</span>
            </td>
            <td>
                <asp:TextBox ID="txtProductDescription" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="text-align: right">
                <span>Product Cost :</span>
            </td>
            <td>
                <asp:TextBox ID="txtProductCost" runat="server"></asp:TextBox>
            </td>
        </tr>
                 <tr>
            <td style="text-align: right">
                <span>Product Available Quantity :</span>
            </td>
            <td>
                <asp:TextBox ID="txtProductAvailableQty" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                <span>Image :</span>
            </td>
            <td>
                <asp:FileUpload ID="prdImage" runat="server" />
            </td>
        </tr>
                <tr>
            <td style="text-align: right">
                <span>Image Extension:</span>
            </td>
            <td>
                <asp:TextBox ID="txtImageExt" runat="server" ></asp:TextBox>
            </td>
        </tr>
                        <tr>
            <td style="text-align: right">
                <span>Supplier:</span>
            </td>
            <td>
                <asp:DropDownList ID="cmbSupplier" runat="server" ></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
            </td>
            <td>
                <asp:Button ID="btnImage" runat="server" Text="Upload" OnClick="btnImage_Click" BackColor="#FF9900"
                    BorderStyle="Solid" Font-Bold="True" Font-Names="Georgia" Font-Size="Medium"
                    ForeColor="White" Height="40px" Width="100px" />
            </td>
        </tr>
    </table>
        <table>
            <tr>

                <td>
<asp:GridView ID="gvProducts" runat="server" Width="100"   AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Bold="True" Font-Size="Small" EmptyDataText="No Data Avaliable" >
                 <Columns>
                     <asp:BoundField HeaderText="ProductID" ReadOnly="true" Visible="true"  DataField="ProductID"/>
                    <asp:BoundField HeaderText="ProductName" ReadOnly="true" Visible="true"  DataField="ProductName"/> 
                    <asp:BoundField HeaderText="ProductNumber" ReadOnly="true"  DataField="ProductNumber" />
                                                <asp:BoundField HeaderText="ProductDescription" ReadOnly="true"  DataField="ProductDescription" />
                    <asp:BoundField HeaderText="Cost" ReadOnly="true"  DataField="Cost" />
                     <asp:BoundField HeaderText="AvailableQuantity" ReadOnly="true"  DataField="AvailableQuantity" />
                     <asp:ImageField DataImageUrlField = "ProductID"

        DataImageUrlFormatString = "ImageCSharp.aspx?ImageID={0}"

     ControlStyle-Width = "100" ControlStyle-Height = "100"

     HeaderText = "Preview Image"/>

                </Columns>
            </asp:GridView> 

                </td>
            </tr>

        </table>
</asp:Content>