using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.Common;
using System.Net.Mail;
using System.Data.SqlClient;


namespace online_voting_system
{
    public partial class registration1 : System.Web.UI.Page
    {
		


		

		protected void Page_Load(object sender, EventArgs e)
        {
			
        }

		protected void submit_Click(object sender, EventArgs e)
		{
			try {
				if (Convert.ToDateTime(txtdate.Text).AddYears(18) > System.DateTime.Today)
				{
					lblmessage.Text  ="You are not eligible to vote.";
					return;
				}
				
				string constring = @"Data Source=DESKTOP-LPT24O2\SQLEXPRESS;Initial Catalog=onlinevotingSystem;Integrated Security=True";
				SqlConnection con = new SqlConnection(constring);
				SqlCommand cmd = new SqlCommand("", con);
				Random r = new Random();
				
					cmd.CommandText = "insert into Voter_List(Vid, VName, VEmailAddress, VcitizenshipNo, Vpassword, VDOB, Votetime, voterEid, SelectedCandidateId) values((select( case when max(vid) is null then 1 else max(vid) + 1 end) from Voter_List),@Vname,@VEmailAddress,@VcitizenshipNo,@Vpassword,@vdob,null,@VoterEid,null)";
					cmd.Parameters.AddWithValue("@Vname", txtusername.Text);
					cmd.Parameters.AddWithValue("@VEmailAddress", txteaddress.Text);
					cmd.Parameters.AddWithValue("@VcitizenshipNo", txtcitizen.Text);
					cmd.Parameters.AddWithValue("@Vpassword", Txtpwd.Text);
				 // cmd.Parameters.AddWithValue("@VDOB", Calendar1.SelectedDate.ToShortDateString());
				    cmd.Parameters.AddWithValue("@VDOB", txtdate.Text);
				    cmd.Parameters.AddWithValue("@voterEid",DropDownList1.SelectedValue);
					con.Open();
					cmd.ExecuteNonQuery();
				   
					lblmessage.Text = "Welcome to Online Voting System";
					con.Close();			
			}
			catch (Exception ex)
			{
				lblmessage.Text=(ex.Message);
			}
		}
	}
}
