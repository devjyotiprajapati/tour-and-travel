<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

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
        .bg {
            background-color:deeppink;
        }
        .img {
            margin-top:20px;
            margin-bottom:20px;
            border:2px solid black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid bg "> 
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12" >
                 <img src="Images/Feedback1.png" class="rounded float-left img" alt="..." height="300" width="300"/>
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12 body" >
                <form>
                     <div class="container-fluid">
                        <h1 class="text-center text-capitalize">feedback</h1>
                        </div>
                         <div class="form-group ">
                             <asp:Label ID="Label1" runat="server" Text="Label">Email</asp:Label>
                              <asp:TextBox ID="Tb1" runat="server" Class="form-control" placeholder="Email"></asp:TextBox>                       
                           </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Label">Message</asp:Label>                                                                                                                                                                                          
                        <asp:TextBox ID="Tb2" runat="server" Class="form-control" placeholder="Message"></asp:TextBox>                   
                    </div>
                   
                    <div class="form-group">

                        <asp:Button ID="btn" runat="server" Text="Send" class="btn btn-success btn-block" OnClick="btn_Click" />

                    </div>
                    <div>
                        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                    </div>
                    
                  </form>
          </div>
             <div class="col-md-4 col-ms-4 col-xs-12">
                <img src="Images/Feedback1.png" class="rounded float-right img" alt="..." height="300" width="300">
            </div>
        </div>
       
        </div>
 
 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

