<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="online_voting_system.Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <link rel="stylesheet"  href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
     <script  src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <title></title>
    <style>
.top{
    margin-top:250px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6 top">
                        <h2>Delete Record</h2>
                        <hr />
                           <div class="alert alert-danger">
                                <p> Are you sure you want to delete this Election Record?</p>
                               <div id="elist" runat="server"></div>
                               <asp:Button ID="submit" class="btn btn-danger" runat="server" Text="Yes" OnClick="submit_Click1" />
                                <a href="Admin.aspx" class="btn btn-danger">No</a>
                               
                            </div>
                    </div>
                    <div class="col-md-3"></div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
