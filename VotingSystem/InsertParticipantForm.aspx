<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertParticipantForm.aspx.cs" Inherits="VotingSystem.InsertParticipantForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
        body{
            background-image: url(images/cloud1.jpg);
        background-repeat: no-repeat;
        background-size: 1700px 900px;
        background-attachment: fixed;
        }
        .reg{
            margin-left: 350px;
            margin-top: 100px;
            text-align: center;
            background-image: url('images/soft4.jpg');
            width: 47%;
            height: 612px;
            background-repeat: no-repeat;
            font-size:20px;

        }
        </style>
<body>
    <form id="form1" runat="server">
    <div class="reg">
        <%--  --%>
         <asp:Label ID="Label1" runat="server" Text="Participant Insert Form" style="font-size:30px; color:#ffaeae;"></asp:Label>

        <br />
        <br />
        <br />
         
         &nbsp;&nbsp;&nbsp;&nbsp;
         
         <asp:Label ID="Label7" runat="server" Text="ID"></asp:Label>
       
        &nbsp;
       
        <asp:TextBox ID="txtId" runat="server" ReadOnly="True"></asp:TextBox> <br />
        <br />
        
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
         <asp:Label ID="Label8" runat="server" Text="Photo"></asp:Label>
        
        
         &nbsp;&nbsp;
        
        
         <asp:FileUpload ID="fileuploadimages" runat="server" />
        
        <br />
        <br />

        &nbsp;

        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>

        &nbsp;<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
         <br />
         <br />&nbsp;<asp:Label ID="Label9" runat="server" Text="Gender"></asp:Label>
         
         &nbsp;
         
         <asp:RadioButton ID="male" runat="server" Text="Male" />

         <asp:RadioButton ID="female" runat="server" Text="Female" />
        <br />
       
         
        <br />
       
        <asp:Label ID="Label3" runat="server" Text="Section"></asp:Label>
        &nbsp;<asp:TextBox ID="txtSection" runat="server"></asp:TextBox>
        <br />
        <br />

        &nbsp;<asp:Label ID="Label5" runat="server" Text="Height"></asp:Label>

        &nbsp;

        <asp:TextBox ID="txtHeight" runat="server"></asp:TextBox>
        <br />
         <br />
        
         <asp:Label ID="Label4" runat="server" Text="Fav Color"></asp:Label>
       
        &nbsp;<asp:TextBox ID="txtFavourite" runat="server"></asp:TextBox>
         <br />

         <br />

        <br />
     
        &nbsp;
     
        <asp:Label ID="Label6" runat="server" Text="Hobby"></asp:Label>

        &nbsp;
        <%--  --%>
        <asp:TextBox ID="txtHobby" runat="server"></asp:TextBox>
         <br />
         <br />
  
        <asp:Button ID="btnInsert" runat="server" style="margin-left: 289px; margin-top: 14px" Text="Add" BackColor="#FFCCFF" Font-Size="Large" Height="45px" Width="85px" OnClick="btnInsert_Click" ForeColor="#990099" />
    </div>
    </form>
</body>
</html>