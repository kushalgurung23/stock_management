using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Development
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void categoryBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/category.aspx");
        }

        protected void itemsBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/items.aspx");
        }

        protected void customerBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/customerRecord.aspx");
        }

        protected void homeBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }
    }
}