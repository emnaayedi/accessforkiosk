<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="AccessForKioskReport.RegistrationForm" %>

  
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <meta name="viewport" content = "width =device-width, initial-scale = 1.0, maximum-scale = 1.0, user-scalable = no"/>
    <link href="Styles.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

    <title></title>  
</head>  
<body> 
<div class="back">


  <div class="div-center">


    <div class="content container-fluid">
          <div class="inline-block d-flex  justify-content-center">
         <img  id="Aquila" src="/images/aquila-logo.png" />
                <img  id="Edge" src="/images/aquila.png" />
            </div>
                                     

       
      <form runat="server">
       

          <div class="form-group  d-flex align-items-center">


          <asp:TextBox type="password" class="form-control textbox" id="TextBox3" placeholder="Password" runat="server" required="true"></asp:TextBox>             
     <br />
           <asp:Label   id="alert" role="alert"  CssClass="label"  runat="server" Style=" color: #e82525!important;  " Visible="false" />
              
             </div>
          <div class="form-group  d-flex align-items-center">
        <asp:Button type="submit" id="Button1" class="btn btn-primary" runat="server"   OnClick="Button1_Click" Text="Login"/>
              </div>
      </form>

    </div>


</div>  </div>


</body>  
</html>  