using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Development.Admin
{
    public partial class sale : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            categoryTxt.Text = DropDownList1.SelectedValue;
        }

        protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string item_id = DropDownList2.SelectedValue;
            string quantity;
            string price;

            string connectionString = @"Data Source = .;"//Server Location
                + "Initial Catalog = coursework;"//Name of database
                + "Trusted_Connection  = true;";
            string sqlQuery = "Select quantity,price from item where item_id='"+item_id+"'";

            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = new SqlCommand(sqlQuery, connection);

            SqlDataReader quantityReader = null;

            quantityReader = command.ExecuteReader();

            while (quantityReader.Read())
            {
                quantity = quantityReader["quantity"].ToString();
                price = quantityReader["price"].ToString();
                quantityTxt.Text = quantity;
                priceTxt.Text = price;
            }
            connection.Close(); 
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            memberNumberTxt.Text = DropDownList3.SelectedValue;
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            if(int.Parse(selectQuantityTxt.Text) > int.Parse(quantityTxt.Text))
            {
                string errorMessage = "There are only "+quantityTxt.Text+" items.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + errorMessage + "');", true);
            }

            else if (categoryTxt.Text == "" || quantityTxt.Text == "" || priceTxt.Text == "")
            {
                Response.Write("<script language=javascript>alert('Please provide all details.')</script>");
            }

            else
            {
                int line_total = (int.Parse(selectQuantityTxt.Text) * int.Parse(priceTxt.Text));

                try
                {
                    //Connection with database
                    string constr = ConfigurationManager.ConnectionStrings["courseworkConnectionString12"].ConnectionString;
                    using (SqlConnection conn = new SqlConnection(constr))
                    {
                        //Opening connecting 
                        conn.Open();
                        string insert_query = "insert into cart values('" + DropDownList3.SelectedValue + "', '" + DropDownList2.SelectedValue + "', '" + selectQuantityTxt.Text + "', '" + line_total.ToString() + "', '" + 1.ToString() + "')";
                        SqlCommand cmd = new SqlCommand(insert_query, conn);

                        cmd.ExecuteNonQuery();
                        conn.Close();

                        updateQuantity();

                        DropDownList2.SelectedIndex = 0;
                        quantityTxt.Text = "";
                        selectQuantityTxt.Text = 1.ToString();
                        priceTxt.Text = "";
                        DropDownList3.SelectedIndex = 0;
                       
                    }

                }
                catch (Exception ex)
                {
                    //Showing error message
                    Response.Write("ERORR:" + ex.ToString());

                }
                
            }
            
        }

        public void updateQuantity()
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
                    string update_query = "UPDATE item SET quantity = quantity - " + selectQuantityTxt.Text + "where item_id = " + DropDownList2.SelectedValue;
                    SqlCommand cmd = new SqlCommand(update_query, conn);

                    cmd.ExecuteNonQuery();
                    Response.Write("<script language=javascript>alert('Added to cart successfully.')</script>");

                    //close sql connection
                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("ERORR:" + ex.ToString());

            }
        }
    }
}