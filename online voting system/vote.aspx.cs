using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.Sql;
using System.Data.Common;
using System.Data.SqlClient;

namespace online_voting_system
{
	public partial class vote : System.Web.UI.Page
	{
		const string constring = @"Data Source=DESKTOP-LPT24O2\SQLEXPRESS;Initial Catalog=onlinevotingSystem;Integrated Security=True";
		SqlConnection con = new SqlConnection(constring);
		SqlCommand cmd = new SqlCommand();
		SqlDataReader rd;
		public vote()
		{
			cmd.Connection = con;
		}
		protected void Page_Load(object sender, EventArgs e)
		{
			voter.Enabled = false;
			if (HttpContext.Current.User.Identity.Name.ToLower().Equals("jaiswalpappu186@gmail.com")) { 
				Response.Redirect("Admin.aspx");
			}
			if (!this.Page.User.Identity.IsAuthenticated)
			{
				FormsAuthentication.RedirectToLoginPage();
			}
			cmd.CommandText = "Select * from Election where status=1";
			con.Open();
			rd=cmd.ExecuteReader();
			if(rd.Read())
			{
				DateTime starttime = Convert.ToDateTime(rd["EDate"]);
				DateTime endtime = Convert.ToDateTime(rd["endTime"]);
				if (System.DateTime.Now>=starttime && System.DateTime.Now<=endtime)
					voter.Enabled = true;
				else
					voter.Enabled = false;
			}
		}

		protected void voter_Click1(object sender, EventArgs e)
		{
			try {
			string constring = @"Data Source=DESKTOP-LPT24O2\SQLEXPRESS;Initial Catalog=onlinevotingSystem;Integrated Security=True";
			SqlConnection con = new SqlConnection(constring);
			SqlCommand cmd = new SqlCommand("", con);
			cmd.CommandText = "Update voter_List set votetime=@votetime,selectedCandidateId=@selectCandidate where Vid=@Vid and SelectedCandidateId is null";
			cmd.Parameters.AddWithValue("@votetime", DateTime.Now);
			cmd.Parameters.AddWithValue("@Vid",Convert.ToInt32( Session["UserID"]));
			cmd.Parameters.AddWithValue("@selectCandidate", DropDownList1.SelectedValue);
			con.Open();
			int count=cmd.ExecuteNonQuery();
				if (count == 1)
					lblmessage.InnerText = "Success";
				else
					lblmessage.InnerText = "You have already voted.";
			con.Close();

			}
			catch( Exception ex)
			{
				lblmessage.InnerText = (ex.Message);
			}
		}
	}
}