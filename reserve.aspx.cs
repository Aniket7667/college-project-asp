using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Paradise
{
    public partial class reserve : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UserdataConnectionString"].ConnectionString);
                con.Open();
                string insertquerry = "insert into Reservation(Name,Date,Time,Seats,Phone_number) values(@name,@date,@time,@seats,@mobno)";
                SqlCommand command = new SqlCommand(insertquerry, con);
                command.Parameters.AddWithValue("@name", name.Text);
                command.Parameters.AddWithValue("@date", date.Text);
                command.Parameters.AddWithValue("@time", time.SelectedItem.ToString());
                command.Parameters.AddWithValue("@seats", seats.SelectedItem.ToString());
                command.Parameters.AddWithValue("@mobno", mobileno.Text);

                command.ExecuteNonQuery();

                Response.Write("Sucessfully registered");
                Response.Redirect("popup.aspx");

                con.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }

        }
    }
}