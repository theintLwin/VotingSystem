<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteParticipantForm.aspx.cs" Inherits="VotingSystem.DeleteParticipantForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
        body{
            background-image: url(images/delete1.gif);
        background-repeat: no-repeat;
        background-size: 1500px 599px;
        background-attachment: fixed;
        }
        .reg{
            margin-left: 50px;
            margin-top: 50px;
            text-align: center;
            background-color:#69a83a;
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
            <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Label ID="lblId" runat="server" Text="ID" style="font-size:25px; color:white;"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtId" runat="server" Width="296px"></asp:TextBox>
            </td>
            <td> <br /><br />
                <asp:Button ID="btnDelete" runat="server" Text="Delete Male" Height="50px" Width="116px" BackColor="#EC9706" ForeColor="white"  OnClick="btnDelete_Click" />&nbsp;
                <asp:Button ID="btnfDelete" runat="server" Text="Delete Female" Height="50px" Width="116px" BackColor="#EC9706" ForeColor="white" OnClick="btnfDelete_Click" />
                <asp:Button ID="btncDelete" runat="server" Text="Delete Couple" Height="50px" Width="116px" BackColor="#EC9706" ForeColor="white" OnClick="btncDelete_Click" style="margin-left: 8px" />
                <br /><br />
                <asp:Button ID="MaleList" runat="server" Text="Show Male" Height="50px" Width="116px" BackColor="#FFBF00" ForeColor="white" OnClick="MaleList_Click" />
            &nbsp;<asp:Button ID="FemaleList" runat="server" Text="Show Female" Height="50px" Width="116px" BackColor="#FFBF00" ForeColor="white" OnClick="FemaleList_Click" />&nbsp;
                <asp:Button ID="BCoupleList" runat="server" Text="Show Couple" Height="50px" Width="116px" BackColor="#FFBF00" ForeColor="white" OnClick="BCoupleList_Click" />
            </td>
            
        </tr>
        <tr> 
            <td class="auto-style2" colspan="3">
                <asp:GridView ID="GridView1" runat="server" Width="645px" ForeColor="White">
                </asp:GridView>
            </td>
        </tr>
    </table>
       </div>

    </form>
</body>
</html>