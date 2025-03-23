<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.master" AutoEventWireup="true" CodeFile="AboutUS.aspx.cs" Inherits="AboutUS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/ >
     <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .body {
            background-color:blueviolet;
            border:2px solid black;
            margin-top:20px;
            color:white;
            margin-bottom:20px;
        }
        
        .img {
            margin-top:20px;
            margin-bottom:20px;
            border:2px solid black;
        }
    </style>

     <div class="container-fluid">
         <div class="row body">
             <div class="col-md-4 col-ms-4 col-xs-12">
                <img src="Images/About us.jpg" class="rounded float-left img" alt="..." height="200" width="300"/>
            </div>
          <div class="col-md-4 col-ms-4 col-xs-12">  
        <h1 class="text-center text-capitalize">About us</h1>
        <hr class="w-25 mx-auto"/>
    
    
        
        <p class="text-center text-capitalize" >Hello friends<br />
            our webportel is the best for hotel and any travling booking
        </p>
</div>
            </div>
    
         </div>
     <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

