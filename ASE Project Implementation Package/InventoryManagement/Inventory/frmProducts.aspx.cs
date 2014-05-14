using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Inventory_frmProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            clsSupplier supp = new clsSupplier();
            this.cmbSupplier.DataSource=supp.GetSuppliers();
            this.cmbSupplier.DataTextField = "SupplierName";
            this.cmbSupplier.DataValueField = "SupplierID";
            this.cmbSupplier.DataBind();


            clsProducts prd = new clsProducts();
            this.gvProducts.DataSource = prd.GetProducts();
            this.gvProducts.DataBind();
        }

    }
    protected void btnImage_Click(object sender, EventArgs e)
    {
        int imgLen = prdImage.PostedFile.ContentLength;
        string imgName = txtProductName.Text;
        byte[] imgBinaryData = new byte[imgLen];
        string strFileExt = System.IO.Path.GetExtension(prdImage.FileName).ToLower().Substring(1, 3);

        prdImage.PostedFile.InputStream.Read(imgBinaryData, 0, imgLen);
        if (strFileExt == "jpg" || strFileExt == "png" || strFileExt == "gif")
        {
            if (imgLen <= 42151)
            {
                clsProducts prd = new clsProducts();
                prd.AddProduct(txtProductName.Text, txtProductDescription.Text, txtProductNumber.Text, Convert.ToInt32(txtProductAvailableQty.Text), Convert.ToDecimal(txtProductCost.Text), Convert.ToInt32(cmbSupplier.SelectedValue), imgBinaryData, txtImageExt.Text);
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "message", "alert('41 KB size file is allowed');", true);
            }
        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(), "message", "alert('Only jpg,.png,.gif files are allowed');", true);
        }
    }
}