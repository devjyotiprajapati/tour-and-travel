<%@ Page Title="" Language="C#" MasterPageFile="~/PackageMaster.master" AutoEventWireup="true" CodeFile="Package.aspx.cs" Inherits="SearchPackage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/ >
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .body {
            background-color:violet;
            margin-top:20px;
            margin-bottom:20px;
           
        }
       
        .box {
            background-color:aqua;
            border:2px solid black;
        }
        
        }
        .card1 {
            margin-bottom:20px;
            margin-bottom:20px;
            height:400px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="body">
   <div class="container ">
  <div class="row">
    <div class="col-sm box card1">
      <div class="card card1" style="width: auto;">
 <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="Images/wallpaper1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="Images/wallpaper2.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="Images/wallpaper4.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
</div>
  <div class="card-body">
    <h5 class="card-title">Package for Goa</h5>
    <p class="card-text">Book package for Goa Trip.</p>
      <p class="card-text">Code no=213</p>
    <a href="BookPackage.aspx" class="btn btn-primary">Book Now</a>
  </div>
</div>
    </div>
    <div class="col-sm box">
        <div class="card card1" style="width: auto;">
  <div id="Div1" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="Images/mata1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="Images/mata3.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="Images/mata2.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
</div>
  <div class="card-body">
    <h5 class="card-title">Package for Shri Vaishno Devi</h5>
    <p class="card-text">Book package for Shri Vaishno Devi.</p>
      <p class="card-text">Code no=123.</p>
    <a href="BookPackage.aspx" class="btn btn-primary">Book Now</a>
  </div>
</div>
      
    </div>
    <div class="col-sm box">
      <div class="card card1" style="width: auto;">
  <div id="Div2" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="Images/image1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="Images/Tour1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="Images/Tour2.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
</div>
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">USA Package.</p>
      <p class="card-text">Code no=321.</p>
    <a href="BookPackage.aspx" class="btn btn-primary">Book Now</a>
  </div>
</div>
    </div>
  </div>
</div> 
        </div>    
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

