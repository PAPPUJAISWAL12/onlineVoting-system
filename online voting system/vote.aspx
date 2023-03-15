<%@ Page Title="" Language="C#" MasterPageFile="~/onlinevotingsystem.Master" AutoEventWireup="true" CodeBehind="vote.aspx.cs" Inherits="online_voting_system.vote" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
       <header class="vote-color">
          
           
            
            <div class="container">
                <div class="row ">
                   <div class="col-sm-3"></div>
                  <div class="col-sm-6 vote shadow"> 
                      <div style="padding:20px;">
                      <h3> Welcome <asp:LoginName ID="LoginName1" runat="server" ForeColor="Red" /> To Online vote Page</h3> 
                      <hr />
                       
                      Select_Candidate to vote:
                      <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control w-50" DataSourceID="SqlDataSource1" DataTextField="Cparty" DataValueField="Cid"></asp:DropDownList>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-LPT24O2\SQLEXPRESS;Initial Catalog=onlinevotingSystem;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Cparty], [Cid] FROM [candidate]" ></asp:SqlDataSource>
                      <asp:Button runat="server"  ID="voter" CssClass="btn btn-warning margin-top" Text="Submit" OnClick="voter_Click1" />
                          <label id="lblmessage" runat="server"></label>
                     </div>
                </div>
                    <div class="col-sm-3"></div>

                </div>
            </div>
      </header>
   
   

</asp:Content>
