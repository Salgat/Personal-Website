using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Manager_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["permission"] == null) {
            Response.Redirect("~/Manager/Login.aspx");
        } else {
            // Display view count
            int view_count = -1;
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["SalgatDB"].ConnectionString))
            {
                connection.Open();
                string query_view_count = @"SELECT ViewCount FROM Attributes";
                using (SqlCommand command = new SqlCommand(query_view_count, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            view_count = reader.GetInt32(reader.GetOrdinal("ViewCount"));
                        }
                    }
                }

                connection.Close();
            }

            Label count = new Label();
            if (view_count >= 0)
            {
                count.Text = "View Count: " + view_count.ToString();
            }
            else
            {
                count.Text = "View count failed to read.";
            }
            contents.Controls.Add(count);
        }
    }

    protected void Logout_Click(object sender, EventArgs e)
    {
        // End Session for user
        Session["permission"] = null;
        Response.Redirect("~/Manager/Login.aspx");
    }
}