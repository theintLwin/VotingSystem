<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menuPage.aspx.cs" Inherits="VotingSystem.menuPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-image:url(images/bg4.jpg);
            background-repeat:no-repeat;
            background-size:1250px 900px;
            background-attachment:fixed;
        }
        .reg{
            margin-left:350px;
        }
    </style>
</head>
<body style="height: 197px">
    <form id="form1" runat="server">
    <div class="reg">
                   <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="images/kingimg.gif" Width="100px" style="margin-left: 32px" />
        
                        
<asp:Button ID="Button1" runat="server" BackColor="#000099" BorderStyle="Double" Font-Bold="True" Font-Size="X-Large" ForeColor="White" style="margin-left: 33px; margin-top: 20px; margin-bottom:35px;" Text="King" Width="112px" OnClick="Button1_Click" />

                    
                         <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="images/queenimg.gif" Width="100px" style="margin-left: 32px" />
        
                          
<asp:Button ID="Button2" runat="server" BackColor="#000099" BorderStyle="Double" Font-Bold="True" Font-Size="X-Large" ForeColor="White" style="margin-left: 33px; margin-top: 20px; margin-bottom:35px;" Text="Queen" Width="112px" OnClick="Button2_Click" />
  

                          <br />
                   <br />
                   <br />
                   <br />
                   <br />
  

                          <asp:Image ID="Image3" runat="server" Height="100px" ImageUrl="images/kingimg.gif" Width="100px" style="margin-left: 32px" />
        
                        
<asp:Button ID="Button3" runat="server" BackColor="#0033CC" BorderStyle="Double" Font-Bold="True" Font-Size="X-Large" ForeColor="White" style="margin-left: 33px; margin-top: 20px; margin-bottom:35px;" Text="Prince" Width="112px" OnClick="Button3_Click" />

                         <asp:Image ID="Image4" runat="server" Height="100px" ImageUrl="images/queenimg.gif" Width="100px" style="margin-left: 32px" />
        
                          
<asp:Button ID="Button4" runat="server" BackColor="#0033CC" BorderStyle="Double" Font-Bold="True" Font-Size="X-Large" ForeColor="White" style="margin-left: 33px; margin-top: 20px; margin-bottom:35px;" Text="Princess" Width="112px" OnClick="Button4_Click" />
                    
 
                          <br />
                   <br />
                   <br />
                   <br />
                   <br />
                    
 
                          <asp:Image ID="Image5" runat="server" Height="100px" ImageUrl="images/kingimg.gif" Width="100px" style="margin-left: 32px" />
        
                        
<asp:Button ID="Button5" runat="server" BackColor="#0066CC" BorderStyle="Double" Font-Bold="True" Font-Size="X-Large" ForeColor="White" style="margin-left: 33px; margin-top: 20px; margin-bottom:35px;" Text="Popular" Width="112px" OnClick="Button5_Click" />
 
                         <asp:Image ID="Image6" runat="server" Height="100px" ImageUrl="images/queenimg.gif" Width="100px" style="margin-left: 32px" />
        
                          
<asp:Button ID="Button6" runat="server" BackColor="#0066CC" BorderStyle="Double" Font-Bold="True" Font-Size="X-Large" ForeColor="White" style="margin-left: 33px; margin-top: 20px; margin-bottom:35px;" Text="Popular" Width="112px" OnClick="Button6_Click" />
  
            
                          <br />
                   <br />
                   <br />
                   <br />
                   <br />
  
            
                          <asp:Image ID="Image7" runat="server" Height="100px" ImageUrl="images/kingimg.gif" Width="100px" style="margin-left: 32px" />
        
                        
<asp:Button ID="Button7" runat="server" BackColor="#0066FF" BorderStyle="Double" Font-Bold="True" Font-Size="X-Large" ForeColor="White" style="margin-left: 33px; margin-top: 20px; margin-bottom:35px;" Text="Smart" Width="112px" OnClick="Button7_Click" />
        
                     
                         <asp:Image ID="Image8" runat="server" Height="100px" ImageUrl="images/queenimg.gif" Width="100px" style="margin-left: 32px" />
        
                          
<asp:Button ID="Button8" runat="server" BackColor="#0066FF" BorderStyle="Double" Font-Bold="True" Font-Size="X-Large" ForeColor="White" style="margin-left: 33px; margin-top: 20px; margin-bottom:35px;" Text="Smile" Width="112px" OnClick="Button8_Click" />
                    
                 

                     
                       <br />
                   <br />
                   <br />
                   <br />
                    
                 

                     
                       &nbsp;&nbsp;
                    
                 

                     
                       <asp:Image ID="Image9" runat="server" Height="130px" ImageUrl="images/ca.jpg" Width="130px" style="margin-left: 126px;" />
                                
                       <asp:Button ID="Button9" runat="server" BackColor="white" BorderStyle="Double" Font-Bold="True" Font-Size="X-Large" ForeColor="#000099" style="margin-left: 33px; margin-top: 0px; margin-bottom:35px; " Text="Best Couple" Width="170px" OnClick="Button9_Click" />
                    
               
         </div>
        
    </form>
</body>
</html>
