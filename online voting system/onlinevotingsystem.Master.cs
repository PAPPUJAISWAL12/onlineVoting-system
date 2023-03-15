using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace online_voting_system
{
    public partial class onlinevotingsystem : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			if (HttpContext.Current.User.Identity.IsAuthenticated)
			{
				btn1.Visible = true;
				btnlog.Visible = false;

			}
			else
			{
				btnlog.Visible = true;
				btn1.Visible = false;
				
			}
        }

		protected void btn1_Click(object sender, EventArgs e)
		{
			FormsAuthentication.SignOut();
			Response.Redirect("index.aspx");
		}
	}
}