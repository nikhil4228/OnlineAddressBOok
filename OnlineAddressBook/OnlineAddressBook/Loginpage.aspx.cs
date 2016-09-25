using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace OnlineAddressBook
{
    public partial class Loginpage : System.Web.UI.Page
    {
        SqlConnection con;
        //string cs = "Data Source=NEOPRISM-VIJAY\\VAMSHI1;Initial Catalog=onlineAddressBook;Integrated Security=True";
        string cs = "Data Source=CHINTALAS\\SQLEXPRESS;Initial Catalog=onlineAddressBook;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                con = new SqlConnection(cs);
                //Response.Write("connected");
            }
            catch (SqlException exe)
            {
                Response.Write(exe.Message);
            }

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string query = "select userid,password from registration where userid = @userid";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.Parameters.AddWithValue("@userid", txtbxuserid.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string useridretreived = dr[0].ToString();
                string passwordretreived = dr[1].ToString();
                if (useridretreived == txtbxuserid.Text && passwordretreived == txtbxpassword.Text)
                {

                    HttpCookie cookieobj = new HttpCookie("usertablename", txtbxuserid.Text);
                    Response.Cookies.Add(cookieobj);
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Write("check password");
                }
            }
            else
            {
                Response.Write("enter the correct userid");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Forgotpassword.aspx");
        }
    }
}