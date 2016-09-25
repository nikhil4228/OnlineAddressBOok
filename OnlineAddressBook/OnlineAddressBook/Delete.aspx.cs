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
    public partial class Delete : System.Web.UI.Page
    {
        SqlConnection con;
        string cs = "Data Source=CHINTALAS\\SQLEXPRESS;Initial Catalog=onlineAddressBook;Integrated Security=True";
        string usertable = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string tablename = Request.Cookies["usertablename"].Value;
            usertable = tablename;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(cs);
            string query = "delete from " + usertable + " where id=@id and name=@name";
            SqlCommand del = new SqlCommand(query, con);
            del.Parameters.AddWithValue("@id", txtbxid.Text);
            del.Parameters.AddWithValue("@name", txtbxname.Text);
            con.Open();
            if (del.ExecuteNonQuery() != 0)
            {
                Response.Write("contact with id: " + txtbxid.Text + " and name: " + txtbxname.Text + "has been deleted");
            }
            else
            {
                Response.Write("no record with details found");
            }
        }
    }
}