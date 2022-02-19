<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReadCliente.aspx.cs" Inherits="SistemaClientes.Views.ReadCliente" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Resultados</h3>
    <div class="jumbotron" >
        <asp:GridView 
            ID="GridViewCliente" 
            CssClass="table table-bordered"
            runat="server">
        </asp:GridView>
    </div>       
</asp:Content>