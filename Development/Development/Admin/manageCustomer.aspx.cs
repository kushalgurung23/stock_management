using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Development.Admin
{
    public partial class addCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            if (customerNameTxt.Text == "" || ageTxt.Text == "" || addressTxt.Text == "" || contactNumberTxt.Text == "" || emailTxt.Text == "")
            {
                Response.Write("<script language=javascript>alert('Please enter all details.')</script>");
            }

            else
            {
                SqlDataSource1.InsertParameters["name"].DefaultValue = customerNameTxt.Text;
                SqlDataSource1.InsertParameters["age"].DefaultValue = ageTxt.Text;
                SqlDataSource1.InsertParameters["address"].DefaultValue = addressTxt.Text;
                SqlDataSource1.InsertParameters["contact_number"].DefaultValue = contactNumberTxt.Text;
                SqlDataSource1.InsertParameters["email_address"].DefaultValue = emailTxt.Text;
                SqlDataSource1.InsertParameters["member_type"].DefaultValue = memberTypeDDown.SelectedValue.ToString();
                SqlDataSource1.Insert();

                string successfulMessage = "Customer added successfully.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + successfulMessage + "');", true);

                customerNameTxt.Text = "";
                ageTxt.Text = "";
                addressTxt.Text = "";
                contactNumberTxt.Text = "";
                emailTxt.Text = "";
                memberTypeDDown.SelectedIndex = 0;
            }
        }
    }
}