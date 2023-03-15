<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="online_voting_system.login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>online voting system</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!--stylesheet link-->
    <link href="css/style.css" rel="stylesheet" />
    
    <link href="bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <!--animate css link url-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.compat.min.css" integrity="sha512-b42SanD3pNHoihKwgABd18JUZ2g9j423/frxIP5/gtYgfBz/0nDHGdY/3hi+3JwhSckM3JLklQ/T6tJmV7mZEw==" crossorigin="anonymous" />
    <style>
        .field-icon{
            float:right;
            margin-left: -50px;
            cursor:pointer;
            margin-top:-25px;
            z-index:2;
        }
        .container{
            padding-top:50px ;
            margin: auto;
        }
        
    </style>
</head>
<body  style="background-color:#f28b0d">
    <form id="form1" runat="server">
      <header class="log-body">
        <div class="container ">
           <div class="">
          
                <div class="row ">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6 login-pic">
                        <div class=" card log-in">
                            
                            <div class="sign-up">
                                   <h1 class="text-uppercase">sign in</h1>
                                 <div>
                                <i class="fas fa-5x fa-user-circle"></i>
                            </div>
                              </div>
                           
                            <div class="card">
                            <div class="log-in down1  btn-shadow">
                                
                        
                                <asp:Label runat="server"  >UserName</asp:Label>

                                <asp:TextBox runat="server" required="" placeholder="Enter your Username" CssClass="form-control" ID="txtusername"></asp:TextBox>
                                <br>
                           
                                    <asp:Label runat="server" Text="Password"></asp:Label>
                                    <asp:TextBox runat="server" placeholder="Enter  Your Password" required="" ID="password" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                    <i id="pass-status" class="fa fa-eye field-icon" aria-hidden="true" onclick="viewpassword()"></i>
                                    <script>
                                       function viewpassword(){
                                        var x= document.getElementById('password');
                                       var y= document.getElementById('pass-status');
                                       if(x.type=='password'){
                                           x.type='text';
                                           y.className='fa fa-eye-slash';
                                       }
                                       else{
                                           x.type='password';
                                           y.className='fa fa-eye';
                                       }
                                       }
                                    </script>
                             
                   
                                      <br>
                                    <label for="remember-me" runat="server"> Remember Me:</label>
                                    <input type="checkbox" runat="server"  id="chk" ><br />
                            
                                    <asp:Button runat="server" CssClass="btn btn-warning btn-log"  ForeColor="White" Text="Submit" ID="btnsubmit" OnClick="btnsubmit_Click1"   />
                                <div class="needpage" >
                                    <table>
                                        <tr>
                                            <td style=""><h6>Need an Account?</h6></td>
                                            <td><h6><a href="registration.aspx">SignUP</a></h6></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                                <asp:Label ID="lblmessage" Text="" BackColor="Red" runat="server"></asp:Label>
                        </div>
                       </div>
                   </div>
                    <div class="col-sm-3"></div>
                </div>
            </div>
        </div>
       
     </header>
   </form>
</body>
</html>