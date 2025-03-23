<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .bg {
            background-color:pink;
            color:black;
            margin-bottom:20px;
            margin-top:20px;
        }
        .box {
            background-color:lightpink;
            color:white;
            height:300px;            
             }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="container-fluid bg ">
         <div class="row">
             <div>
                 <div class="btn-group-lg"  role="group" aria-label="Basic example">
                  <button type="button" class="btn btn-secondary"><a href="BookBus.aspx">Bus</a></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <button type="button" class="btn btn-secondary"><a href="BookTrain.aspx">Train</a></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <button type="button" class="btn btn-secondary"><a href="bookFlight.aspx">Flight</a></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="button" class="btn btn-secondary"><a href="HotelBooking.aspx">Hotel</a></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <button type="button" class="btn btn-secondary"><a href="BookPackage.aspx">Packages</a></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                              </div>
            </div>

           </div>
    <div class="row">
        <div class="col-lg-4 col-md-2 col-12 mb-4 "  >
                     <img src="Images/Flight2.jpg"  class="img-fluid""/>
                 </div>
                 <div class="col-lg-4 col-md-2 col-12 mb-4 "  >
                     <img src="Images/Tour1.jpg" class="img-fluid" />
                 </div>
                 <div class="col-lg-4 col-md-2 col-12 mb-4 "  >
                     <img src="Images/Flight.jpg"  class="img-fluid"/>
                 </div>
                 <div class="col-lg-4 col-md-2 col-12 "  >
                     <img src="Images/Bus3.jpg" class="img-fluid"/>
                 </div>
                 <div class="col-lg-4 col-md-2 col-12 mb-4 "  >
                     <img src="Images/Hotel1.jpg"  class="img-fluid"/>
                 </div>
                 <div class="col-lg-4 col-md-2 col-12 mb-4 "  >
                     <img src="Images/Hotel3.jpg"  class="img-fluid"/>
                 </div>

    </div>

     <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

