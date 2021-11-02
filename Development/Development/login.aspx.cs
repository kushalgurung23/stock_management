using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;

namespace Development
{
    public partial class login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            
            // Check if username and password match with any user on users table
            DataView users = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            bool authenticated = users.Table.Rows.Count > 0;

            if (authenticated)
            {
                Session["user_name"] = userNameTxt.Text.ToString();
                foreach (DataRowView drvSql in users)
                {
                    Session["is_admin"] = drvSql["is_admin"].ToString();
                    //Session["user_id"] = drvSql["user_id"].ToString();
                }
                FormsAuthentication.RedirectFromLoginPage(userNameTxt.Text, false);
            }
 
            else
            {
                messageLbl.Text = "Incorrect login details";
            }
        }
    }
}
