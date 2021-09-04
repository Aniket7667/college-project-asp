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
    public partial class change_password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserdataConnectionString"].ConnectionString);
            conn.Open();
            string passwordquerry = "select Password from Userdata where Username ='" +Session["New"]+ "'";
            SqlCommand passcomm = new SqlCommand(passwordquerry, conn);
            string password = passcomm.ExecuteScalar().ToString();
            if (password == curpass.Text)
            {
                string updatequerry = "update Userdata SET Password =@pass where Username='" + Session["New"] + "'";
                SqlCommand com = new SqlCommand(updatequerry, conn);
                com.Parameters.AddWithValue("@pass", pass.Text);
                com.ExecuteNonQuery();
                Response.Write("Password Updated sucessfully");

            }
            else
            {
                Response.Write("Incorrect password");
            }
            conn.Close();
        }

        protected void Logoutbtn_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("Paradise.aspx");
        }
    }
}