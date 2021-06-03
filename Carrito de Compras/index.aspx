﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Carrito_de_Compras.WebForm2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="contenedor">
     
    <div class="grid">
       <% foreach (Dominio.Producto item in lista)
            {   %>
        <div class="producto">
            

            <a>
                <img src="<% = item.UrlImagen %>" class="producto__imagen" alt="..." />
                <div class="producto__informacion">
                    <p class="producto__nombre"><% = item.Nombre %> </p>
                    <p class="producto__precio">$<% = item.Precio %> </p>
                    <div class="camisa">
                    <form class="formulario">
                        <input class="formulario__campo" type="number" placeholder="Cantidad" min="1">
                        <input class="formulario__submit" type="submit" value="Agregar al Carrito">
                    
                         </div>
                    <a href="Detalle.aspx?id=<% = item.Id %>">
                      <button type="button" class="formulario__button">Ver detalle</button>
                    </a>
                    </form>
                </div>

            </a>
            
        </div>
        <% } %>
    </div>
        </div>
</asp:Content>

