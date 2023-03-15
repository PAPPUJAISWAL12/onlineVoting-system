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
	public partial class login : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

	
		protected void btnsubmit_Click1(object sender, EventArgs e)
		{
			string constring= @"Data Source=DESKTOP-LPT24O2\SQLEXPRESS;Initial Catalog=onlinevotingSystem;Integrated Security=True";
			SqlConnection conn = new SqlConnection(constring);
					conn.Open();
					SqlCommand cmd = new SqlCommand("", conn);
					cmd.CommandText = "Select * from Voter_List where VEmailAddress=@VEmailAddress AND Vpassword=@password";
					cmd.Parameters.AddWithValue("@VEmailAddress", txtusername.Text);
					cmd.Parameters.AddWithValue("@password", password.Text);

					SqlDataReader dr = cmd.ExecuteReader();
					if (dr.Read())
					{
						Session["VEmailAddress"] = txtusername.Text.Trim();
						lblmessage.Text = "login successfully";
						Session["UserID"] = Convert.ToInt32(dr["VId"]);	
						FormsAuthentication.RedirectFromLoginPage(txtusername.Text, chk.Checked);
						return;
					}
					else
					{
						lblmessage.Text = "username or password is incorrect";
					}

				conn.Close();
				
			

			
		}
	}
}