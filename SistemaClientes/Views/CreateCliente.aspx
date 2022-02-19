<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateCliente.aspx.cs" Inherits="SistemaClientes.Views.CreateCliente" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Cadastro</h3>    
    <div class="jumbotron form-group">
        <div class="form-row" >            
            <div class="col-md-4 mb-4">
                <asp:Label ID="LabelNome" runat="server" Text="Nome"></asp:Label>
                <asp:RequiredFieldValidator 
                    ID="RequiredFieldValidatorNome" 
                    runat="server"                     
                    ErrorMessage="Nome não pode ser vazio!"
                    ForeColor="Red"
                    ControlToValidate="TextBoxNome"
                    Display = "Dynamic" 
                    ValidationGroup="Submit">*
                </asp:RequiredFieldValidator>   
                <asp:TextBox ID="TextBoxNome" runat="server" class="form-control"></asp:TextBox>          
            </div>
            <div class="col-md-4 mb-4">
              <asp:Label ID="LabelSexo" runat="server" Text="Sexo"></asp:Label>    
                <asp:RequiredFieldValidator 
                    ID="RequiredFieldValidatorSexo" 
                    runat="server"                     
                    ErrorMessage="Selecione um valor para o sexo!"
                    Display = "Dynamic" 
                    ForeColor="Red"
                    ControlToValidate="DropDownListSexo" ValidationGroup="Submit">*
                </asp:RequiredFieldValidator>                  
                <asp:DropDownList ID="DropDownListSexo" class="form-control" runat="server">
                    <asp:ListItem Text="" Selected="True"/>
                    <asp:ListItem Text="Masculino" />
                    <asp:ListItem Text="Feminino" />
                    <asp:ListItem Text="Outro" />
                </asp:DropDownList>
            </div>
             <div class="col-md-4 mb-4">
                <asp:Label ID="LabelCPF" runat="server" Text="CPF" ></asp:Label>
                <asp:RequiredFieldValidator 
                    ID="RequiredFieldValidatorCPF" 
                    Display = "Dynamic" 
                    runat="server"                     
                    ErrorMessage="CPF não pode ser vazio!"
                    ForeColor="Red"
                    ControlToValidate="TextBoxCpf" 
                    ValidationGroup="Submit">*
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator 
                    Display = "Dynamic" 
                    ControlToValidate = "TextBoxCpf" 
                    ID="RegularExpressionValidatorCPF" 
                    ValidationExpression = "^[\d]{11,11}$" 
                    runat="server" 
                    ErrorMessage="O CPF deve ter exatamente 11 caracteres e somente números!"
                    ForeColor="Red"
                    ValidationGroup="Submit"
                    >*</asp:RegularExpressionValidator>
                <asp:TextBox ID="TextBoxCpf" runat="server" class="form-control" MaxLength="11"></asp:TextBox>         
             </div>
        </div>
        <div class="form-row" style="margin-top: 80px;">            
            <div class="col-md-4 mb-4">
                <asp:Label ID="LabelRG" runat="server" Text="RG"></asp:Label>
                <asp:RequiredFieldValidator 
                    ID="RequiredFieldValidatorRG" 
                    runat="server"                     
                    ErrorMessage="RG não pode ser vazio!"
                    ForeColor="Red"
                    ControlToValidate="TextBoxRG" ValidationGroup="Submit">*
                </asp:RequiredFieldValidator> 
                <asp:RegularExpressionValidator 
                    Display="Dynamic" 
                    ControlToValidate = "TextBoxRG" 
                    ID="RegularExpressionValidatorRG" 
                    ValidationExpression = "^[\d]{9,9}$" 
                    runat="server" 
                    ErrorMessage="O RG deve ter exatamente 9 caracteres e somente números!"
                    ForeColor="Red"
                    ValidationGroup="Submit"
                    >*</asp:RegularExpressionValidator>
                <asp:TextBox ID="TextBoxRG" runat="server" class="form-control" MaxLength="9"></asp:TextBox>
            </div>
            <div class="col-md-4 mb-4">
              <asp:Label ID="LabelDataNascimento" runat="server" Text="Data de nascimento"></asp:Label>
                <asp:RequiredFieldValidator 
                    ID="RequiredFieldValidatorDataNascimento" 
                    runat="server"                     
                    ErrorMessage="Data de nascimento não pode ser vazio!"
                    ForeColor="Red"
                    ControlToValidate="TextBoxDataNascimento" 
                    ValidationGroup="Submit">*
                </asp:RequiredFieldValidator> 
                <asp:CompareValidator 
                    ID="ComparevalidatorDataNascimento" 
                    runat="server" 
                    ErrorMessage="A data de nascimento tem que ser menor que o dia atual"
                    Operator="LessThan" 
                    ControlToValidate="TextBoxDataNascimento" 
                    Type="date" 
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="Submit">*</asp:CompareValidator>
              <asp:TextBox ID="TextBoxDataNascimento" runat="server" class="form-control" textmode="Date"></asp:TextBox>
            </div>
             <div class="col-md-4 mb-4">
                <asp:Label ID="LabelEndereco" runat="server" Text="Endereço" ></asp:Label>
                <asp:RequiredFieldValidator 
                    ID="RequiredFieldValidatorEndereco" 
                    runat="server"                     
                    ErrorMessage="Endereço não pode ser vazio!"
                    ForeColor="Red"
                    ControlToValidate="TextBoxEndereco" ValidationGroup="Submit">*
                </asp:RequiredFieldValidator> 
                <asp:TextBox ID="TextBoxEndereco" runat="server" class="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-row" style="margin-top: 170px;">      
            <div class="col-md-12 mb-4">
                <asp:Button ID="ButtonClear" CssClass="btn btn-danger" runat="server" Text="Limpar" OnClick="ClearData"/>
                <asp:Button ID="ButtonRegister" CssClass="btn btn-success" runat="server" Text="OK" OnClick="RegisterData" ValidationGroup="Submit"/>
            </div>            
        </div>
        <asp:ValidationSummary 
            DisplayMode="BulletList"
            ID="vsValidationExample"
            ShowSummary="True"           
            ForeColor="Red"
            ValidationGroup="Submit"
            CssClass="form-row"
            style="margin-top: 230px"
            runat="server" />            
    </div>
</asp:Content>