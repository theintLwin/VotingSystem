<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserWinner.aspx.cs" Inherits="VotingSystem.UserWinner" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    body{
            
            background-image: url(images/confetti3.gif);
        background-repeat: repeat;
        background-size: 700px 900px;
        background-attachment: fixed;
         margin: 0;
        }
        .image{
            opacity: 1;
  display: inline;
  width: 500px;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
  margin-left: 600px;
        }
      

*,
*::before,
*::after {
  box-sizing: border-box;
}

.marquee {
  overflow: hidden;
  font-family: "Pridi", sans-serif;
  font-weight: 600;
  font-size: 34px;
  text-transform: uppercase;
   background-color: #46adca;
}

.marquee__inner {
  display: flex;
}

.marquee__line {
  flex-shrink: 0;
  margin: 0;
  padding: 10px 15px;
  min-width: 80%;
  white-space: nowrap;
  animation-name: marqueeLine;
  animation-duration: 10s;
  animation-timing-function: ease-in-out;
  animation-iteration-count: infinite;
}

@keyframes marqueeLine {
  from {
    transform: translateX(0);
  }
  
  to {
    transform: translateX(100%);
  }
}
h2{
  text-align: center;
}

.reg
{
    margin-left:500px;
}
.label
{
    font-family:cooper;
    font-size:60px;
    text-align:center;
    color:blue;
    font-weight:bold;
}
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
       
        <div class="label">
            <asp:Label ID="Ans" runat="server" Text=""></asp:Label><br />
        </div>
    <div class="wrap" id="">
         <div class="marquee">
        <div class="marquee__inner">
            <div class="marquee__line">
                
               <asp:Label ID="KingWinner" runat="server" Text="King Title Winner is " Font-Bold="True" Font-Size="XX-Large"></asp:Label><br /><br />
                            
                 
            </div></div>
             </div>
        <div class="reg">
            <asp:Label ID="KingName" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label><br /><br />
        <asp:Image ID="KingImage" runat="server" Width="300px" Height="400px"/>
        </div>

            <div class="marquee">
        <div class="marquee__inner">
            <div class="marquee__line">
               <asp:Label ID="QueenWinner" runat="server" Text="Queen Title Winner is " Font-Bold="True" Font-Size="XX-Large"></asp:Label><br /><br />
                 </div></div>
             </div>
        <div class="reg">
                            <asp:Label ID="QueenName" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label><br />
                 <asp:Image ID="QueenImage" runat="server" Width="300px" Height="400px"/>
            </div>

             <div class="marquee">
        <div class="marquee__inner">
            <div class="marquee__line">
               <asp:Label ID="PrinceWinner" runat="server" Text="Prince Title Winner is " Font-Bold="True" Font-Size="XX-Large"></asp:Label><br /><br />
                 </div></div>
             </div>
        <div class="reg">
                            <asp:Label ID="PrinceName" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label><br />
                 <asp:Image ID="PrinceImage" runat="server" Width="300px" Height="400px"/>
            </div>

            <div class="marquee">
        <div class="marquee__inner">
            <div class="marquee__line">
               <asp:Label ID="PrincessWinner" runat="server" Text="Princess Title Winner is " Font-Bold="True" Font-Size="XX-Large"></asp:Label><br /><br />
                </div></div>
             </div>
        <div class="reg">
                            <asp:Label ID="PrincessName" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label><br />
                 <asp:Image ID="PrincessImage" runat="server"  Width="300px" Height="400px"/>
            </div>

            <div class="marquee">
        <div class="marquee__inner">
            <div class="marquee__line">
               <asp:Label ID="PopularWinner" runat="server" Text="Popular Title Winner is " Font-Bold="True" Font-Size="XX-Large"></asp:Label><br /><br />
                             </div></div>
             </div>
        <div class="reg">
        <asp:Label ID="PopularboyName" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label><br />
                 <asp:Image ID="PopularboyImage" runat="server"  Width="300px" Height="400px"/>
            </div>

      <div class="marquee">
        <div class="marquee__inner">
            <div class="marquee__line">
               <asp:Label ID="PopulargirlWinner" runat="server" Text="Popular Title Winner is " Font-Bold="True" Font-Size="XX-Large"></asp:Label><br /><br />
                             </div></div>
             </div>
        <div class="reg">
                <asp:Label ID="PopulargirlName" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label><br />
                 <asp:Image ID="PopulargirlImage" runat="server"  Width="300px" Height="400px"/>
            </div>

      <div class="marquee">
        <div class="marquee__inner">
            <div class="marquee__line">
               <asp:Label ID="SmartWinner" runat="server" Text="Smart Title Winner is " Font-Bold="True" Font-Size="XX-Large"></asp:Label><br /><br />
                            </div></div>
             </div>
        <div class="reg">
        <asp:Label ID="SmartName" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label><br />
                 <asp:Image ID="SmartImage" runat="server"  Width="300px" Height="400px"/>
            </div>

         <div class="marquee">
        <div class="marquee__inner">
            <div class="marquee__line">
               <asp:Label ID="SmileWinner" runat="server" Text="Smile Title Winner is " Font-Bold="True" Font-Size="XX-Large"></asp:Label><br /><br />
                             </div></div>
             </div>
        <div class="reg">
                <asp:Label ID="SmileName" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large"></asp:Label><br />
                 <asp:Image ID="SmileImage" runat="server"  Width="300px" Height="400px"/>
            </div>
    </div>

         <div class="marquee">
        <div class="marquee__inner">
            <div class="marquee__line">
               <asp:Label ID="CoupleWinner" runat="server" Text="Best Couple Winner is " Font-Bold="True" Font-Size="XX-Large"></asp:Label><br /><br />
                             </div></div>
             </div>
        <div class="reg">
                <asp:Label ID="CoupleName" runat="server" Text="" Font-Bold="True" Font-Size="XX-Large"></asp:Label><br />
                 <asp:Image ID="CoupleImage" runat="server"  Width="400px" Height="500px"/>
            </div>
    </div>
       
        
       
    </form>
       


</body>
</html>
