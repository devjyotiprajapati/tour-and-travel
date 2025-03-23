<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/ >
     <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .body {
            background-color:deeppink;
        }
        .box {
            background-color:aqua;
            border:2px solid black;
            margin:20px 20px;
        }
        .img {
            margin-top:20px;
            margin-bottom:20px;
            border:2px solid black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container-fluid body "> 
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12" >
                 <img src="Images/Forgotpassword.png" class="rounded float-left img" alt="..." height="200" width="400"/>
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12 box" >
                
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Label">Alternate Email</asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="btn" runat="server" Text="Send" OnClick="btn_Click" class="btn btn-block btn-primary"  />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Mail Has Been Not send" Visible="False"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                    </div>
                 </div>

           
            </div>
         </div>
 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

