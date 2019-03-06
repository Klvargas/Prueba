<%@ Page Title="" Language="C#" MasterPageFile="~/Proyecto/Site1.Master" AutoEventWireup="true" CodeBehind="Grupo_poblacional.aspx.cs" Inherits="Prueba1.Proyecto.Grupo_poblacional" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadGrid ID="RadGrid1" runat="server" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AutoGenerateColumns="False" Culture="es-ES" DataSourceID="EDS_poblacion">
    <GroupingSettings CollapseAllTooltip="Collapse all groups">
    </GroupingSettings>
    <mastertableview commanditemdisplay="Top" datakeynames="id" datasourceid="EDS_poblacion" editmode="Batch">
        <commanditemsettings addnewrecordtext="Agregar" cancelchangestext="Cancelar" refreshtext="Actualizar" savechangestext="Guardar" />
        <rowindicatorcolumn visible="False">
        </rowindicatorcolumn>
        <Columns>
            <telerik:GridBoundColumn DataField="id" DataType="System.Int32" FilterControlAltText="Filter id column" HeaderText="id" ReadOnly="True" SortExpression="id" UniqueName="id" Visible="False">
            </telerik:GridBoundColumn>
            <telerik:GridBoundColumn DataField="nombre_pob" FilterControlAltText="Filter nombre_pob column" HeaderText="Nombre Poblacion" SortExpression="nombre_pob" UniqueName="nombre_pob">
            </telerik:GridBoundColumn>
            <telerik:GridButtonColumn CommandName="delete" ConfirmText="Desea eliminar?" FilterControlAltText="Filter column column" HeaderText="Borrar" Text="Eliminar" UniqueName="column">
            </telerik:GridButtonColumn>
        </Columns>
    </mastertableview>
</telerik:RadGrid>
<asp:EntityDataSource ID="EDS_poblacion" runat="server" ConnectionString="name=prueba1Entities" DefaultContainerName="prueba1Entities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="poblacion">
</asp:EntityDataSource>
</asp:Content>
