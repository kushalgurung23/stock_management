using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Development.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["is_admin"].ToString() == "1")
            {
                Button4.Visible = true;
                lblDetails.Text = "Admin";
            }
            else
            {
                Button4.Visible = false;
                lblDetails.Text = "User";
            }


        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/login.aspx");
        }
    }
}