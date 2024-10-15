<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="VotingSystem.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .button {
     display: inline-block;
     border-radius: 4px;
     background-color: #28b3d5;
     border: none;
     color: #FFFFFF;
     text-align: center;
     font-size: 28px;
     padding: 20px;
     width: 400px;
     transition: all 0.5s;
     cursor: pointer;
     margin: 5px;
   }
   
   .button span {
     cursor: pointer;
     display: inline-block;
     position: relative;
     transition: 0.5s;
   }
   
   .button span:after {
     content: '\00bb';
     position: absolute;
     opacity: 0;
     top: 0;
     right: -20px;
     transition: 0.5s;
   }
   
   .button:hover span {
     padding-right: 25px;
   }
   
   .button:hover span:after {
     opacity: 1;
     right: 0;
   }
   
   .load{
       animation: slide 2s;
   }
   
   .slider{
       width: 100%;
       height: 100vh;
       background-position: center center;
       background-size: cover;
       background-repeat: no-repeat;
       animation: slide 20s infinite;
   }
   .content{
       color: #fff;
       width: 100%;
       height: 100vh; 
       background-color: rgba(0, 0, 0, 0.5);
   
   }
   .principal{
       left: 50%;
       top: 50%;
       transform: translate(-50%,-50%);
       position: absolute;
       letter-spacing: 5px;
       text-align: center;
       font-size:30px;
       width:100%;
        
   }
   .principal h1{
       font-size: 70px;
       margin-bottom: 20px;
   }
   .principal p{
       font-size: 30px;
   }
   
   @keyframes slide{
       0%{
           background-image: url('images/bg3.jpg');
       }
       20%{
           background-image: url('images/bg3.jpg');
       }
       20.01%{
           background-image: url('images/bg3.jpg');
       }
       40%{
           background-image: url('images/bg3.jpg');
       }
       40.01%{
           background-image: url('images/bg3.jpg');
       }
       60%{
           background-image: url('images/bg3.jpg');
       }
       60.01%{
           background-image: url('images/bg3.jpg');
       }
       80%{
           background-image: url('bg3.jpg');
       }
       80.01%{
           background-image: url('bg3.jpg');
       }
       100%{
           background-image: url('bg3.jpg');
       }
   }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
        <div class="slider">
        <div class="load">
        </div>
        <div class="content">
            <div class="principal">
                <asp:Label ID="Label4" runat="server" Text="University Of Computer Studies, Pyay"></asp:Label><br />
               <asp:Label ID="Label1" runat="server" Text="Fresher Welcome Selection Voting"></asp:Label> <br /><br />
                 <asp:Button ID="welcome_btn" runat="server" style="margin-left: 10px; margin-top: 14px;vertical-align:middle;" Text="START VOTING" BackColor="#00CCFF" Font-Size="Large" Height="45px" Width="200px" OnClick="welcome_btn_Click" />        
            </div>
        </div>
    </div> 
    
    </form>
</body>
</html>
