<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eg.aspx.cs" Inherits="VotingSystem.eg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name] FROM [Participant]"></asp:SqlDataSource>
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name"></asp:ListBox>
    
    </div>
    </form>
</body>
</html>
