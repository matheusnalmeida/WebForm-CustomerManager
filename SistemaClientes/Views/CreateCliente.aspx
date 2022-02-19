<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateCliente.aspx.cs" Inherits="SistemaClientes.Views.CreateCliente" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Cadastro</h3>    
    <div class="jumbotron form-group">
        <div class="form-row" >            
            <div class="col-md-4 mb-4">
                <asp:Label ID="LabelNome" runat="server" Text="Nome"></asp:Label>
                <asp:TextBox ID="TextBoxNome" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="col-md-4 mb-4">
              <asp:Label ID="LabelSexo" runat="server" Text="Sexo"></asp:Label>
              
                <asp:DropDownList ID="DropDownListSexo" class="form-control" runat="server">
                    <asp:ListItem Text="Escolha..." Selected="True"/>
                    <asp:ListItem Text="Masculino" />
                    <asp:ListItem Text="Feminino" />
                    <asp:ListItem Text="Outro" />
                </asp:DropDownList>

            </div>
             <div class="col-md-4 mb-4">
                <asp:Label ID="LabelCPF" runat="server" Text="CPF" ></asp:Label>
                <asp:TextBox ID="TextBoxCpf" runat="server" class="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-row" style="margin-top: 60px;">            
            <div class="col-md-4 mb-4">
                <asp:Label ID="LabelRG" runat="server" Text="RG"></asp:Label>
                <asp:TextBox ID="TextBoxRG" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="col-md-4 mb-4">
              <asp:Label ID="LabelDataNascimento" runat="server" Text="Data de nascimento"></asp:Label>
              <asp:TextBox ID="TextBoxDataNascimento" runat="server" class="form-control"></asp:TextBox>
            </div>
             <div class="col-md-4 mb-4">
                <asp:Label ID="LabelEndereco" runat="server" Text="Endereço" ></asp:Label>
                <asp:TextBox ID="TextBoxEndereco" runat="server" class="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="form-row" style="margin-top: 130px;">      
            <div class="col-md-4 mb-4">
                <asp:Button ID="ButtonClear" CssClass="btn btn-danger" runat="server" Text="Limpar" OnClick="ClearData"/>
                <asp:Button ID="ButtonRegister" CssClass="btn btn-success" runat="server" Text="Registrar" OnClick="RegisterData"/>
            </div>            
        </div>
    </div>
</asp:Content>