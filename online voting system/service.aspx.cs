using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_voting_system
{
    public partial class service : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

		protected void btncreate_Click(object sender, EventArgs e)
		{
			Response.Redirect("registration.aspx");
		}

		protected void btninquire_Click(object sender, EventArgs e)
		{
			Response.Redirect("registration.aspx");
		}
	}
}