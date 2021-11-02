using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Development.Admin
{
    public partial class profile : System.Web.UI.Page
    {
        string checkPassword;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            emailTxt.Text = DropDownList1.SelectedValue;
        }

        protected void confirmPayment_Click(object sender, EventArgs e)
        {
            if (emailTxt.Text == "" || oldPasswordTxt.Text == "" || newPasswordTxt.Text == "" || confirmPasswordTxt.Text == "" )
            {
                Response.Write("<script language=javascript>alert('Please enter all details.')</script>");
            }
            else
            {
                string connectionString = @"Data Source = .;"//Server Location
                + "Initial Catalog = coursework;"//Name of database
                + "Trusted_Connection  = true;";
                string sqlQuery = "Select password from [user] where user_id='" + DropDownList1.SelectedItem + "'";

                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                SqlCommand command = new SqlCommand(sqlQuery, connection);

                SqlDataReader passwordChecker = null;

                passwordChecker = command.ExecuteReader();

                while (passwordChecker.Read())
                {
                    checkPassword = passwordChecker["password"].ToString();
                }
                connection.Close();

                if (oldPasswordTxt.Text == checkPassword.ToString())
                {
                    sendEmail();
                    updatePassword();
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Password does not matched!')</script>");
                }
            }
            
        }

        public void sendEmail()
        {
            // Provide your email address and password.
            string email_address = "";
            string password = "";

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("qoosal23.kg@gmail.com");

            // Email will be sent to this email address.
            msg.To.Add(emailTxt.Text);
            msg.Subject = "Password for your Account";
            msg.Body = "Your password has been changed. New password is:" + confirmPasswordTxt.Text;

            SmtpClient client = new SmtpClient();

            client.Host = "smtp.gmail.com";
            client.Port = 587;
            
            client.EnableSsl = true;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential(email_address, password);
            client.Timeout = 600000;
            client.Send(msg);

        }

        public void updatePassword()
        {
            try
            {
                string constr = ConfigurationManager.ConnectionStrings["courseworkConnectionString12"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(constr))
                {
                    conn.Open();
                    string insert_query = "UPDATE [dbo].[user] SET[password] = '" + confirmPasswordTxt.Text + "' WHERE user_id = " + DropDownList1.SelectedItem + "";
                    SqlCommand cmd = new SqlCommand(insert_query, conn);

                    cmd.ExecuteNonQuery();
                    Response.Write("<script language=javascript>alert('Your password has been changed successfully.')</script>");
                    //Closing data base connection
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