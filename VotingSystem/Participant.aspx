<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDesign.Master" AutoEventWireup="true" CodeBehind="Participant.aspx.cs" Inherits="VotingSystem.Participant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Button ID="btn_reg" runat="server" style="margin-left: 9px; margin-top: 14px" Text="Show Male" BackColor="#FF6666" Font-Size="Large" Height="45px" Width="151px" OnClick="showbtn" ForeColor="White" />
    <asp:Button ID="girlShow" runat="server" Text="Show Female" OnClick="girlShow_Click" style="margin-left:9px; margin-top:14px;" BackColor="#FF6666" Font-Size="Large" Height="45px" Width="181px" ForeColor="White"/>
    <asp:Button ID="Button5" runat="server" style="margin-left: 9px; margin-top: 14px" Text="Show Couple" BackColor="#FF6666" Font-Size="Large" Height="45px" Width="182px" OnClick="Button5_Click1" ForeColor="White"/>
    <asp:Button ID="Button1" runat="server" style="margin-top: 14px; margin-left: 356px;" Text="+ Add" BackColor="#66FF66" Font-Size="Large" Height="45px" Width="91px" OnClick="Button1_Click" ForeColor="White" />
     <asp:Button ID="btnCouple" runat="server" Text="+ Couple"  style="margin-left: 10px; margin-top: 14px" BackColor="#66FF66" Font-Size="Large" Height="45px" Width="100px" OnClick="btnCouple_Click" ForeColor="White"/>
     <asp:Button ID="Button2" runat="server" style="margin-left: 17px; margin-top: 14px" Text="Edit" BackColor="#66FF66" Font-Size="Large" Height="45px" Width="84px" OnClick="Button2_Click1" ForeColor="White" />
     <asp:Button ID="Button3" runat="server" style="margin-left: 18px; margin-top: 14px" Text="Delete" BackColor="#66FF66" Font-Size="Large" Height="45px" Width="103px" OnClick="Button3_Click" ForeColor="White" />
           <br /> <br /><asp:GridView ID="GridView1" runat="server" Width="726px" Height="260px">
            </asp:GridView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>