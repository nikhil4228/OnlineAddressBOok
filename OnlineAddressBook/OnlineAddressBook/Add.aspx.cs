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
    public partial class Add : System.Web.UI.Page
    {
        SqlConnection con;
        //string cs = "Data Source=NEOPRISM-VIJAY\\VAMSHI1;Initial Catalog=onlineAddressBook;Integrated Security=True";
        string cs = "Data Source=CHINTALAS\\SQLEXPRESS;Initial Catalog=onlineAddressBook;Integrated Security=True";
        SqlCommand getdata;
        string usertable = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            string tablename = Request.Cookies["usertablename"].Value;
            usertable = tablename;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(cs);
                string query = "insert into " + usertable + "(id,name,phoneumber,email,address) values (@id,@name,@phonenumber,@email,@address)";
                con.Open();
                getdata = new SqlCommand(query, con);
                getdata.Parameters.AddWithValue("@id", txtbxid.Text);
                getdata.Parameters.AddWithValue("@name", txtbxname.Text);
                getdata.Parameters.AddWithValue("@phonenumber", txtbxphonnumber.Text);
                getdata.Parameters.AddWithValue("@email", txtbxemail.Text);
                getdata.Parameters.AddWithValue("@address", txtbxaddress.Text);
                getdata.ExecuteNonQuery();
                con.Close();
                Response.Write(txtbxname.Text + "has been added successfully");
            }
            catch (SqlException exe)
            {
                Response.Write(exe.Message);
            }

        }
    }
}