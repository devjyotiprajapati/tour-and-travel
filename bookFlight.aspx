<%@ Page Title="" Language="C#" MasterPageFile="~/FlightMaster.master" AutoEventWireup="true" CodeFile="bookFlight.aspx.cs" Inherits="bookFlight" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/ >
     <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
         .body {
             background-color:blue;
             border:2px solid black;
             margin-top:20px;
            margin-bottom:20px;
       
        }
        .box {
            background-color:aquamarine;
            color:white;
             }
        h1 {
            text-align:center;
        }
        .btn-success {
            border:none;
            width:49px;
        }
         .btn-primary {
            border:none;
            width:49px;
        }
          .img {
            margin-top:20px;
            margin-bottom:20px;
            border: 2px solid black;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div  class="container-fluid box ">
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12">
                 <img src="Images/Booking2.jpg" class="rounded float-left img" alt="..." height="700" width="300"/>
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12 body">
                <h1>Book Flight Ticket</h1>
                <form>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Label">Booking Id</asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Class="form-control" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label8" runat="server" Text="Label">Flight Number</asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" Class="form-control" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Label">Name</asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Class="form-control" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Label">Age</asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" Class="form-control" ></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Label">Select Gender</asp:Label>
                        <asp:RadioButton ID="rd1" runat="server" GroupName="a" Text="Male" /><asp:RadioButton ID="rb2" runat="server" GroupName="a" Text="Female" />
                     </div>
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="Label">Select Class</asp:Label>
                        <asp:DropDownList ID="DropDownList4" runat="server">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Business</asp:ListItem>
                            <asp:ListItem>Economic</asp:ListItem>
                        </asp:DropDownList>
                     </div>   
                       <div class="form-group">
                           <asp:Label ID="Label6" runat="server" Text="Label">Date of Journey</asp:Label>
                           <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList><asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList><asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
                       </div> 
                    <div class="form-group">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/bookFlight.aspx">ADD Psenger</asp:HyperLink>
                    </div>
                    <div class="form-group">
                      <asp:Button ID="bt1" runat="server" Text="Save" Class="btn btn-block btn-success btn-block" OnClick="bt1_Click" />
                     </div>
                    <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>

                </form>
               </div>
             <div class="col-md-4 col-ms-4 col-xs-12">
                <img src="Images/Flight2.jpg" class="rounded float-right img" alt="..." height="700" width="300"/>
            </div>
            </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</asp:Content>

