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
	public partial class result : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			try
			{
				string constring = @"Data Source=DESKTOP-LPT24O2\SQLEXPRESS;Initial Catalog=onlinevotingSystem;Integrated Security=True";
				SqlConnection con = new SqlConnection(constring);
				SqlCommand cmd = new SqlCommand("", con);
				cmd.CommandText = "select cparty,(Select count(selectedcandidateid) from voter_list where selectedcandidateid=candidate.cid) as VoteCount from candidate;";
				SqlDataReader rd;
				con.Open();
				rd = cmd.ExecuteReader();
				clist.InnerHtml = "<table style='border: 2px solid Black;' width=100%;>";
				clist.InnerHtml += "<tr >";
				clist.InnerHtml += "<th> Party</th>";
				clist.InnerHtml += "<th>Vote_Count </th>";

				clist.InnerHtml += "</tr>";
				while (rd.Read())
				{
					clist.InnerHtml += "<tr>";
					clist.InnerHtml += "<td>" + rd[0].ToString() + " </td>";
					clist.InnerHtml += "<td>" + rd[1].ToString() + " </td>";
				
					clist.InnerHtml += "</tr>";
				}

				clist.InnerHtml += "</table>";
				con.Close();
			}
			catch (Exception ex)
			{
				lblmessage.Text = (ex.Message);
			}


		}
	}
}