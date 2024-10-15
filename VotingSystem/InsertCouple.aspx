<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertCouple.aspx.cs" Inherits="VotingSystem.InsertCouple" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
      body{
            background-image: url(images/c2.jpg);
        background-repeat: no-repeat;
        background-size: 1300px 599px;
        background-attachment: fixed;
        }
        .reg{
            margin-left:300px;
            margin-top: 100px;
            text-align: center;
          background-color:#f9ed96;
            width: 50%;
            height: 400px;
            background-repeat: no-repeat;
            font-size:20px;
            
            
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="reg">
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Couple Title"></asp:Label> &nbsp;&nbsp;
        <asp:TextBox ID="coupleTitle" runat="server"></asp:TextBox> <br /><br /><br />
        <asp:Label ID="Label1" runat="server" Text="Male"></asp:Label>
        <asp:ListBox ID="MaleList" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" Height="114px" Width="144px"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name] FROM [Participant]"></asp:SqlDataSource>

       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:Label ID="Label2" runat="server" Text="Female"></asp:Label>
        <asp:ListBox ID="FemaleList" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" Height="114px" Width="144px"></asp:ListBox><br /><br /><br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name] FROM [Queen]"></asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label3" runat="server" Text="Couple Photo"></asp:Label>
         &nbsp;&nbsp;
          <asp:FileUpload ID="couplePoto" runat="server" />
        <br /><br />
        <asp:Button ID="AddingCouple" runat="server" style="margin-left: 260px" Text="Add" BackColor="#ff9b05" Font-Size="Large" Height="40px" Width="110px" ForeColor="White" OnClick="AddingCouple_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="backtoparti" runat="server" Text="Back" BackColor="#ff9b05" Font-Size="Large" Height="40px" Width="110px" ForeColor="White" OnClick="backtoparti_Click"  />
    </div>
    </form>
</body>
</html>