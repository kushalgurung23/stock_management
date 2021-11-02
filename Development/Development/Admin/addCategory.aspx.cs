using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Development.Admin
{
    public partial class addCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            if(categoryNameTxt.Text == "" || descriptionTxt.Text == "")
            {
                Response.Write("<script language=javascript>alert('Please enter all details.')</script>");
            }
            else
            {
                DataView categoryTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                SqlDataSource1.InsertParameters["name"].DefaultValue = categoryNameTxt.Text;
                SqlDataSource1.InsertParameters["description"].DefaultValue = descriptionTxt.Text;
                SqlDataSource1.Insert();

                string successfulMessage = "Category added successfully.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + successfulMessage + "');", true);

                categoryNameTxt.Text = "";
                descriptionTxt.Text = "";
            }
        }
    }
}