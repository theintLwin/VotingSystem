<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="VotingSystem.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
    <style>
        body{
            background-image: url(images/rain2.gif);
        background-repeat: no-repeat;
        background-size: 1700px 900px;
        background-attachment: fixed;
        }
        .reg{
            margin-left: 350px;
            margin-top: 100px;
            text-align: center;
            background-image: url(images/soft3.jpg);
            width: 45%;
            height: 450px;
            background-repeat: no-repeat;
            font-size:20px;

        }
    </style>
<body>
    <form id="form1" runat="server">
    <div class="reg">

    
        <asp:Label ID="Label1" runat="server" Text="Register Form" style="font-size:30px; font-family:Oswald;"></asp:Label>

        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>

        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <br />

        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>

        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <br />
        <br />

        <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
        &nbsp; 
        <asp:RadioButton ID="male" runat="server" Text="Male" />

        <asp:RadioButton ID="female" runat="server" Text="Female" />
        <br />
        <br />

        <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>

        <asp:TextBox ID="txtPw" runat="server"></asp:TextBox>
        <br />
        <br />

        <asp:Label ID="Label6" runat="server" Text="Year"></asp:Label>

        <asp:ListBox ID="YearBox" runat="server" Height="45px" style="margin-left: 0px; margin-top: 16px" Width="156px">
            <asp:ListItem>First Year</asp:ListItem>
            <asp:ListItem>Second Year</asp:ListItem>
            <asp:ListItem>Third Year</asp:ListItem>
            <asp:ListItem>Fourth Year</asp:ListItem>
            <asp:ListItem>Final Year</asp:ListItem>
        </asp:ListBox>
        <br />
        <br />
        <asp:Button ID="btn_reg" runat="server" style="margin-left: 17px; margin-top: 14px" Text="Register" BackColor="#99CCFF" Font-Size="Large" Height="45px" Width="85px" ForeColor="#0000CC" OnClick="btn_reg_Click1" />

        <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
    </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>