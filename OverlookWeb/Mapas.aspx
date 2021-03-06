﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Overlook.Master" AutoEventWireup="true" CodeBehind="Mapas.aspx.cs" Inherits="OverlookWeb.Mapas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>
    #total{
        background-image: url("http://media.idownloadblog.com/wp-content/uploads/2016/05/Plus-Slate-By-Jason-Zigrino-2.png");
        min-width: 100vh;
        min-height: 100vh;
        margin:0;
    }
    body{
        
    }
    #total > h1,h2{
        color: white;
        font-size: 42px;
    }
    #probamela{
        object-fit: cover;
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="total">
        <header class="headMenu">MAPAS</header>
        <h1>ASALTO</h1>
        <asp:DataList RepeatColumns="3" ID="MapasAsalto" runat="server" DataKeyField="ID_Mapa" DataSourceID="AsaltoFuente">
            <ItemTemplate>
                <a href="http://www.pornsfw.com/" ><img id ="probamela" src="<%# Eval("Imagen") %>" height="400px" width="150px"/></a>
            </ItemTemplate>
        </asp:DataList>
        <h1>ESCOLTA</h1>
        <asp:DataList ID="MapasEscolta" runat="server"></asp:DataList>
        <h1>CONTROL</h1>
        <asp:DataList ID="MapasControl" runat="server"></asp:DataList>
        <h1>ASALTO/ESCOLTA</h1>
        <asp:DataList ID="MapasHibrido" runat="server"></asp:DataList>
    </div>

    <asp:SqlDataSource ID="AsaltoFuente" runat="server" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="SELECT [ID_Mapa], [Nombre], [Tipo], [Imagen] FROM [Mapa] WHERE ([Tipo] = @Tipo)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Asalto" Name="Tipo" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
