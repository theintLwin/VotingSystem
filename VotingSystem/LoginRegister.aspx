<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginRegister.aspx.cs" Inherits="VotingSystem.LoginRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            font-family: Arial, Helvetica, sans-serif;
            background-image:url(images/loginbg.gif);
            background-repeat:no-repeat;
            background-size:1250px 600px;
            background-attachment:fixed;
        }
        

input[type=text], input[type=password] {
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
  width: 500px;
  margin-left: 500px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
    </style>
</head>
<body>
    <form id="form1" runat="server" style="margin-left:300px;">
    <div style="width: 133px; height: 108px; margin-left: 232px">

         
    
        <asp:Image ID="Image1" runat="server" Height="139px" ImageUrl="images/loginLogo.png" Width="147px" style="margin-left: 24px; margin-top: 32px; margin-bottom: 26px" />
       
        
        Email&nbsp;<asp:TextBox ID="txtEmail" runat="server" Height="10px" Width="200px"></asp:TextBox>

         <br /><br />

         <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label> 
        
        &nbsp;<asp:TextBox ID="txtPw" runat="server" Height="10px" Width="200px" TextMode="Password"></asp:TextBox>    <br />
        <asp:Label ID="incorrect" runat="server" Text="" Height="10px" Width="300px" ForeColor="Red"></asp:Label>

         <asp:Button ID="Button1" runat="server" Height="36px" style="margin-bottom: 30px; margin-left: 58px; margin-top: 14px;" Text="Login" Width="94px" BackColor="#0099FF" ForeColor="White" OnClick="Button1_Click" />



        <br />   
        <asp:HyperLink ID="HyperLink1" runat="server" style="margin-left:150px;" BackColor="White" BorderStyle="Inset" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Underline="False" ForeColor="#0099FF"  Width="105px" NavigateUrl="Register.aspx">Register</asp:HyperLink>
       



        <br />



        </div>
        <div style="width: 171px; margin-top: 0px; margin-left: 81px; height: 27px; margin-bottom: 28px;">
            
        </div>

    </div>
    </form>
</body>
</html>
