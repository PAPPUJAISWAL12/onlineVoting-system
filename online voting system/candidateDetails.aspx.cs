using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Data.Common;

namespace online_voting_system
{
	public partial class candidateDetails : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (HttpContext.Current.User.Identity.IsAuthenticated)
			{
				btn1.Visible = true;
			}
			else
			{
				btn1.Visible = false;
			}

		try
			{
				string constring = @"Data Source=DESKTOP-LPT24O2\SQLEXPRESS;Initial Catalog=onlinevotingSystem;Integrated Security=True";
				SqlConnection con = new SqlConnection(constring);
				SqlCommand cmd = new SqlCommand("",con);
				cmd.CommandText = "SELECT * FROM Candidate";
				SqlDataReader rd;
				con.Open();
				rd = cmd.ExecuteReader();
				clist.InnerHtml = "<table style='border: 2px solid Black;' width=100%;>";
				clist.InnerHtml += "<tr >";
				clist.InnerHtml += "<th> ID</th>";
				clist.InnerHtml += "<th>Candidate_Name </th>";
				clist.InnerHtml += "<th>Candidate_Party </th>";
				clist.InnerHtml += "<th>Symbol </th>";				
				clist.InnerHtml += "<th>Delete </th>";
				clist.InnerHtml += "<th>Edit</th>";
				clist.InnerHtml += "</tr>";
				while (rd.Read())
				{
					clist.InnerHtml += "<tr>";
					clist.InnerHtml += "<td>"+rd[0].ToString()+ " </td>";
					clist.InnerHtml += "<td>" +rd[1].ToString()+ " </td>";
					clist.InnerHtml += "<td>" +rd[2].ToString()+"</td>";
					clist.InnerHtml += "<td>"+rd[3].ToString()+"</td>";
					clist.InnerHtml += "<td><a href='deletecan.aspx?Cid="+rd[0].ToString()+"&Cname="+rd[1].ToString()+"'>Delete</a> </td>";
					clist.InnerHtml += "<td> <a href='EditCandidate.aspx?Cid="+rd[0].ToString()+"&Cname="+rd[1].ToString()+"'>Edit</a></td>";
					clist.InnerHtml += "</tr>";
				}

				clist.InnerHtml += "</table>";
				con.Close();
			}
			catch(Exception ex)
			{
				lblmessage.Text=(ex.Message);
			}


		}

		protected void btn1_Click(object sender, EventArgs e)
		{
			FormsAuthentication.SignOut();
			Response.Redirect("index.aspx");
		}
	}
}