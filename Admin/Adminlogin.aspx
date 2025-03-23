<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="Admin_Adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        .img {
            margin-top:20px;
            margin-bottom:20px;
            border:2px solid black;
        }
        
        
        
         .auto-style2 {
             font-style: italic;
             font-weight: bold;
         }
                 
        
        
    </style>
</head>
<body>
    <form runat="server">  
         <div class="container-fluid body"> 
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12">
                 <img src="../Images/Adminlogin.jpg" class="rounded float-left img" alt="..." height="400" width="300"/>
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12 box" >
               
                <h1 class="text-center text-capitalize " >User LogIn</h1>
                    <hr class="w-50 mx-bold btn-primary"  />
                <%--<div class="form-control">
                    <asp:Label ID="Label1" runat="server" Text="Label">User Name</asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Class="form-conterol" Width="192px" ></asp:TextBox>
                </div>
                <div class="form-control">
                    <asp:Label ID="Label2" runat="server" Text="Label">Password</asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Class="form-conterol"  Width="204px"></asp:TextBox>
                </div>
                --%><div class="form-control">

                    <table class="w-100">
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style2">Admin Name</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style2">Password</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="auto-style2"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td>
                    <asp:Button ID="Button1" runat="server" Text="Admin Login"  Class="btn btn-block btn-primary" OnClick="Button1_Click"/>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>

                    </div>
                
             </div>
           
                <div class="col-md-4 col-ms-4 col-xs-12">
                <img src="../Images/admin4.jpg" class="rounded float-right img" alt="..." height="400" width="300">
                 </div>
        </div>        
   </div> 
  </form>
  
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script> 
</body>
</html>
