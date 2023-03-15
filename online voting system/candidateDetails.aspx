﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="candidateDetails.aspx.cs" Inherits="online_voting_system.candidateDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title></title>
    <style>
    body {
  margin: 0;
  font-family: "Lato", sans-serif;
}

.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
 background-color:#cbc4c4;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background:linear-gradient(to left,#ffd800,#f5b024);
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

div.content {
  padding: 1px 16px;
 margin:0px auto;
 margin-left:100px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
} 
.wrapper{
   
}
.table{
    width:400px;
}
.btn{
  margin-right:30px;  
  
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="sidebar">
              <a class="active" href="Admin.aspx">Election</a>
              <a href="CandidateDetails.aspx">Candidate details</a>        
              <a href="Voter_List.aspx">Voter_List</a>
              <asp:LinkButton ID="btn1" runat="server" Visible="false" CssClass="btn "  Width="107px" style="margin-right: 0px" OnClick="btn1_Click"  >Logout</asp:LinkButton>

            </div>
            <div class="content">
                <div class="wrapper">
                    <div class="container" id="home"  >                     
                        <div class="mb-3 mt-5 clearfix">
                        <div class="content">
                          <div class="container wrapper" id="candidate">
                            <div class="row">
                                 <div class="col-sm-12">
                                    <div class="mb-3 mt-5 clearfix">
                                        <h2>Candidate Details</h2>
                                        
                                        <a class="btn btn-warning" href="AddCandidateDetails.aspx">Add Candidate</a>
                                        <hr />
                                        <div class="table " runat="server" id="clist"> 
                                            
                                       </div>
                                        <asp:Label runat="server" Text="" ID="lblmessage"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                     </div>                      
                   </div>
                </div>
            </div>
        </div>    
    </form>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/bootstrap.bundle.js"></script>
     <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    
</body>
</html>