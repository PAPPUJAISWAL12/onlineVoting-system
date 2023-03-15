<%@ Page Title="" Language="C#" MasterPageFile="~/onlinevotingsystem.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="online_voting_system.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <!-- home page slider -->
        <section id="Home" class="section slide">
               <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                        <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                    </ol>
                 <div class="carousel-inner carousel ">
                    <div class="carousel-item active  ">
                        <img src="image/b.jpg"  class=" w-100 bg-transparent " height="400px" />                        
                        <div class="carousel-caption ">
                            <div class="">
                            <div class="text-center ">
                            <div class="continer-fluid">
                                <h2  class="bold">Welcome To Online voting system</h2>
                                <div class="button-moreinfo">
                                    
                                </div>
                            </div>  
                          </div>
                         </div>
                     </div>
                            
                        
                    
                   </div>
                 <div class="carousel-item">
                     <img src="image/h.png" class="w-100 bg-transparent" height="400px" />
                 <div class="carousel-caption d-none d-md-block">
       
                 </div>
                 </div>
              <div class="carousel-item">
                  <img src="image/Online.voting.jpg" class=" w-100 bg-transparent" height="400px" />
                 <div class="carousel-caption d-none d-md-block">
              </div>
              </div>
            </div>
                 <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                 </a>
                 <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                      <span class="carousel-control-next-icon" aria-hidden="true"></span>
                      <span class="sr-only">Next</span>
                 </a>
                </div>
            </section>
      <!-- end home page slider -->
      <br/>
    <!-- starting page -->
    <div class="container">
      <div class="row">
        <div class="col-sm-6">
          <div class="">
            <h1>
              The Easiest Way to Election Excellence  
            </h1>
          <div class="intro">
            <div class="intro card shadow">
              <p class="animate__animated animate__fadeInLeft">
                <b>Online Voting System</b> ensures election integrity, 
                saves serious hours and improves turnout for
                 election voting or for meeting voting. 
                It’s free to test and vote.              

              </p>
              </div>
          </div>
              <br>
              <asp:Button ID="btntry" CssClass="btn-warning btn-service" runat="server" ForeColor="White" Text="Try OnlineVoting System for Free" OnClick="btntry_Click"/>
             
          </div>
        </div>
        
        <div class="col-sm-6">
          <div class="margin-top"> <!-- margin top use  -->
            <img src="image/undraw_Share_opinion_re_4qk7.svg" alt="undraw" class="w-100">          
          </div>
        </div>
      </div>
    </div>
    <hr>
    <br>
      <div class="information">
        <div class="container">
          <div class="row">                                                           
            <div class="col-sm-6">
              <img src="image/undraw_contract_uy56.svg" alt="undraw" class="w-100">
            </div>  
            <div class="col-sm-6">
              <div class="">                            
                <h1> <b>What is Online Voting System</b>
                <br>
                </h1>
                  <br>
               <div class="intro">
                 <div class="intro card shadow">                                                          
                
                    <br/>
                    <p class="animate__animated animate__fadeInRight" style="animation-delay:3s;" >Online voting systems are software platforms used to securely conduct votes and elections. As a digital platform, they eliminate the need to cast your votes using paper or having to gather in person.<br>

                    They also protect the integrity of your vote by preventing voters from being able to vote multiple times.
                        <br/>
                    
                    Many secure voting platform vendors provide supportive vote management consulting services that help organizations design and implement their voting procedures.
                        <br/>
                            
                    These services help organizations save time, stick to best practices, and meet internal requirements and/or external regulations, such as third-party vote administration needs.</p>
                  </div> 
                </div>    
              </div>
          </div>              
          </div>
        </div>
      </div> 
      <!-- close starting page -->
      <br/>
    <div>
        <!-- next label page -->
     <section class="test">
         <div class="nextpage">
             <div class="nextlbl">
                 <h1 class="">Take Election to next level</h1>
                              
             </div>            
         </div>

     </section>
           <div class="container-fluid" style="margin:200px auto; width:600px;">
        <div class="row">
            <div class="col-md-12 wrapper">
                <h3>Election Details</h3>
                <hr />
                <div class="container" >
                    <h5 runat="server" id="txtDate">
                        Election Start Date And Time:
                    </h5>

                    
                </div>
                
            </div>
        </div>
    </div>
    <div class="container" style="margin:0px auto; width:600px;">
        <div class="row">
            <div class="col-md-12 wrapper">
                <div runat="server">
                    <div class="container">
                      <h3 class=" ">Candidate Details</h3>
                        <hr />
                    </div>
                   
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Cid">
                        <Columns>
                            <asp:BoundField DataField="Cid" HeaderText="Cid" ReadOnly="True" SortExpression="Cid" />
                            <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
                            <asp:BoundField DataField="Cparty" HeaderText="Cparty" SortExpression="Cparty" />
                            <asp:BoundField DataField="Csymbol" HeaderText="Csymbol" SortExpression="Csymbol" />
                        </Columns>
                    </asp:GridView>
                   
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlinevotingSystemConnectionString %>" SelectCommand="SELECT * FROM [candidate]"></asp:SqlDataSource>
                   

                </div>
            </div>
        </div>
    </div>
    </div>
  
</asp:Content>
