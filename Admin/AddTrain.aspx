<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddTrain.aspx.cs" Inherits="AddTrain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
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
    <div  class="container-fluid box">
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12">
                 <img src="../Images/admin3.jpg" class="rounded float-left img" alt="..." height="600" width="300"/>
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12 body">
                <h1>New Train Add</h1>

               <form>
                     <div class="form-group">
                         <asp:Label ID="Label1" runat="server" Text="Label">Train No</asp:Label>
                         <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                     </div>
                   <div class="form-group">
                       <asp:Label ID="Label2" runat="server" Text="Label">Train Name</asp:Label>
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
                       <asp:Label ID="Label5" runat="server" Text="Label">Day of Runing</asp:Label>
                         <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox>
                     </div>
                   <div class="form-group">
                       <asp:Button ID="btn" runat="server" Text="Save"  class="btn-block btn-primary" OnClick="btn_Click"/>
                   </div>
                   <div class="form-group">
                       <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
                   </div>
               </form>
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12">
                <img src="../Images/Tain3.jpg" class="rounded float-right img" alt="..." height="600" width="300">
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

