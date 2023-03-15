<%@ Page Title="" Language="C#" MasterPageFile="~/onlinevotingsystem.Master" AutoEventWireup="true" CodeBehind="ElectionDetails.aspx.cs" Inherits="online_voting_system.ElectionDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="margin-top:200px;">
        <div class="row">
            <div class="col-md-12">
                <h3>Election Details</h3>
                <hr />
                <div class="wrapper " >
                   <div class="container">
                    <h5 runat="server" id="txtDate">
                        Election Start Date And Time:
                    </h5>
                    <asp:Label runat="server" ID="lblmessage"></asp:Label>
                
               
                <asp:GridView runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Width="459px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="EDate" HeaderText="Election_Date" SortExpression="EDate" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="starttime" HeaderText="Election_StratTime" SortExpression="strattime" />
                        <asp:BoundField DataField="endtime" HeaderText="Election_EndTime" SortExpression="endtime" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />

                </asp:GridView>
                </div>
               </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlinevotingSystemConnectionString %>" SelectCommand="SELECT [EDate], [starttime], [endtime] FROM [Election]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="txtcandidate"  runat="server">
                    <h2 class="btn-warning w-25">Candidate Details</h2>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Cid" DataSourceID="SqlDataSource2" Width="437px">
                        <Columns>
                            <asp:BoundField DataField="Cid" HeaderText="Candidate_Id" ReadOnly="True" SortExpression="Cid" />
                            <asp:BoundField DataField="Cname" HeaderText="Candidate_Name" SortExpression="Cname" />
                            <asp:BoundField DataField="Cparty" HeaderText="Party" SortExpression="Cparty" />
                            <asp:BoundField DataField="Csymbol" HeaderText="Symbol" SortExpression="Csymbol" />
                        </Columns>
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:onlinevotingSystemConnectionString %>" SelectCommand="SELECT * FROM [candidate]"></asp:SqlDataSource>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
