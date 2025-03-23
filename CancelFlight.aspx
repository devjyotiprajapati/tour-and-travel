<%@ Page Title="" Language="C#" MasterPageFile="~/FlightMaster.master" AutoEventWireup="true" CodeFile="CancelFlight.aspx.cs" Inherits="CancleFlight" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
    <style type="text/css">
         .body {
             background-color:violet;
             border:2px solid black;
             margin-top:20px;
            margin-bottom:20px;
       
        }
        .box {
            background-color:aquamarine;
             }
        h1 {
            text-align:center;
        }
        .img {
            margin-top:20px;
            margin-bottom:20px;
            border:2px solid black;
        }
       
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div  class="container-fluid box ">
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12">
                <img src="Images/cancle2.png" class="rounded float-left img" alt="..." height="400" width="300"/>
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12 body">
                <h1>Flight Ticket Cancelation</h1>
                 <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Label">Booking No</asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Booking Number  NotFiled " ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Label">Flight Name</asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <asp:Button ID="bt1" runat="server" Text="Cancel" Class=" btn btn-block btn-success" OnClick="bt1_Click1" style="height: 26px"  />
                     </div>
                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
               </div>
            <div class="col-md-4 col-ms-4 col-xs-12">
                <img src="Images/Flight.jpg" class="rounded float-right img" alt="..." height="400" width="300">
            </div>
            </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</asp:Content>

