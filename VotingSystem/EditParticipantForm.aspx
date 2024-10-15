<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditParticipantForm.aspx.cs" Inherits="VotingSystem.EditParticipantForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
      body{
            background-image: url(images/e1.jpg);
        background-repeat: no-repeat;
        background-size: 1300px 599px;
        background-attachment: fixed;
        }
        .reg{
            margin-left: 250px;
            margin-top: 50px;
            text-align: center;
         background-color:#cb7f67;
         
            width: 60%;
            height: 380px;
            background-repeat: no-repeat;
            font-size:20px;
            
        }
        </style>
    </head>
<body>
    <form id="form1" runat="server">
      
        
            <div class="reg"> 
                <br />
                <asp:Label ID="gender" runat="server" Text="Gender"></asp:Label>
         
       
         
                <br />
         
       
         
         <asp:RadioButton ID="male" runat="server" Text="Male" />

         <asp:RadioButton ID="female" runat="server" Text="Female" />      
       
                <br />
                <br />
       
           
       
            <asp:Label ID="lblID" runat="server" Text="ID"></asp:Label>
        
            &nbsp;
        
            <asp:TextBox ID="txtId" runat="server" Width="275px" style="margin-left: 36px" ></asp:TextBox>
       
                <br />
                <br />
       
            
       
       
            
       
            <asp:Label ID="lblSection" runat="server" Text="Section"></asp:Label>
        
        
            &nbsp;<asp:TextBox ID="txtSection" runat="server" Width="278px" ></asp:TextBox>

            
       
            
       
            <br />

            
       
   
          
            <br />

          <asp:Label ID="lblAddress0" runat="server" Text="Height"></asp:Label>
        
          
       &nbsp;<asp:TextBox ID="txtHeight" runat="server" Width="277px"></asp:TextBox>
                <br />
                <br />
            <asp:Label ID="Label1" runat="server" Text="Color"></asp:Label>
        
            
      
   
            &nbsp;
        
            
      
   
            <asp:TextBox ID="txtFavourite" runat="server" Width="277px"></asp:TextBox>
        
                <br />
        
            <br />
        
            <asp:Label ID="Label2" runat="server" Text="Hobby"></asp:Label>
        
            <asp:TextBox ID="txtHobby" runat="server" Width="277px"></asp:TextBox>

                 <br />
                <br />

                 <asp:Button ID="btnDisplay" runat="server" OnClick="btnDisplay_Click" Text="Show Male" style="margin-left: 22px" BackColor="#fe9b3a" Font-Size="Large" Height="45px" Width="150px"  ForeColor="White" />
           
            <asp:Button ID="femaleShowDisplay" runat="server" Text="Show Female" BackColor="#fe9b3a" Font-Size="Large" Height="45px" Width="150px"  ForeColor="White" OnClick="femaleShowDisplay_Click" />
            
            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" BackColor="#fe9b3a" Font-Size="Large" Height="45px" Width="150px"  ForeColor="White"/> 
        <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" BackColor="#fe9b3a" Font-Size="Large" Height="45px" Width="150px"  ForeColor="White"/>
                <br />
                <br />
            
            </div>
        <asp:GridView ID="GridView1" runat="server" Width="722px" Font-Bold="True" ForeColor="White" style="margin-left: 140px" >
            </asp:GridView>
        

    </form>
</body>
</html>