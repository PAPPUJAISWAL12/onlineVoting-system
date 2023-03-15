<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="online_voting_system.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Election Details</title>
      <link rel="stylesheet"  href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
     <script  src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <style>
        .wrapper{
            margin:50px auto;
            width:400px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h3>Update Election Details</h3>
                        <hr />
                        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataSourceID="SqlDataSource1">
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:onlinevotingSystemConnectionString %>" DeleteCommand="DELETE FROM [Election] WHERE [EId] = @original_EId AND [EName] = @original_EName AND (([EDate] = @original_EDate) OR ([EDate] IS NULL AND @original_EDate IS NULL)) AND (([starttime] = @original_starttime) OR ([starttime] IS NULL AND @original_starttime IS NULL)) AND (([endtime] = @original_endtime) OR ([endtime] IS NULL AND @original_endtime IS NULL)) AND [Status] = @original_Status" InsertCommand="INSERT INTO [Election] ([EId], [EName], [EDate], [starttime], [endtime], [Status]) VALUES (@EId, @EName, @EDate, @starttime, @endtime, @Status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Election]" UpdateCommand="UPDATE [Election] SET [EName] = @EName, [EDate] = @EDate, [starttime] = @starttime, [endtime] = @endtime, [Status] = @Status WHERE [EId] = @original_EId AND [EName] = @original_EName AND (([EDate] = @original_EDate) OR ([EDate] IS NULL AND @original_EDate IS NULL)) AND (([starttime] = @original_starttime) OR ([starttime] IS NULL AND @original_starttime IS NULL)) AND (([endtime] = @original_endtime) OR ([endtime] IS NULL AND @original_endtime IS NULL)) AND [Status] = @original_Status" ProviderName="System.Data.SqlClient">
                            <DeleteParameters>
                                <asp:Parameter Name="original_EId" Type="Int32" />
                                <asp:Parameter Name="original_EName" Type="String" />
                                <asp:Parameter DbType="Date" Name="original_EDate" />
                                <asp:Parameter Name="original_starttime" Type="DateTime" />
                                <asp:Parameter Name="original_endtime" Type="DateTime" />
                                <asp:Parameter Name="original_Status" Type="Boolean" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="EId" Type="Int32" />
                                <asp:Parameter Name="EName" Type="String" />
                                <asp:Parameter DbType="Date" Name="EDate" />
                                <asp:Parameter Name="starttime" Type="DateTime" />
                                <asp:Parameter Name="endtime" Type="DateTime" />
                                <asp:Parameter Name="Status" Type="Boolean" />
                            </InsertParameters>

                            <UpdateParameters>
                                
                                <asp:Parameter Name="EName" Type="String" />
                                <asp:Parameter DbType="Date" Name="EDate" />
                                <asp:Parameter Name="starttime" Type="DateTime" />
                                <asp:Parameter Name="endtime" Type="DateTime" />
                                <asp:Parameter Name="Status" Type="Boolean" />
                                <asp:Parameter Name="original_EId" Type="Int32" />
                                <asp:Parameter Name="original_EName" Type="String" />
                                <asp:Parameter DbType="Date" Name="original_EDate" />
                                <asp:Parameter Name="original_starttime" Type="DateTime" />
                                <asp:Parameter Name="original_endtime" Type="DateTime" />
                                <asp:Parameter Name="original_Status" Type="Boolean" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <div class="btn-sub m-5">
                            <a class="btn btn-secondary" href="Admin.aspx">Cancel</a></div>
                        <div style="color:red">
                            <label id="message" runat ="server" Text=""></label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
