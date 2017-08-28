<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ MasterType VirtualPath="~/Site.master" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
    <link href='<%= ResolveUrl("~/Styles/Home.css") %>' rel="stylesheet" />
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="formPlaceholder" Runat="Server">
    <h1>Our Most Popular Products</h1>
    <div class="product">
        <asp:Image runat="server" ImageUrl="~/Images/Products/cat1.jpg" AlternateText="Deranged Cat" /><br />
        <asp:HyperLink runat="server" NavigateUrl="~/Shopping/Order/cat01">Deranged Cat</asp:HyperLink>
    </div>
    <div class="product">
        <asp:Image runat="server" ImageUrl="~/Images/Products/hippie1.jpg" AlternateText="Hippie" /><br />
        <asp:HyperLink runat="server" NavigateUrl="~/Shopping/Order/hippie01">Hippie</asp:HyperLink>
    </div>
    <div class="product">
        <asp:Image runat="server" ImageUrl="~/Images/Products/vader1.jpg" AlternateText="Darth Vader" /><br />
        <asp:HyperLink runat="server" NavigateUrl="~/Shopping/Order/vader01">Darth Vader</asp:HyperLink>
    </div>
    <div class="product">
        <asp:Image runat="server" ImageUrl="~/Images/Products/cool1.jpg" AlternateText="Flying Bats" /><br />
        <asp:HyperLink runat="server" NavigateUrl="~/Shopping/Order/bats01">Flying Bats</asp:HyperLink>
    </div><br /><br />
    <div id="goto">
        <asp:HyperLink runat="server" NavigateUrl="~/Shopping/Order">Go to Orders page</asp:HyperLink>
    </div>
    
</asp:Content>

