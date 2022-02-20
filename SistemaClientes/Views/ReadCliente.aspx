<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReadCliente.aspx.cs" Inherits="SistemaClientes.Views.ReadCliente" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Resultados</h3>
    <div class="jumbotron" >
        <asp:GridView 
            ID="GridViewCliente" 
            CssClass="table table-bordered"
            runat="server">
        </asp:GridView>
        <asp:label ID="LabelNenhumCliente" Visible="false" style="display: table; margin: 0 auto;" runat="server" Font-Bold="true" Font-Size="Large">Nenhum Aluno Cadastrado!</asp:label>
    </div>       
</asp:Content>