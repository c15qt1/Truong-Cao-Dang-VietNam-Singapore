<%@ Page Title="Câu hỏi trắc nghiệm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CayQD.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>
        <asp:Label ID="blCauHoi" runat="server" Text="Test câu hỏi" Font-Size="XX-Large"></asp:Label>
    </h3>
    <p>
        <asp:CheckBoxList ID="bxTraLoi" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cbxTraLoi_SelectedIndexChanged" Font-Size="Larger"></asp:CheckBoxList>
    </p>
</asp:Content>
