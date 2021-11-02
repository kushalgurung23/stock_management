using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Development.Admin
{
    public partial class customerReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Mssql query
            String Command = "SELECT * FROM[sales] WHERE(([member_number] = " + DropDownList1.SelectedValue + ") AND ([billing_date] >= GETDATE() - 31)); ";
            //Checking post back option trur
            if (this.IsPostBack)
            {
                //SQL data source to connect with database
                string constr = ConfigurationManager.ConnectionStrings["courseworkConnectionString12"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    //Declaring command with sql 
                    using (SqlCommand cmd = new SqlCommand(Command))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                //Adding data in gridview through datatable object
                                sda.Fill(dt);
                                customerReportGridView.DataSource = dt;
                                customerReportGridView.DataBind();
                            }
                        }
                    }
                }
            }
        }
    }
}