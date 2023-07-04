<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="LearningWebForms.WebForms.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%;">
    <tr>
        <td style="width: 187px">
            <span style="font-size: xx-large; font-weight: bold">S</span><span style="font-weight: bold; font-size: xx-large">ignUp</span></td>
        <td style="width: 27px" class="text-start">
            &nbsp;</td>
        <td style="width: 234px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-start" style="width: 187px">
            <asp:Label ID="Label2" runat="server" style="text-align: right; font-size: medium" Text="Full Name"></asp:Label>
        </td>
        <td class="text-start" style="width: 27px">:</td>
        <td style="width: 234px">
            <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="name can be only alphabets" ForeColor="Red" ValidationExpression="[a-zA-Z\s]+"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="text-start" style="width: 187px">
            <asp:Label ID="Label3" runat="server" style="text-align: right; font-size: medium" Text="Date of Birth"></asp:Label>
        </td>
        <td class="text-start" style="width: 27px">:</td>
        <td style="width: 234px">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" Width="249px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="date should be before 2005" ForeColor="Red" MaximumValue="2005/12/31" MinimumValue="1990/01/01" Type="Date"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="text-start" style="height: 29px; width: 187px">
            <asp:Label ID="Label4" runat="server" style="text-align: right; font-size: medium" Text="Email"></asp:Label>
        </td>
        <td class="text-start" style="height: 29px; width: 27px">:</td>
        <td style="height: 29px; width: 234px">
            <asp:TextBox ID="TextBox3" runat="server" Width="249px"></asp:TextBox>
        </td>
        <td style="height: 29px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="enter a valid email" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z0-9-_]+@(gmail|yahoo|outlook)\.[a-zA-Z]{2,}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="text-start" style="width: 187px; height: 35px">
            <asp:Label ID="Label5" runat="server" style="text-align: right; font-size: medium" Text="Password"></asp:Label>
        </td>
        <td class="text-start" style="width: 27px; height: 35px">:</td>
        <td style="width: 234px; height: 35px">
            <asp:TextBox ID="TextBox4" runat="server" Width="249px"></asp:TextBox>
        </td>
        <td style="height: 35px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="enter a valid password" ForeColor="Red" ValidationExpression="[0-9!@#$%^]{8,}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="text-start" style="width: 187px">
            <asp:Label ID="Label6" runat="server" style="text-align: right; font-size: medium" Text="Confirm Password"></asp:Label>
        </td>
        <td class="text-start" style="width: 27px">:</td>
        <td style="width: 234px">
            <asp:TextBox ID="TextBox5" runat="server" Width="249px"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="password does not match" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="text-start" style="width: 187px">
            <asp:Label ID="Label7" runat="server" style="text-align: right; font-size: medium" Text="Lucky Number"></asp:Label>
        </td>
        <td class="text-start" style="width: 27px">:</td>
        <td style="width: 234px">
            <asp:TextBox ID="TextBox6" runat="server" Width="249px"></asp:TextBox>
        </td>
        <td>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="odd number is not allowed" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 187px">&nbsp;</td>
        <td style="width: 27px" class="text-start">&nbsp;</td>
        <td style="width: 234px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right; width: 187px">&nbsp;</td>
        <td style="width: 27px" class="text-start">&nbsp;</td>
        <td style="width: 234px"><strong>
            <asp:Button ID="Button1" runat="server" Height="40px" style="font-size: large" Text="SignUp" Width="257px" />
            </strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right; width: 187px">&nbsp;</td>
        <td style="width: 27px" class="text-start">&nbsp;</td>
        <td style="width: 234px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 187px">&nbsp;</td>
        <td style="width: 27px" class="text-start">&nbsp;</td>
        <td style="width: 234px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

    <script>

        function ClientValidate(source, arguments) {
            if (arguments.Value % 2 == 0) {
                arguments.IsValid = true;
            } else {
                arguments.IsValid = false;
            }
        }

    </script>

</asp:Content>
