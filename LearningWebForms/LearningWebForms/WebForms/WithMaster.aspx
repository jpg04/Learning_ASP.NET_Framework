<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WithMaster.aspx.cs" Inherits="LearningWebForms.WithMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <asp:TextBox ID="fname" runat="server" placeholder="Enter Your First Name"></asp:TextBox>
    <br />
    <asp:TextBox ID="lname" runat="server" placeholder="Enter Your Last Name"></asp:TextBox>
    <br />

    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>

    </asp:DropDownList>

    <br />

    <asp:Button ID="SubBtn" runat="server" Text="Submit" OnClick="SubBtn_Click" />

</asp:Content>
