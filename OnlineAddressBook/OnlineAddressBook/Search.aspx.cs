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
    public partial class Search : System.Web.UI.Page
    {
        SqlConnection con;
        //string cs = "Data Source=NEOPRISM-VIJAY\\VAMSHI1;Initial Catalog=onlineAddressBook;Integrated Security=True";
        string cs = "Data Source=CHINTALAS\\SQLEXPRESS;Initial Catalog=onlineAddressBook;Integrated Security=True";
        string usertable = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            string tablename = Request.Cookies["usertablename"].Value;
            usertable = tablename;
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            ListBox1.Items.Clear();
            con = new SqlConnection(cs);
            string query = "select * from " + usertable + " where id = @id and name =@name";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", txtbxid.Text);
            cmd.Parameters.AddWithValue("@name", txtbxname.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                ListBox1.Items.Add("id :" + dr[0].ToString());
                ListBox1.Items.Add("NAME : " + dr[1].ToString());
                ListBox1.Items.Add("PHONE NUMBER : " + dr[2].ToString());
                ListBox1.Items.Add("EMAIL :" + dr[3].ToString());
                ListBox1.Items.Add("ADDRESS : " + dr[4].ToString());
            }
            else
            {
                Response.Write("check the name and id");
            }
        }
    }
}