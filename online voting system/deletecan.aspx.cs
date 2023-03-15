using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;

namespace online_voting_system
{
	public partial class deletecan : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Clist.InnerHtml = "Candidate ID:" + Request.QueryString["CId"];
		}

		protected void submit_Click(object sender, EventArgs e)
		{
			string constring = @"Data Source=DESKTOP-LPT24O2\SQLEXPRESS;Initial Catalog=onlinevotingSystem;Integrated Security=True";
			SqlConnection con = new SqlConnection(constring);
			SqlCommand cmd = new SqlCommand("", con);
			cmd.CommandText = "delete from Candidate where Cid=@Cid";
			cmd.Parameters.AddWithValue("@Cid", Request.QueryString["Cid"]);
			con.Open();
			cmd.ExecuteNonQuery();
			con.Close();
			Response.Redirect("candidateDetails.aspx");
		}
	}
}