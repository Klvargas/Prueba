<%@ Page Title="" Language="C#" MasterPageFile="~/Proyecto/Site1.Master" AutoEventWireup="true" CodeBehind="Agregar_Fuente.aspx.cs" Inherits="Prueba1.Proyecto.Agregar_Fuente" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadGrid ID="RadGrid1" runat="server" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AutoGenerateColumns="False" Culture="es-ES" DataSourceID="EDS_fuente">
        <GroupingSettings CollapseAllTooltip="Collapse all groups">
        </GroupingSettings>
        <MasterTableView CommandItemDisplay="Top" DataKeyNames="id_fuente" DataSourceID="EDS_fuente" EditMode="Batch" NoMasterRecordsText="">
            <CommandItemSettings AddNewRecordText="Agregar Nuevo" CancelChangesText="Cancelar" RefreshText="Actualizar" SaveChangesText="Guardar" />
            <RowIndicatorColumn Visible="False">
            </RowIndicatorColumn>
            <ExpandCollapseColumn Created="True">
            </ExpandCollapseColumn>
            <Columns>
                <telerik:GridBoundColumn DataField="id_fuente" DataType="System.Int32" FilterControlAltText="Filter id_fuente column" ForceExtractValue="Always" HeaderText="id_fuente" ReadOnly="True" SortExpression="id_fuente" UniqueName="id_fuente" Visible="False">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="nombre_fuente" FilterControlAltText="Filter nombre_fuente column" HeaderText="Nombre de Fuente" SortExpression="nombre_fuente" UniqueName="nombre_fuente">
                </telerik:GridBoundColumn>
            </Columns>
        </MasterTableView>
    </telerik:RadGrid>
    <asp:EntityDataSource ID="EDS_fuente" runat="server" ConnectionString="name=prueba1Entities" DefaultContainerName="prueba1Entities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="fuentes">
    </asp:EntityDataSource>
</asp:Content>
