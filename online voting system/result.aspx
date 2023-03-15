<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="result.aspx.cs" Inherits="online_voting_system.result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-reboot.min.css" rel="stylesheet" />
    <link href="css/bootstrap-grid.min.css" rel="stylesheet" />
    
    <style>
        .center{
            margin:100px auto;
            width:400px;
        }
        h2{
            color:red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="center shadow">
            <div>
            <div style="padding:20px;">
            <h2>Voting Result</h2>
            <hr />
            <div class="" id="clist" runat="server">

            </div>
            <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
           </div>
         </div>
        </div>
    </form>
</body>
</html>
