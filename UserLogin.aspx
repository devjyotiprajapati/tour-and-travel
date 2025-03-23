<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.master" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/ >
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .body {
             background-color:blue;
             border:2px solid black;
             margin-top:20px;
            margin-bottom:20px;
            color:white;
       
        }
        .box {
            background-color:aqua;
            color:white;
             }

        img {
            width: 150px;
            margin: auto;
        }       
        
        label {
            color:black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid body"> 
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12" ></div>
            <div class="col-md-4 col-ms-4 col-xs-12 box" >
                <form >
                    <h1 class="text-center text-capitalize " >User LogIn</h1>
                    <hr class="w-50 mx-bold btn-primary"  />
                    <center><img class="img img-responsive img-circle" src="Images/Login 2.jpg" /></center>
                    <div class="form-group">
                        <label>User Name</label>
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="User ID"  ></asp:TextBox>

                    </div>                                                  
                    <div class="form-group">
                        <label>Password</label>
                        <asp:TextBox ID="TextBox2" runat="server"  class="form-control fa fa-eye" placeholder="Password"  aria-hidden="true" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </div>
                    <div class="checkbox">
                        <label><input  type="checkbox" />Remember Me</label>
                    </div>
                    <div class="form-group">
                        <asp:LinkButton ID="LinkButton12" runat="server" PostBackUrl="~/ForgetPassword.aspx" >Forget Password</asp:LinkButton>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="bt1" runat="server" Text="LogIn" class="btn btn-block btn-primary" OnClick="bt1_Click" />
                    </div>
                 <div class="form-group">
                     <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/UserSinUp.aspx">Create New User Account</asp:LinkButton>
                 </div>
                </form>
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12" ></div>
        </div>
         

   </div> 
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>  
</asp:Content>

