<%@ Page Title="" Language="C#" MasterPageFile="~/onlinevotingsystem.Master" AutoEventWireup="true" CodeBehind="service.aspx.cs" Inherits="online_voting_system.service" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
     
<!-- start 1st services page -->
<section class="services">
  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-12">
        <div class="text-center">
          <div class="services-trans">
            <div class="services-tr ">
              <h3 class="bold ">Welcome To Our services</h3>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- starting description -->
  <div class="container">
    <div class="row">
      <div class="col-sm-6">        
        <h1>Do it Yourself</h1>  
        <br>
        <br>
        <br>
        <div class="intro card">
          <p>If you prefer to complete the set up of your election or meeting vote yourself, you, or your designate, will add the election or meeting details and dates, design the ballots and the notices, and create the voter list. You pay, launch the vote and answer voter questions. You can have ElectionBuddy automatically share results with your voters. If you need help, use our knowledge base or ask questions
            and receive answers via email.
           Investigate the “Do It Yourself”
            option by signing up and creating a free test election or watch a video 
            of a meeting vote or election vote in action.
          </p>           
         </div>
        <div class="button">
           <asp:Button runat="server"  CssClass="btn-warning btn-service" ID="btncreate" Text="Create a Test Election" OnClick="btncreate_Click"/>
        </div>        
     </div>
      <!-- close description -->
      <div class="col-sm-6">
        <!-- using margin top -->
        <div class="margin-top">
        <img src="image/undraw_voting_nvu7.svg" alt="undraw" class="w-100">
      </div>
      </div>
    </div>
  </div>
</section>
<!-- end 1st services page -->
<hr/>
<!-- 2nd starting services page -->
<section>
  <div class="services">
    <div class="container">
      <div class="row">
        <div class="col-sm-6">
          <img src="image/undraw_election_day_w842.svg" class="w-100" alt="undraw">
        </div>
        <div class="col-sm-6">
          <h1>Inquire about Setup Support</h1>
          <br>
          <br>
          <div class="intro card">
            <p>If you want to do most of it yourself, but want to be sure
              it’s right, we can do that too. An Election Expert can
              review your election setup via email or an online meeting. They can consult with you to review your requirements, provide guidance, ensure that you have created the optimal election or meeting flow, and be standing by when the meeting or election opens. Optionally add on-call email support
              for the duration of your meeting or election.</p>              
          </div>
          <!-- button link  -->
           <div class="button">
             <asp:Button runat="server" ID="btninquire" CssClass="btn-warning btn-service" Text="Inquire About Setup Support" OnClick="btninquire_Click" />
           </div>
           <!-- close button link -->
        </div>
      </div>
    </div>
  </div>
</section>
<!-- 2nd end page -->

</asp:Content>
