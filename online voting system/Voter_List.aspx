<%@ Page Title="" Language="C#" MasterPageFile="~/onlinevotingsystem.Master" AutoEventWireup="true" CodeBehind="Voter_List.aspx.cs" Inherits="online_voting_system.Voter_List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
  <div class="conatainer">
      <div class="row">
          <div class="col-sm-12">
              <div class="wrapper" style="margin:100px auto; width:600px">
                  <h1>Voter List</h1>
                  <hr />
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Vid"  DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                      <AlternatingRowStyle BackColor="#DCDCDC" />
                      <Columns>
                          <asp:BoundField DataField="Vid" HeaderText="Id" ReadOnly="True" SortExpression="Vid" />
                          <asp:BoundField DataField="VName" HeaderText="Voter_Name" SortExpression="VName" />
                          <asp:BoundField DataField="VEmailAddress" HeaderText="EmailAddress" SortExpression="VEmailAddress" />
                          <asp:BoundField DataField="VcitizenshipNo" HeaderText="citizenshipNo" SortExpression="VcitizenshipNo" />
                          <asp:BoundField DataField="Vpassword" HeaderText="password" SortExpression="Vpassword" />
                          <asp:BoundField DataField="VDOB" HeaderText="DOB" SortExpression="VDOB" DataFormatString="{0:d}" />
                          <asp:BoundField DataField="Votetime" HeaderText="Votetime" SortExpression="Votetime" />
                          <asp:BoundField DataField="voterEid" HeaderText="voterEid" SortExpression="voterEid" />
                          <asp:BoundField DataField="SelectedCandidateId" HeaderText="SelectedCandidateId" SortExpression="SelectedCandidateId" />
 
                      </Columns>

                      <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                      <HeaderStyle BackColor="#f5b024" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                      <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                      <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                      <SortedAscendingCellStyle BackColor="#F1F1F1" />
                      <SortedAscendingHeaderStyle BackColor="#0000A9" />
                      <SortedDescendingCellStyle BackColor="#CAC9C9" />
                     

                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlinevotingSystemConnectionString %>" SelectCommand="SELECT * FROM [Voter_List]"></asp:SqlDataSource>
               </div>
          </div>
      </div>

  </div>
</asp:Content>
