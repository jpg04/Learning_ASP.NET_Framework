<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WithoutMaster.aspx.cs" Inherits="LearningWebForms.WebForm1" %>
<style>
        body
        {
             background-color:black;
             color:white
        }
    </style>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form ID="form1" runat="server">  
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

    <asp:BulletedList runat="server" ID="dropy">
        <asp:ListItem>Item1 </asp:ListItem>
        <asp:ListItem>Item2 </asp:ListItem>
        <asp:ListItem>Item3 </asp:ListItem>
    </asp:BulletedList>

    <asp:Button ID="addBtn" runat="server" Text="Add New Item" OnClick="addBtn_Click" OnClientClick="abc()"/>


        <script>
            function abc() {
                alert("Item Added From Client Side")
            }
        </script>

</form>
</body>
</html>
