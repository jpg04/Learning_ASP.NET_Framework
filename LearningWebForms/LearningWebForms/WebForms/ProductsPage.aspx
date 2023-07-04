<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductsPage.aspx.cs" Inherits="LearningWebForms.WebForms.ProductPage" %>

<%@ Register Src="~/UserControls/ProductsUserControl.ascx" TagPrefix="UC" TagName="Card" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body{
            background-color:darkgrey;
        }
    </style>
    <div class="d-flex flex-wrap">
        <%for (int i = 0; i < 16; i++) { %>
                <UC:Card runat="server"
            Title="Lenovo ThinkPad E14 Gen2"
            Description="Office Laptops"
            Price="87,999"
            ImageLink="https://www.bhphotovideo.com/images/images1500x1500/lenovo_20ta002cus_thinkpad_e14_g2_i5_1135_1605842.jpg">
        </UC:Card>
          <%} %>
        
    </div>


</asp:Content>
