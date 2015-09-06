using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;

public partial class Manager_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["permission"] != null)
        {
            Message.Text = "You are already logged in as: " + (string)Session["username"];
            LoginInformation.CssClass = "alert alert-info";
            Logout.Enabled = true;
        } else
        {
            Logout.Enabled = false;
            LoginInformation.Visible = false;
        }

        ResultContainer.Visible = false; // By default, hide
    }

    /// <summary>
    /// Attempt to login using provided credentials.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Submit_Click(object sender, EventArgs e)
    {
        string username = Username.Text;
        string password = Password.Text;

        // Find salt for matching username
        string db_salt = null;
        string db_password = null;
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["SalgatDB"].ConnectionString))
        {
            connection.Open();

            using (SqlCommand command = new SqlCommand(@"SELECT PasswordSalt FROM Users WHERE UserName = @username", connection))
            {
                SqlParameter username_parameter = new SqlParameter();
                username_parameter.ParameterName = "@username";
                username_parameter.Value = username;
                command.Parameters.Add(username_parameter);

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        db_salt = reader.GetString(reader.GetOrdinal("PasswordSalt"));
                    }
                }
            }

            using (SqlCommand command = new SqlCommand(@"SELECT Password FROM Users WHERE UserName = @username", connection))
            {
                SqlParameter username_parameter = new SqlParameter();
                username_parameter.ParameterName = "@username";
                username_parameter.Value = username;
                command.Parameters.Add(username_parameter);

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        db_password = reader.GetString(reader.GetOrdinal("Password"));
                    }
                }
            }

            connection.Close();
        }

        // Username exists, test for password
        if (!String.IsNullOrEmpty(db_salt) && !String.IsNullOrEmpty(db_password))
        {
            // Calculate password hash to compare against stored hash
            string password_with_salt = password + db_salt;

            SHA256Managed crypt = new SHA256Managed();
            StringBuilder hash = new StringBuilder();
            byte[] crypto = crypt.ComputeHash(Encoding.UTF8.GetBytes(password_with_salt), 0, Encoding.UTF8.GetByteCount(password_with_salt));
            foreach (byte theByte in crypto)
            {
                hash.Append(theByte.ToString("x2"));
            }
            
            if (db_password == hash.ToString())
            {
                string permission = "READ_ONLY"; // For now just give everyone the same permission level
                Session["permission"] = permission;
                Session["username"] = username;
                Response.Redirect("~/Manager");

                // Extend session timeout to 2 weeks if "Remember Me" checkbox clicked
                if (RememberMe.Checked)
                {
                    HttpContext.Current.Session.Timeout = 60*24*7*2; // 60 Minutes -> 24 hours -> 7 Days -> 2 Weeks
                }
            }
        }

        // Password failed, notify user
        Result.Text = "Login failed";
        ResultContainer.CssClass = "alert alert-danger";
        ResultContainer.Visible = true; // Display error message
    }

    protected void Logout_Click(object sender, EventArgs e)
    {
        // TODO: This also exists in Default.aspx.cs, remove copies and put logic into a C# authentication file
        // End Session for user
        Session["permission"] = null;
        Session.Abandon();
        Response.Redirect("~/Manager/Login.aspx");
    }
}