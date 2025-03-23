<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLogin.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .bg {
            background-color:aqua;
        }
        .box {
            color:deeppink;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="box"><marquee>Welcome to our MyJoyFulTrip with many exclusive offers <b><u>0 % charges</u></b>.</marquee></div>
    <hr />
    <div  class="container-fluid bg ">
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12">
        <div>
         <a href="BookBus.aspx"><i class="fa fa-bus fa-2x " aria-hidden="true"></i><div>Bus Booking</div></a>
        </div>
          <div>
         <a href="HotelBooking.aspx"><i class="fa fa-h-square fa-2x " aria-hidden="true"></i><div>Hotel Booking<br />
              </div></a>
        </div>
                <div>
         <a href="Searchcustbyid.aspx"><i class="fa fa-user fa-2x" aria-hidden="true"></i><div>Search Customer By id<br />
              </div></a>
        </div>
         </div>
            <div class="col-md-4 col-ms-4 col-xs-12 body">
      <div>
         <a href="BookTrain.aspx"><i class="fa fa-train fa-2x " aria-hidden="true"></i><div>Train Booking</div></a>
    </div>
                 <div>
         <a href="BookPackage.aspx"><i class="fa fa-gift fa-2x " aria-hidden="true"></i><div>Package Booking</div></a>
    </div>
                <div>
         <a href="searchcustbyname.aspx"><i class="fa fa-user  fa-2x" aria-hidden="true"></i><div>Search Customer By Name<br />
              </div></a>
        </div>
                </div>
                 <div class="col-md-4 col-ms-4 col-xs-12">
        <div>
         <a href="bookFlight.aspx"><i class="fa fa-fighter-jet fa-2x" aria-hidden="true"></i><div>Flight Booking</div></a>
        </div>
                      
                     <div>
                         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Changepassword.aspx"><i class="fa fa-cogs fa-2x" aria-hidden="true"></i><div>ChangePassword</div></asp:HyperLink>
                     </div>
            
            </div>
       </div>
    </div> 
 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

