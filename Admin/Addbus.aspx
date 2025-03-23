<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Addbus.aspx.cs" Inherits="Addbus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/ >
     <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
         .body {
             background-color:blueviolet;
             border:2px solid black;
             margin-top:20px;
            margin-bottom:20px;
       
        }
        .box {
            background-color:aqua;
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
     <div  class="container-fluid box">
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12">
                 <img src="../Images/admin3.jpg" class="rounded float-left img" alt="..." height="600" width="300"/>
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12 body">
                <h1>Add New Bus</h1>
               
                     <div class="form-group">
                         
                         <asp:Label ID="Label1" runat="server" Text="Label">Bus Name</asp:Label>
                         <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                     </div>
                   <div class="form-group">
                         
                       <asp:Label ID="Label2" runat="server" Text="Label">Bus No</asp:Label>
                         <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                     </div>
                   
                   <div class="form-group">
                       
                       <asp:Label ID="Label3" runat="server" Text="Label">To</asp:Label>
                         <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                     </div>


                   <div class="form-group">
                        
                       <asp:Label ID="Label4" runat="server" Text="Label">From</asp:Label>
                         <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>
                     </div>  
                   <div class="form-group">
                         <asp:Label ID="Label5" runat="server" Text="Label">Day of runing</asp:Label>
                         <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox>
                     </div>
                   <div class="form-group">
                      
                    <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click1" class=" btn btn-block btn-primary" />
                   </div>
                   <div class="form-group">
                       <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
                   </div>
                           </div>
            <div class="col-md-4 col-ms-4 col-xs-12">
                 <img src="../Images/Bus5.jpg" class="rounded float-right img" alt="..." height="600" width="300">
            </div>
        </div>
    </div>

</asp:Content>

