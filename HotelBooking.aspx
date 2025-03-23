<%@ Page Title="" Language="C#" MasterPageFile="~/HotelMaster.master" AutoEventWireup="true" CodeFile="HotelBooking.aspx.cs" Inherits="HotelBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/ >
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .box {
            background-color:aqua;
           margin-bottom:20px;
          margin-top: 20px;
           border:2px solid black;
           color:white;
        }
        .body {
            background-color:silver;
        }
        h1 {
            color:white;
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
    <div  class="container-fluid body ">
        <div class="row ">
            <div class="col-md-4 col-ms-4 col-xs-12">
                <img src="Images/hotel-booking.jpg" class="rounded float-left img" alt="..." height="800" width="300"/>
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12 box">
                <h1>Book Hotels</h1>
                <form>
                    <div class="form-group">
                        <asp:Label ID="Label8" runat="server" Text="Label">Booking ID</asp:Label>
                        <asp:TextBox ID="TextBox6" runat="server" visible="true" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Label">Name</asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Class="form-control" placeholder="Name"></asp:TextBox>
                       </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Label">Age</asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Class="form-control" placeholder="Age"></asp:TextBox>
                       </div>
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Label">Address</asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server" Class="Form-control" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                       </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Label">Email ID</asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" Class="form-control" placeholder="Email"></asp:TextBox>
                       </div>
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="Label">Mobil NO</asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" Class="form-control" placeholder="Mobile no"></asp:TextBox>
                       </div>
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="Label">Date</asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList><asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList><asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
                       </div>
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="Label">Select Gender</asp:Label>
                    </div>
                    <div class="form-group">
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="a" Text="Male" />
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" Text="Female" />
                    </div>
                    <div class=" form-group">
                        <label>Palce</label>
                        <asp:DropDownList ID="DropDownList4" runat="server">
                            <asp:ListItem Value="---Select----">-----Select----</asp:ListItem>
                            <asp:ListItem>Delhi</asp:ListItem>
                            <asp:ListItem>Mumbai</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>Gova</asp:ListItem>
                            <asp:ListItem>Madhya Pradesh</asp:ListItem>
                            <asp:ListItem>Puna</asp:ListItem>
                            <asp:ListItem>Shri Vasno Devi</asp:ListItem>
                            <asp:ListItem>Shimla</asp:ListItem>
                            <asp:ListItem>Banglor</asp:ListItem>
                            <asp:ListItem>kadarnath</asp:ListItem>
                            <asp:ListItem>Shrni</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <asp:HyperLink ID="HyperLink1" runat="server" text-align="right" NavigateUrl="~/HotelBooking.aspx">Add More</asp:HyperLink>
                    <div class="form-goup">
                        <asp:Button ID="Button1" runat="server" Text="Submit"  Class=" btn btn-block btn-primary" OnClick="Button1_Click"/>
                    </div>
                    <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
                    </form>
                </div>
            <div class="col-md-4 col-ms-4 col-xs-12">
                <img src="Images/Hotel3.jpg" class="rounded float-right img" alt="..." height="800" width="300"/>
            </div>
            </div>
        
        
        </div>
     <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

