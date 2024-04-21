<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TP5_Delgado._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>TP7</h1>
        <p class="lead">Trabajo de Enviando Mails</p>
        <table class="nav-justified">
            <tr>
                <td style="height: 20px; width: 61px">
                    <asp:Label ID="Label1" runat="server" Text="De:"></asp:Label>
                    <br />
                </td>
                <td style="height: 20px; width: 210px">
                    <asp:TextBox ID="TxtEmisor" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td style="height: 20px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmisor" ErrorMessage="Ingrese un corro electronico valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 20px; width: 61px">
                    Contraseña</td>
                <td style="height: 20px; width: 210px">
                    <asp:TextBox ID="TxtContra" runat="server" Width="280px" TextMode="Password"></asp:TextBox>
                </td>
                <td style="height: 20px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtContra" ErrorMessage="Ingrese su contraseña"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 20px; width: 61px">
                    <asp:Label ID="Label2" runat="server" Text="Para:"></asp:Label>
                    <br />
                </td>
                <td style="height: 20px; width: 210px">
                    <asp:TextBox ID="TxtDestinatario" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td style="height: 20px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtDestinatario" ErrorMessage="Ingrese un corro electronico valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 61px; height: 22px;">
                    <asp:Label ID="Label3" runat="server" Text="Asunto:"></asp:Label>
                    <br />
                </td>
                <td style="width: 210px; height: 22px;">
                    <asp:TextBox ID="TxtAsunto" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td style="height: 22px">
                    </td>
            </tr>
            <tr>
                <td style="height: 20px; width: 61px">
                    <asp:Label ID="Label4" runat="server" Text="Mensaje:"></asp:Label>
                    <br />
                </td>
                <td style="height: 20px; width: 210px">
                    &nbsp;</td>
                <td style="height: 20px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" rowspan="3">
                    <asp:TextBox ID="TxtMensaje" runat="server" Height="141px" TextMode="MultiLine" Width="344px"></asp:TextBox>
                </td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="height: 20px">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 20px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 61px">
                    <asp:Button ID="BtnEnviar" runat="server" OnClick="BtnEnviar_Click" Text="Enviar" />
                </td>
                <td style="width: 210px">
                    <asp:Label ID="LbConfirmado" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p class="lead">
            &nbsp;</p>
        <p class="lead">&nbsp;</p>
        <p class="lead">&nbsp;</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
