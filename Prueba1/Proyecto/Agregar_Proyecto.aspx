﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Proyecto/Site1.Master" AutoEventWireup="true" CodeBehind="Agregar_Proyecto.aspx.cs" Inherits="Prueba1.Proyecto.Agregar_Proyecto" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 70%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="margin: auto">
        <tr>
            <td class="auto-style3">
                <telerik:RadLabel ID="RadLabel1" runat="server" style="font-size: small; font-family: Arial, Helvetica, sans-serif">
                    Código</telerik:RadLabel>
                <br />
                <telerik:RadTextBox ID="txtcodigo" Runat="server">
                </telerik:RadTextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcodigo" ErrorMessage="Dato Requerido" CausesValidation = "true"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <telerik:RadLabel ID="RadLabel2" runat="server" style="font-size: small; font-family: Arial, Helvetica, sans-serif">
                    Nombre</telerik:RadLabel>
                <br />
                <telerik:RadTextBox ID="txtnombre" Runat="server"  Rows="5" TextMode="MultiLine" Width="100%">
                </telerik:RadTextBox>            
            </td>
        </tr>
        <tr>
            <td>
                <telerik:RadLabel ID="RadLabel3" runat="server" style="font-size: small; font-family: Arial, Helvetica, sans-serif">
                    Valor</telerik:RadLabel>
                <br />
                <telerik:RadNumericTextBox ID="txtvalor" Runat="server">
                </telerik:RadNumericTextBox>
            </td>
        </tr>
        <tr>
            <td>
                <telerik:RadLabel ID="RadLabel4" runat="server" style="font-size: small; font-family: Arial, Helvetica, sans-serif">
                    Objetivos</telerik:RadLabel>
                <br />
                <telerik:RadTextBox ID="txtobjetivos" Runat="server" Rows="5" TextMode="MultiLine" Width="100%">
                </telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <telerik:RadComboBox ID="cmb_municipios" Runat="server" Culture="es-ES" DataSourceID="EDS_municipio" DataTextField="nombre_mun" DataValueField="id" EmptyMessage=" " MarkFirstMatch="True" Text="Seleccione Municipio">
                </telerik:RadComboBox>
                <asp:EntityDataSource ID="EDS_municipio" runat="server" ConnectionString="name=prueba1Entities" DefaultContainerName="prueba1Entities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="municipio">
                </asp:EntityDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <telerik:RadButton ID="btnguardar" runat="server" OnClick="btnguardar_Click" Text="Guardar">
                </telerik:RadButton>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
