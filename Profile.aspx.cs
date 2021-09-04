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
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                /*username.Text = Session["New"].ToString();
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UserdataConnectionString"].ConnectionString);
                con.Open();
                string userdata= "select * from Userdata where Username ='" +Session["New"]+ "'";
                SqlCommand command = new SqlCommand(userdata, con);
                string p = command.ExecuteScalar().ToString();
               
                SqlCommand em = new SqlCommand("select Email from Userdata where Username='" +Session["New"]+ "'",con);
                string ema = em.ExecuteScalar().ToString();
                email.Text =ema;

                SqlCommand ph = new SqlCommand("select Phone_number from Userdata where Username='" + Session["New"] + "'", con);
                string phno = ph.ExecuteScalar().ToString();
                mobileno.Text = phno;

                con.Close();*/
            }

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserdataConnectionString"].ConnectionString);
            conn.Open();
            string updatequerry = "update Userdata SET Username =@name , Email= @email , Phone_number = @mobno ,Gender= @gender where Username='" + Session["New"] + "'";
            SqlCommand com = new SqlCommand(updatequerry, conn);
            com.Parameters.AddWithValue("@name", username.Text);
            com.Parameters.AddWithValue("@email", email.Text);
            com.Parameters.AddWithValue("@mobno", mobileno.Text);
            com.Parameters.AddWithValue("@gender", list.SelectedItem.ToString());
            com.ExecuteNonQuery();
            Response.Write("Update sucessfully");
            conn.Close();
        }

        protected void logoutbtn_Click(object sender, EventArgs e)
        {

            Session["New"] = null;
            Response.Redirect("Paradise.aspx");
        }
    }
}