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
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con;
        //string cs = "Data Source=NEOPRISM-VIJAY\\VAMSHI1;Initial Catalog=onlineAddressBook;Integrated Security=True";
        string cs = "Data Source=CHINTALAS\\SQLEXPRESS;Initial Catalog=onlineAddressBook;Integrated Security=True";
        SqlCommand insertregistration;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(cs);
                string query = "insert into registration(name,userid,password,confpass,passwordhint) values (@name,@userid,@password,@confpassword,@passwordhint)";
                insertregistration = new SqlCommand(query, con);
                con.Open();
                insertregistration.Parameters.AddWithValue("@name", txtbxname.Text);
                insertregistration.Parameters.AddWithValue("@userid", txtbxuserid.Text);
                insertregistration.Parameters.AddWithValue("@password", txtbxpassword.Text);
                insertregistration.Parameters.AddWithValue("@confpassword", txtbxconfirmpassword.Text);
                insertregistration.Parameters.AddWithValue("@passwordhint", txtbxpasswordhint.Text);
                insertregistration.ExecuteNonQuery();
                Response.Write("Registered succesfully");
                con.Close();

            }
            catch (SqlException exe)
            {
                Response.Write(exe.Message);
            }
            try
            {
                con = new SqlConnection(cs);
                string querytable = "create table " + txtbxuserid.Text + "(id int primary key,name varchar(50),phoneumber nvarchar(10), email nvarchar(320),address varchar(100))";
                SqlCommand creatingusertable = new SqlCommand(querytable, con);
                con.Open();
                //creatingusertable.Parameters.AddWithValue("@userid", txtbxuserid.Text);
                creatingusertable.ExecuteNonQuery();
                Response.Write("table created" + txtbxuserid.Text);
                con.Close();
            }
            catch (SqlException exe)
            {
                Response.Write(exe.Message);
            }
        }
    }
}