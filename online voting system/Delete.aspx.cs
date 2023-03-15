using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace online_voting_system
{
	public partial class Delete : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			elist.InnerHtml = "Election Id :" + Request.QueryString["Eid"];
		}
		

		protected void submit_Click1(object sender, EventArgs e)
		{

			string constring = @"Data Source=DESKTOP-LPT24O2\SQLEXPRESS;Initial Catalog=onlinevotingSystem;Integrated Security=True";
			SqlConnection con = new SqlConnection(constring);
			SqlCommand cmd = new SqlCommand("", con);
			cmd.CommandText = "delete from Election where Eid=@Eid";
			cmd.Parameters.AddWithValue("@Eid", Request.QueryString["Eid"]);
			con.Open();
			cmd.ExecuteNonQuery();
			con.Close();
			Response.Redirect("Admin.aspx");

		}
	}
}