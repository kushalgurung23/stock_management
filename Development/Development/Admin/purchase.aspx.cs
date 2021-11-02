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
    public partial class purchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Visible = false;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            customerTxt.Text = DropDownList1.SelectedValue;
            fetchTotalAmount();
            Label4.Visible = true;
        }

        public void fetchTotalAmount()
        {
            String query = "Select sum(line_total) as total_amount from cart where member_number = " + customerTxt.Text + " and status = '1'";
            if (this.IsPostBack)
            {
                //Eastablishing connection
                string constr = ConfigurationManager.ConnectionStrings["courseworkConnectionString12"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        //Opening connection
                        con.Open();
                        using (SqlDataReader sdr = cmd.ExecuteReader())
                        {
                            sdr.Read();
                            totalAmountTxt.Text = sdr["total_amount"].ToString();
                        }
                        //Closing connection
                        con.Close();
                    }
                }
            }
        }

        protected void confirmPayment_Click(object sender, EventArgs e)
        {
            if (customerTxt.Text == "" || totalAmountTxt.Text == "")
            {
                Response.Write("<script language=javascript>alert('Please provide all details.')</script>");
            }
            else
            {
                updateCart();
                confirmSales();
            }
            
            
        }

        public void updateCart()
        {
            try
            {
                // Connecting to connection string
                string constr = ConfigurationManager.ConnectionStrings["courseworkConnectionString12"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(constr))
                {
                    // open sql connection
                    conn.Open();
                    // Query to update status to 0
                    string insert_query = "UPDATE cart  SET status = '0' WHERE member_number = " + customerTxt.Text;
                    SqlCommand cmd = new SqlCommand(insert_query, conn);

                    cmd.ExecuteNonQuery();
                    Response.Write("<script language=javascript>alert('Purchase has been made successfully.')</script>");

                    //close sql connection
                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("ERORR:" + ex.ToString());

            }
        }

        public void confirmSales()
        {
            try
            {
                // Connecting to connection string
                string constr = ConfigurationManager.ConnectionStrings["courseworkConnectionString12"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(constr))
                {
                    //Opening connecting 
                    conn.Open();
                    // Query to insert data into sales
                    string insert_query = "INSERT INTO sales(member_number, item_id, total_quantity, total_amount, billing_date, status) SELECT member_number, item_id, quantity, line_total, GETDATE(), '0' FROM Cart where member_number = " + customerTxt.Text;
                    SqlCommand cmd = new SqlCommand(insert_query, conn);

                    cmd.ExecuteNonQuery();

                    //close sql connection
                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                //Showing error message
                Response.Write("ERORR:" + ex.ToString());

            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}