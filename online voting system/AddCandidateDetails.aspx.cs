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
	public partial class CandidateDetails : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Btn1_Click(object sender, EventArgs e)
			
		{
			try
			{
				string constring = @"Data Source=DESKTOP-LPT24O2\SQLEXPRESS;Initial Catalog=onlinevotingSystem;Integrated Security=True";
				SqlConnection con = new SqlConnection(constring);
				SqlCommand cmd = new SqlCommand("", con);
				cmd.CommandText = "insert into candidate(Cid,cname,Cparty,Csymbol) values((select (case when max(Cid) is null then 1 else max(cid)+1 end)from candidate ),@cname,@party,@symbol)";
				cmd.Parameters.AddWithValue("@cname", canname.Value);
				cmd.Parameters.AddWithValue("@party", Party.Value);
				cmd.Parameters.AddWithValue("@symbol", file.Value);
				con.Open();
				cmd.ExecuteNonQuery();
				message.InnerText = "<script>alert('Candidate details added.');</script>";
				
				Response.Redirect("candidatDetails.aspx");
				con.Close();
			}
			catch (Exception ex)
			{
				Response.Write(ex.Message);
			}
		}
	}
}