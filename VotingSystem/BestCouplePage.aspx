<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BestCouplePage.aspx.cs" Inherits="VotingSystem.BestCouplePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="MenuStyleSheet.css" rel="stylesheet" />
    <style>
        .wrap{
            display:flex;
            margin-top:100px;
            margin-left:350px;
           
        }
        .text{
            font-size:20px;
            text-align:center;
            color:white;
            font-weight:bold;
             background-color: #101e77;
             width:300px;
          padding-top:35px;
        }
        body{
        background-image: url(images/c1.jpg);
        background-repeat: no-repeat;
        background-size: 1300px 700px;
        background-attachment: fixed;
      }
        .list{
            margin-left:350px;
            margin-top:50px;
            font-size:10px;
        }
        .wrapper1{
            display:flex;
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
 <a href="Popular.aspx">Popular</a>
  <a href="PopularPage.aspx">Popular</a>
   <a href="SmartPage.aspx">Smart</a>
  <a href="SmilePage.aspx">Smile</a>
  <a href="BestCouplePage.aspx">Best Couple</a>
            <a href="UserWinner.aspx">Winner Result </a>
  <a href="LoginRegister.aspx" style="margin-left:400px;">Logout</a>

</div>
        
        
        
        
        

    </div>

        <div class="wrapper1">
            <div class="datalist1">

            <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand">
                <HeaderStyle BackColor="Black" HorizontalAlign="Center"/>
                <ItemTemplate>
                    <div class="wrap">
                        <div>                       
                             <asp:Image ID="Image3" runat="server" ImageUrl='<%#Eval("Photo","~/Images/{0}") %>' Width="220px" Height="220px"/> 
                        </div>
                        <div style="margin-left:100px;" class="text">
                            
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("Title") %>'></asp:Label> <br /><br />
                            <asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label>
                            <asp:Label ID="Label11" runat="server" Text='<%#Eval("Name") %>'></asp:Label> <br />
                           
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
                </div>


             </div>


            <div class="list">
                <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" Height="212px" Width="547px" BackColor="White" Font-Bold="True" Font-Size="X-Large" ForeColor="#000099" style="margin-left: 0px">
               

            </asp:ListBox>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name] FROM [Couple]"></asp:SqlDataSource> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                <asp:Button ID="CoupleVote" runat="server" Text="Vote" Font-Bold="True" Font-Size="XX-Large" ForeColor="#000099" OnClick="CoupleVote_Click"  />

                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" BackColor="White" ForeColor="#0000CC" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label>

            </div>

       

        
    </form>
</body>
</html>
