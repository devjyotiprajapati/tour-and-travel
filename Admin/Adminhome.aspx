<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Adminhome.aspx.cs" Inherits="Admin_Adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/ >
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
     .bg {
           // background:url("Images/wallpaper1.jpg" ) no-repeat;
          background-color:violet;
                width:100%;
                height:100%;
                color:blue;
                border:2px solid black;
        }
                    
            
        }
    .auto-style2 {
        width: 459px;
    }
    .auto-style3 {
        width: 443px;
    }
    .body {
        background-color:aqua;
        
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <marquee><b><i><font color="Blue">Welcome in MyJoyfulTrip</font></i></b></marquee>
    </div>
    <div class="form-group bg">
        <div class="btn-group" role="group" aria-label="Basic example">
            <asp:LinkButton ID="LinkButton8" runat="server" type="button" Class="btn btn-outline-Info" PostBackUrl="~/Admin/AddTrain.aspx">Add New Train</asp:LinkButton>
            <asp:LinkButton ID="LinkButton9" runat="server" Class="btn btn-outline-Info" PostBackUrl="~/Admin/Addbus.aspx">Add New Bus</asp:LinkButton>
            <asp:LinkButton ID="LinkButton10" runat="server" Class="btn btn-outline-Info" PostBackUrl="~/Admin/Addflight.aspx">Add New Flight</asp:LinkButton>
            <asp:LinkButton ID="LinkButton11" runat="server" Class="btn btn-outline-Info" PostBackUrl="~/Admin/Addhotel.aspx">Add New Hotel</asp:LinkButton>
            <asp:LinkButton ID="LinkButton12" runat="server" Class="btn btn-outline-Info" PostBackUrl="~/Admin/Addpackage.aspx">Add New Package</asp:LinkButton>
         </div>
        <div class="body">
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style2">
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Admin/ManageCustomer.aspx">Manage Customer</asp:LinkButton>
                        </td>
                        <td class="auto-style3">
                            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Admin/ManageBus.aspx">Manage Bus Booking</asp:LinkButton>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Admin/ManageTrain.aspx">Manage Train Booking</asp:LinkButton>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style2">
                            <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/Admin/ManageHotel.aspx">Manage Hotel Booking</asp:LinkButton>
                        </td>
                        <td class="auto-style3">
                            <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/Admin/ManageFlight.aspx">Manage Flight Booking</asp:LinkButton>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/Admin/ManagePackage.aspx">Manage Package Booking</asp:LinkButton>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style2">
                            <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="~/Admin/ManagePayment.aspx">Manage Payment</asp:LinkButton>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

             </div>
         <div class="bg"> 
         <div class="row">
        <div class="col-lg-4 col-md-2 col-12 mb-4 "  >
                     <img src="../Images/size4.jpg"  class="img-fluid""/>
                 </div>
                 <div class="col-lg-4 col-md-2 col-12 mb-4 "  >
                     <img src="../Images/image3.jpg" class="img-fluid" />
                 </div>
                 <div class="col-lg-4 col-md-2 col-12 mb-4 "  >
                     <img src="../Images/size.jpg"  class="img-fluid"/>
                 </div>
                

    </div>

    </div>
                 </div>
   
        
 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

