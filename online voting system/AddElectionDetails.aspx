<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddElectionDetails.aspx.cs" Inherits="online_voting_system.AddElectionDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-reboot.min.css" rel="stylesheet" />
    <link href="css/bootstrap-grid.min.css" rel="stylesheet" />
    <title>Election</title>
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
                        <h3>Add Election Details</h3>
                        <hr />
                        Election Name:
                        <input name="name" id="txtname" runat="server" class="form-control" type="text"  />
                        Election Date:
                        <input name="date" id="txtdate" type="date" runat="server" class="form-control"  />
                        Election satart Time:
                        <input name="starttime" id="txtstime" type="time" runat="server" class="form-control" />
                        Election End time:
                        <input name="endtime" type="time" id="txtetime"  runat="server" class="form-control" />
                        Status:
                        <asp:CheckBox ID="CheckBox1" runat="server" />

                        <div class="btn-sub">
                            <asp:Button ID="Btn1" runat="server" Text="Submit"  class="btn btn-warning  w-25" OnClick="Btn1_Click" />                     
                            <a class="btn btn-secondary" href="Admin.aspx">Cancel</a></div>
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
