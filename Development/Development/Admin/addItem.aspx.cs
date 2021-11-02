using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Development.Admin
{
    public partial class addItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {

            if (itemNameTxt.Text == "" || priceTxt.Text == "" || purchasedDateTxt.Text == "" || manufacturedDateTxt.Text == "" || descriptionTxt.Text == "" || expiryDateTxt.Text == "" || quantityTxt.Text == "")
            {
                Response.Write("<script language=javascript>alert('Please enter all details.')</script>");
            }

            else
            {
                //DataView itemTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                SqlDataSource2.InsertParameters["category_id"].DefaultValue = categoryDDown.SelectedValue.ToString();
                SqlDataSource2.InsertParameters["name"].DefaultValue = itemNameTxt.Text;
                SqlDataSource2.InsertParameters["description"].DefaultValue = descriptionTxt.Text;
                SqlDataSource2.InsertParameters["price"].DefaultValue = priceTxt.Text;
                SqlDataSource2.InsertParameters["purchase_date"].DefaultValue = purchasedDateTxt.Text;
                SqlDataSource2.InsertParameters["manufactured_date"].DefaultValue = manufacturedDateTxt.Text;
                SqlDataSource2.InsertParameters["expiry_date"].DefaultValue = expiryDateTxt.Text;
                SqlDataSource2.InsertParameters["quantity"].DefaultValue = quantityTxt.Text;
                SqlDataSource2.Insert();

                string successfulMessage = "Item added successfully.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + successfulMessage + "');", true);

                itemNameTxt.Text = "";
                descriptionTxt.Text = "";
                priceTxt.Text = "";
                purchasedDateTxt.Text = "";
                manufacturedDateTxt.Text = "";
                expiryDateTxt.Text = "";
                quantityTxt.Text = "";
                categoryDDown.SelectedIndex = 0;
            } 
        }

        protected void descriptionTxt_TextChanged(object sender, EventArgs e)
        {

        }
    }
}