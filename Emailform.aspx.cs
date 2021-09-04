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
    public partial class Emailform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UserdataConnectionString"].ConnectionString);
                con.Open();
                string useremail="select Email from Userdata where Username ='"+username.Text+"'";
                con.Close();
            }


        }

        protected void login_Click(object sender, EventArgs e)
        {
           SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UserdataConnectionString"].ConnectionString);
                con.Open();
                string useremail = "select count(*) from Userdata where Username ='" +username.Text+ "'";
                SqlCommand command = new SqlCommand(useremail, con);
                int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
                con.Close();
                if (temp == 1)
                {
                    con.Open();
                    string passwordquerry = "select Password from Userdata where Username ='" +username.Text+ "'";
                    SqlCommand passcomm = new SqlCommand(passwordquerry, con);
                    string password = passcomm.ExecuteScalar().ToString().Replace(" ","");
                    if (password == pass.Text)
                    {
                        Session["New"] = username.Text;
                        Response.Write("password is correct");
                        Response.Redirect("user.aspx");
                    }
                    else
                    {
                        Response.Write("password is incorrect");
                    }

                }
                else
                {
                    Response.Write("Username is incorrect");
                }

                
        }

        protected void newacc_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}