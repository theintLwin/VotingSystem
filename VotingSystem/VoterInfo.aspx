<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDesign.Master" AutoEventWireup="true" CodeBehind="VoterInfo.aspx.cs" Inherits="VotingSystem.VoterInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Button ID="btn_reg" runat="server" style="margin-left: 225px; margin-top: 14px" Text="Show Voter Information" BackColor="#FF6666" Font-Size="Large" Height="45px" Width="335px" OnClick="showbtn" ForeColor="White" />
           <br /> <br /><asp:GridView ID="GridView1" runat="server" Width="726px" Height="260px">
            </asp:GridView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>