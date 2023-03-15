using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Web.Security;

namespace online_voting_system
{
	public partial class Admin : System.Web.UI.Page
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
				cmd.CommandText = "SELECT * FROM Election";
				SqlDataReader rd;
				con.Open();
				rd = cmd.ExecuteReader();
				Elist.InnerHtml = "<table style='border: 2px solid black;' width=100%;>";
				Elist.InnerHtml += "<tr style='border:1px solid orange'>";
				Elist.InnerHtml += "<th> ID</th>";
				Elist.InnerHtml += "<th>Name </th>";
				Elist.InnerHtml += "<th>Date </th>";
				Elist.InnerHtml += "<th>StartTime </th>";
				Elist.InnerHtml += "<th>EndTime </th>";
				Elist.InnerHtml += "<th>Status </th>";
				Elist.InnerHtml += "<th>Delete </th>";
				Elist.InnerHtml += "<th>Edit</th>";

				Elist.InnerHtml += "</tr>";
				while (rd.Read())
				{
					Elist.InnerHtml += "<tr style='border:1px solid orange ; background-color:#555;'>";
					Elist.InnerHtml += "<td  >" + rd[0].ToString()+ " </td>";
					Elist.InnerHtml += "<td  >" + rd[1].ToString()+ " </td>";
					Elist.InnerHtml += "<td  >" + rd[2].ToString()+"</td>";
					Elist.InnerHtml += "<td  >" + rd[3].ToString()+  "</td>";
					Elist.InnerHtml += "<td  >" + rd[4].ToString() + "</td>";
					Elist.InnerHtml += "<td  >" + rd[5].ToString() + "</td>";
					Elist.InnerHtml += "<td  ><a href='Delete.aspx?Eid=" + rd[0].ToString()+"&Ename="+rd[1].ToString()+ "'>Delete </a></td>";
					Elist.InnerHtml += "<td  ><a href='Edit.aspx'?Eid=" + rd[0].ToString()+"&Ename="+rd[1].ToString()+"'>Edit</a> </td>";
					Elist.InnerHtml += "</tr>";
				}
				Elist.InnerHtml += "</table>";				
				con.Close();
			}
			catch(Exception ex)
			{
				Response.Write(ex.Message);
			}
		}

		protected void btn1_Click(object sender, EventArgs e)
		{
			FormsAuthentication.SignOut();
			Response.Redirect("index.aspx");
		}
	}
}