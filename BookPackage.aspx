<%@ Page Title="" Language="C#" MasterPageFile="~/PackageMaster.master" AutoEventWireup="true" CodeFile="BookPackage.aspx.cs" Inherits="BookPackage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
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
                <img src="Images/Booking3.jpg" class="rounded float-left img" alt="..." height="500" width="300"/>
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12 body">
                <h1>Book packages</h1>
                <form>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Label">Booking ID</asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" Class="form-control" ReadOnly="True"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Label">Name</asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Label">Pacakge ID</asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Class="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Label">Amount</asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" Class="form-control"></asp:TextBox>
                     </div>
                    
                    <div class="form-group">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/BookPackage.aspx">ADD Psenger</asp:HyperLink>
                    </div>
                    <div class="form-group">
                      <asp:Button ID="bt1" runat="server" Text="Book" Class="btn btn-block  btn-success" OnClick="bt1_Click" />
                        
                     </div>
                    <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                </form>
               </div>
             <div class="col-md-4 col-ms-4 col-xs-12">
                <img src="Images/Tour2.jpg" class="rounded float-right img" alt="..." height="500" width="300"/>
            </div>
            </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</asp:Content>

