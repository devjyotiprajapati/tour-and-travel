<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.master" AutoEventWireup="true" CodeFile="UserSinUp.aspx.cs" Inherits="UserSinUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/ >
     <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .body {
             background-color:blueviolet;
             border:2px solid black;
             margin-top:20px;
            margin-bottom:20px;
            color:white;
       
        }
        .box {
            background-color:aqua;
            color:blue;
             }
      
        
        h1 {
            color:blue;
            text-align:center;
            font-weight:bolder;
        }
        .btn-primary {
            border-radius:0px;padding:10px;
            width:49%;
        }
        .btn-success{
            border-radius:0px;padding:10px;
            width:49%;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid body"> 
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12" ></div>
            <div class="col-md-4 col-ms-4 col-xs-12 box" >
                <form >
                    <h1>User SignUP</h1>
                    <center><img class="img img-responsive img-circle" src="Images/Regester.jpg" /></center>
                    <div class="form-group">
                        <asp:Label ID="Label11" runat="server" Text="Label">Customer id</asp:Label>
                        <asp:TextBox ID="TextBox9" runat="server" Class="form-control" ReadOnly="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Customer id need to fill" ControlToValidate="TextBox9" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Label">Name</asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Class="form-control" placeholder="Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name Requaierd" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Label">Age</asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Class="form-control" placeholder="Age"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Age Requaierd" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                       <asp:Label ID="Label3" runat="server" Text="Label">Address</asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" Class="form-control" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Address Required" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-froup">
                        <asp:Label ID="Label12" runat="server" Text="Label">UserName</asp:Label>
                        <asp:TextBox ID="TextBox10" runat="server" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="User name Required" ControlToValidate="TextBox10" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Label">Password</asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" Class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Password Required" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="Label">Confirm Password</asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server" Class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="It is not match with password" ControlToValidate="TextBox5" ForeColor="Red" ControlToCompare="TextBox4"></asp:CompareValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="Label">Mobile No</asp:Label>
                        <asp:TextBox ID="TextBox6" runat="server" Class="form-control" placeholder="Mobile No"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="Label8" runat="server" Text="Label">Email ID</asp:Label>
                        <asp:TextBox ID="TextBox7" runat="server" Class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label9" runat="server" Text="Label">Dob</asp:Label>
                        <asp:TextBox ID="TextBox8" runat="server" Class="form-control" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Date of birth requierd" ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="Label">Select gender</asp:Label>
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="a" Text="Male" />
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" Text="Female" />

                    </div> 
                    <div class="form-group">
                        <asp:Button ID="btn1" runat="server" Text="Submit" class="btn btn-primary" OnClick="btn1_Click"/>
                        <asp:Button ID="btn2" runat="server" Text="Reset" class="btn btn-success" OnClick="btn2_Click"/>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label10" runat="server" Text="Label" Visible="False"></asp:Label>
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

