﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCandidateDetails.aspx.cs" Inherits="online_voting_system.CandidateDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-reboot.min.css" rel="stylesheet" />
    <link href="css/bootstrap-grid.min.css" rel="stylesheet" />
    <title>Candidate</title>
    <style type="text/css">
        .wrapper{
            margin:30px auto;
            width:400px;
        }
        .btn-sub{
             margin:30px auto;
            width:300px;

        }
    </style>
</head>
<body>
      <form id="form1" runat="server">
        <div class="wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h3>Add Candidate Details</h3>
                        <hr />
                        Candidate Name:
                        <input name="name" id="canname" runat="server" class="form-control" type="text"  />
                        candidate Party:
                        <input name="Party" id="Party" type="Text" runat="server" class="form-control"  />
                        Symbol:
                        <input name="Symbol" id="file" type="text" runat="server" class="form-control" />
                     
                        <div class="btn-sub">
                            <asp:Button ID="Btn1" runat="server" Text="Submit"  class="btn btn-warning  w-25" OnClick="Btn1_Click" />                     
                            <a class="btn btn-secondary" href="candidateDetails.aspx">Cancel</a></div>
                        <div style="color:red">
                            <label id="message" runat ="server" Text=""></label>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </form>
       <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.bundle.js"></script>
</body>
</html>
