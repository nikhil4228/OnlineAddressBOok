using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAddressBook
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string tablename = Request.Cookies["usertablename"].Value;
            Label1.Text = tablename + " logged out successfully";

        }
    }
}