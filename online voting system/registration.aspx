<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="online_voting_system.registration1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!--stylesheet link-->
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/bootstrap-grid.min.css" rel="stylesheet" />
    <link href="css/bootstrap-reboot.min.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" rel="stylesheet">
    <!--animate css link url-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.compat.min.css" integrity="sha512-b42SanD3pNHoihKwgABd18JUZ2g9j423/frxIP5/gtYgfBz/0nDHGdY/3hi+3JwhSckM3JLklQ/T6tJmV7mZEw==" crossorigin="anonymous" />
    <title>online voting system</title>
</head>
<body class="registered">
    <form id="form1" runat="server">
        <header >
            <div> 
                <div class="container-fluid ">
               <div class="row">
                  <div class="col-sm-3">                      
                  </div>
                  <div class="col-sm-6 ">  
                      <diV class="card reg">                    
                                 <!-- registration page margin-top -->                                                      
                                <div class="registration-image">
                                    <h3 class="registration-h3 color text-uppercase ">Registere Your Id</h3>
                                </div>
                                <div class="form-group ">
                                   <asp:Label runat="server" Text="UserName"></asp:Label>
                                   <asp:TextBox runat="server" id="txtusername" CssClass="form-control" placeholder="Enter your UserName"></asp:TextBox>                            
                                    Password:
                                   <asp:TextBox runat="server" TextMode="Password" id="Txtpwd" required="" CssClass="form-control" placeholder="Enter your Password"></asp:TextBox>                             
                                     CitizenShip No:
                                    <asp:TextBox runat="server" required="" CssClass="form-control" ID="txtcitizen" placeholder="Enter your citizenship number"></asp:TextBox>
                              
                                    <asp:Label runat="server" Text="Email-Address"></asp:Label>
                                   <asp:TextBox runat="server" TextMode="Email" id="txteaddress" required="" CssClass="form-control" placeholder="Enter your Email-Address" ></asp:TextBox>                                                             
                                   Election:
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control h-25"  DataSourceID="SqlDataSource1" DataTextField="EName" DataValueField="EId" Height="28px" Width="255px"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlinevotingSystemConnectionString %>" SelectCommand="SELECT [EId], [EName] FROM [Election] ORDER BY [EDate] DESC"></asp:SqlDataSource>
                                 <br />
                                   <asp:Label runat="server" Text="Date Of Birth"></asp:Label>
                                   <asp:TextBox runat="server" CssClass="form-control" Width="300px" ID="txtdate" TextMode="date"></asp:TextBox>                                 
                                   
                                    <br />
                                  
                                   
                                   <div class="btn-button-registration">
                                   <asp:Button runat="server" OnClientClick="submit()" CssClass="btn-warning btn-submitr btn-registration submit"   Text="Submit" ID="submit" OnClick="submit_Click" />
                                   <asp:Label runat="server" BackColor="Red" ForeColor="White" Text="" ID="lblmessage"></asp:Label>                        
                                    </div>                                
                                </div>
                                 </div>            
                                     
                  </div>
                  <div class="col-sm-3"></div>
              </div>
            </div>
            </div>    
        </header>
    </form>
    <script src="formvalid.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
