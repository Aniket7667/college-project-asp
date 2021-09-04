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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UserdataConnectionString"].ConnectionString);
                con.Open();
                string useremail = "select count(*) from Userdata where Email ='" + email.Text + "'";
                SqlCommand command = new SqlCommand(useremail, con);
                int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("User already Exist");
                }

                con.Close();
            }
        }

        protected void cnaac_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UserdataConnectionString"].ConnectionString);
            con.Open();
            string insertquerry = "insert into Userdata (Username,Email,Phone_number,Gender,Password) values(@name,@email,@number,@gender,@pass)";
            SqlCommand command = new SqlCommand(insertquerry, con);
            command.Parameters.AddWithValue("@name", username.Text);
            command.Parameters.AddWithValue("@email", email.Text);
            command.Parameters.AddWithValue("@number", mobileno.Text);
            command.Parameters.AddWithValue("@gender", list.SelectedItem.ToString());
            command.Parameters.AddWithValue("@pass", pass.Text);

            command.ExecuteNonQuery();

            Response.Redirect("Paradise.aspx");

            con.Close();

            
        }
    }
}