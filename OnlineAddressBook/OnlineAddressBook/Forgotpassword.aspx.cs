using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OnlineAddressBook
{
    public partial class Forgotpassword : System.Web.UI.Page
    {
        SqlConnection con;
        //string cs = "Data Source=NEOPRISM-VIJAY\\VAMSHI1;Initial Catalog=onlineAddressBook;Integrated Security=True";
        string cs = "Data Source=CHINTALAS\\SQLEXPRESS;Initial Catalog=onlineAddressBook;Integrated Security=True";
        //string usertable = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            lblpassword.Visible = false;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(cs);
            string query = "select password from registration where userid = @userid and passwordhint = @hint";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@userid", txtbxuserid.Text);
            cmd.Parameters.AddWithValue("@hint", txtbxpasswordhint.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lblpassword.Text = dr[0].ToString();
                lblpassword.Visible = true;
            }
            else
            {
                lblpassword.Text = "please enter correct id and hint";
                lblpassword.Visible = true;
            }
        }

    }
}