<%@ Page Title="" Language="C#" MasterPageFile="~/Bus.master" AutoEventWireup="true" CodeFile="CancelBus.aspx.cs" Inherits="CancleBus" %>

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
                <img src="Images/Cancele.jpg" class="rounded float-left img" alt="..." height="400" width="300"/>
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12 body">
                <h1>Bus Ticket Cancelation</h1>
                <form>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Label">Booking No</asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Booking Number  NotFiled " ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Label">Bus Name</asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <asp:Button ID="bt1" runat="server" Text="Cancel" Class=" btn btn-block btn-success" OnClick="bt1_Click" />
                     </div>
                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                </form>
               </div>
            <div class="col-md-4 col-ms-4 col-xs-12">
                <img src="Images/Bus3.jpg" class="rounded float-right img" alt="..." height="400" width="300">
            </div>
            </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</asp:Content>

