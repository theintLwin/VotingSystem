<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrincePage.aspx.cs" Inherits="VotingSystem.PrincePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="MenuStyleSheet.css" rel="stylesheet" />
    <style>
        .wrap{
            display:flex;
            margin-top:100px;
            margin-left:300px;
           
        }
        .text{
            font-size:20px;
            text-align:center;
            color:white;
            font-weight:bold;
             background-color: #101e77;
             width:300px;
          padding-top:15px;
        }
        body{
        background-image: url(images/bg1.jpg);
        background-repeat: no-repeat;
        background-size: 1750px 900px;
        background-attachment: fixed;
      }
        .list{
            margin-left:450px;
            margin-top:50px;
            font-size:20px;
        }
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="navbar">
  <a href="KingPage.aspx">King</a>
  <a href="QueenPage.aspx">Queen</a>
  <a href="PrincePage.aspx">Prince</a>
  <a href="PrincessPage.aspx">Princess</a>
 <a href="PopularPage.aspx">Popular</a>
  <a href="PopularPage.aspx">Popular</a>
   <a href="SmartPage.aspx">Smart</a>
  <a href="SmilePage.aspx">Smile</a>
  <a href="BestCouplePage.aspx">Best Couple</a>
             <a href="UserWinner.aspx">Winner Result </a>
  <a href="LoginRegister.aspx" style="margin-left:400px;">Logout</a>

</div>
        
        
        
        
        

    </div>

        <div>

            <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand">
                <HeaderStyle BackColor="Black" HorizontalAlign="Center"/>
                <ItemTemplate>
                    <div class="wrap">
                        <div>                       
                             <asp:Image ID="Image3" runat="server" ImageUrl='<%#Eval("Photo","~/Images/{0}") %>' Width="200px" Height="256px"/> 
                        </div>
                        <div style="margin-left:100px;" class="text">
                            <asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label>
                            <asp:Label ID="Label11" runat="server" Text='<%#Eval("Name") %>'></asp:Label> <br /><br />
                            <asp:Label ID="Label2" runat="server" Text="Section: "></asp:Label>
                            <asp:Label ID="Label12" runat="server" Text='<%#Eval("Section") %>'></asp:Label><br /><br />
                            <asp:Label ID="Label3" runat="server" Text="Height: "></asp:Label>
                            <asp:Label ID="Label13" runat="server" Text='<%#Eval("Height") %>'></asp:Label><br /><br />
                            <asp:Label ID="Label4" runat="server" Text="Favourite color: "></asp:Label>
                            <asp:Label ID="Label14" runat="server" Text='<%#Eval("Favourite_color") %>'></asp:Label><br /><br />
                            <asp:Label ID="Label5" runat="server" Text="Hobby: "></asp:Label>
                            <asp:Label ID="Label15" runat="server" Text='<%#Eval("Hobby") %>'></asp:Label><br /><br />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <div class="list">
                <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" Height="236px" Width="342px" BackColor="White" Font-Bold="True" Font-Size="X-Large" ForeColor="#000099">
               

            </asp:ListBox>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name] FROM [Participant]"></asp:SqlDataSource> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="PrinceVote" runat="server" Text="Vote" Font-Bold="True" Font-Size="XX-Large" ForeColor="#000099" OnClick="PrinceVote_Click" />
                <br /><br /><br />
                &nbsp;
                <asp:Label ID="Label6" runat="server" BackColor="White" ForeColor="#0000CC" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label>
            </div>

        </div>


        
    </form>
</body>
</html>
