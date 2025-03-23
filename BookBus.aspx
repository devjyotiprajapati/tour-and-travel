<%@ Page Title="" Language="C#" MasterPageFile="~/Bus.master" AutoEventWireup="true" CodeFile="BookBus.aspx.cs" Inherits="BookBus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/ >
     <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
         .body {
             background-color:blue;
             border:2px solid black;
             margin-top:20px;
            margin-bottom:20px;
            color:white;
       
        }
        .box {
            background-color:aqua;
            color:white;
             }
        h1 {
            text-align:center;
        }
         .btn-primary {
            border-radius:0px;padding:10px;
            width:49%;
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
                <img src="Images/Booking1.jpg" class="rounded float-left img" alt="..." height="700" width="300"/>
            </div>
            
            <div class="col-md-4 col-ms-4 col-xs-12 body">
                
                <h1>Book Bus Ticket</h1>
                <form>
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Label">Bookid</asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server"  ReadOnly="True"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="Label">Bus Number</asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" Class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Label">Name</asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Label">Age</asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Select Gender</label><br />
                        <asp:RadioButton ID="rd1" runat="server" GroupName="a" Text="Male" /><asp:RadioButton ID="rb2" runat="server" GroupName="a" Text="Female" />
                     </div>
                    <div class="form-group">
                        <label>Birth Prefer</label><br/>
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="b" Text="Window" /><asp:RadioButton ID="RadioButton2" runat="server" GroupName="b" Text="Sliper" />
                     </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Label">Date</asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList><asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList><asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/BookBus.aspx" >Add Pasenger</asp:HyperLink>
                    </div>
                    <div class="form-group">
                      <asp:Button ID="bt1" runat="server" Text="Save" Class=" btn  btn-primary" OnClick="bt1_Click" />
                        
                     </div>
                    <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                </form>
               </div>
             <div class="col-md-4 col-ms-4 col-xs-12">
                <img src="Images/Bus.jpg" class="rounded float-right img" alt="..." height="700" width="300">
            </div>
            </div>
        
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</asp:Content>

