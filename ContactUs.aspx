<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/ >
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
        
           
        <div class="body row">
             <div class="col-md-4 col-ms-4 col-xs-12">
                <img src="Images/contactus.png" class="rounded float-left img" alt="..." height="300" width="300"/>
            </div> 
            <div class="col-md-4 col-ms-4 col-xs-12">       
        <h1 class="text-center text-capitalize">contact us</h1>
        <hr class="w-25 mx-auto"/>
    
    <div class="container-fluid">
        <p class="text-center text-capitalize">contact no:+919876654387</p>
        <p class="text-center text-capitalize">Email:MyJoyFulTrip@gmail.com</p>
        <p class="text-center text-capitalize">Inter national no:+9198786654387</p>
        <p class="text-center text-capitalize">Address:E/66 Jaitpur Badarpur New Delhi 110044</p>
    </div>
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12">
            <img src="Images/contact.jpg" class="rounded float-right img" alt="..." height="300" width="300">
            </div>
            </div>
        
    </div>
     <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

