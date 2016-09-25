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
    public partial class Listofaddress : System.Web.UI.Page
    {
        SqlConnection con;
        //string cs = "Data Source=NEOPRISM-VIJAY\\VAMSHI1;Initial Catalog=onlineAddressBook;Integrated Security=True";
        string cs = "Data Source=CHINTALAS\\SQLEXPRESS;Initial Catalog=onlineAddressBook;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            string tablename = Request.Cookies["usertablename"].Value;
            con = new SqlConnection(cs);
            string query = "select * from " + tablename;
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
    }
}