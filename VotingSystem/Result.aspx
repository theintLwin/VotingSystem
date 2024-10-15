<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="VotingSystem.Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
      body{
            background-image: url(images/bgg5.gif);
        background-repeat: no-repeat;
        background-size: 1300px 599px;
        background-attachment: fixed;
        }
        .reg{
            margin-left: 50px;
            margin-top: 50px;
            text-align: center;
        
            width: 92%;
            height: 200px;
            background-repeat: no-repeat;
            font-size:20px;
            
        }
        </style>
</head>
      
<body>
    <form id="form1" runat="server">
    <div class="reg">
    
    <asp:Button ID="KingResult" runat="server" style="margin-left: 9px; margin-top: 14px" Text="King Result" BackColor="#94d6ff" Font-Size="Large" Height="45px" Width="203px"  ForeColor="White" OnClick="KingResult_Click" />
        <asp:Button ID="PrinceResult" runat="server" style="margin-left: 9px; margin-top: 14px" Text="Prince Result" BackColor="#94d6ff" Font-Size="Large" Height="45px" Width="203px"   ForeColor="White" OnClick="PrinceResult_Click"/>
             <asp:Button ID="PopularResult" runat="server" Text="Popular Result"  style="margin-left: 10px; margin-top: 14px" BackColor="#94d6ff" Font-Size="Large" Height="45px" Width="203px"  ForeColor="White" OnClick="PopularResult_Click"/>
             <asp:Button ID="SmartResult" runat="server" style="margin-left: 18px; margin-top: 14px" Text="Smart Result" BackColor="#94d6ff" Font-Size="Large" Height="45px" Width="203px" ForeColor="White" OnClick="SmartResult_Click" />

   <br /><asp:Button ID="QueenResult" runat="server" Text="Queen Result"  style="margin-left:0px; margin-top:14px;" BackColor="#eeabab" Font-Size="Large" Height="45px" Width="203px"  ForeColor="White" OnClick="QueenResult_Click"/>
    <asp:Button ID="PrincessResult" runat="server" style="margin-top: 14px; margin-left: 27px;" Text="Princess Result" BackColor="#eeabab" Font-Size="Large" Height="45px" Width="203px"   ForeColor="White" OnClick="PrincessResult_Click" />
     <asp:Button ID="PopularPageResult" runat="server" style="margin-left: 17px; margin-top: 14px" Text="Popular Girl" BackColor="#eeabab" Font-Size="Large" Height="45px" Width="203px"   ForeColor="White" OnClick="PopularPageResult_Click" />
      <asp:Button ID="SmileResult" runat="server" style="margin-left: 18px; margin-top: 14px" Text="Smile Result" BackColor="#eeabab" Font-Size="Large" Height="45px" Width="203px"  ForeColor="White" OnClick="SmileResult_Click" />
        <asp:Button ID="CoupleResult" runat="server" Text="Couple Result"  style="margin-left: 11px; margin-top: 14px" BackColor="#eeabab" Font-Size="Large" Height="45px" Width="203px"  ForeColor="White" OnClick="CoupleResult_Click"/>
        <asp:Button ID="declareKing" runat="server" Text="Declare Winners" OnClick="declareKing_Click" style="margin-left: 15px; margin-top: 14px" BackColor="#eeabab" Font-Size="Large" Height="45px" Width="203px"  ForeColor="White" />

        <br />

        <br /> 
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Home.aspx" BackColor="White" BorderStyle="Dashed" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Underline="False" ForeColor="#009933">Go To Home Page</asp:HyperLink>
        <br />
        <br />
        <br />
        
        <asp:GridView ID="GridView1" runat="server" Width="726px" Height="260px" style="margin-left: 204px">
            </asp:GridView>


        <br />
        
        <br />
        <br />


    </div>
   
    </form>
</body>
</html>