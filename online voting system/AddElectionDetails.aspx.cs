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
	public partial class AddElectionDetails : System.Web.UI.Page
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
				cmd.CommandText = "Insert into Election(Eid,Ename,Edate,Starttime,Endtime,status) Values((select(case when max(eid)is null then 1 else max(eid)+1 end) from Election),@Ename,@Edate,@Starttime,@endtime,@status)";
				cmd.Parameters.AddWithValue("@Ename", txtname.Value);
				cmd.Parameters.AddWithValue("@Edate", txtdate.Value);
				cmd.Parameters.AddWithValue("@Starttime",txtdate.Value.ToString()+" "+ txtstime.Value);
				cmd.Parameters.AddWithValue("@Endtime", txtdate.Value.ToString() + " " + txtetime.Value);
				cmd.Parameters.AddWithValue("@status",CheckBox1.Checked);
				con.Open();
				cmd.ExecuteNonQuery();
				message.InnerText = "Election data is added";
				con.Close();
			}
			catch (Exception ex)
			{
				Response.Write(ex.Message);
			}

		}
	}
}