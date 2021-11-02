using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Development.Admin
{
    public partial class addUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            if (fullNameTxt.Text == "" || contactNumberTxt.Text == "" || addressTxt.Text == "" || positionTxt.Text == "" || emailAddressTxt.Text == "" || userNameTxt.Text == "" || passwordTxt.Text == "" || confirmPassTxt.Text == "")
            {
                Response.Write("<script language=javascript>alert('Please enter all details.')</script>");
            }

            else
            {
                SqlDataSource1.InsertParameters["name"].DefaultValue = fullNameTxt.Text;
                SqlDataSource1.InsertParameters["username"].DefaultValue = userNameTxt.Text;
                SqlDataSource1.InsertParameters["email"].DefaultValue = emailAddressTxt.Text;
                SqlDataSource1.InsertParameters["password"].DefaultValue = confirmPassTxt.Text;
                SqlDataSource1.InsertParameters["contact"].DefaultValue = contactNumberTxt.Text;
                SqlDataSource1.InsertParameters["address"].DefaultValue = addressTxt.Text;
                SqlDataSource1.InsertParameters["gender"].DefaultValue = genderDDown.SelectedValue.ToString();
                SqlDataSource1.InsertParameters["position"].DefaultValue = positionTxt.Text;
                SqlDataSource1.InsertParameters["is_admin"].DefaultValue = isAdminDDown.SelectedValue.ToString();
                SqlDataSource1.Insert();

                string successfulMessage = "User added successfully.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + successfulMessage + "');", true);

                fullNameTxt.Text = "";
                userNameTxt.Text = "";
                emailAddressTxt.Text = "";
                passwordTxt.Text = "";
                confirmPassTxt.Text = "";
                contactNumberTxt.Text = "";
                addressTxt.Text = "";
                genderDDown.SelectedIndex = 0;
                positionTxt.Text = "";
                isAdminDDown.SelectedIndex = 0;
            }

            
        }
    }
}