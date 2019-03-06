<%@ Page Title="" Language="C#" MasterPageFile="~/Proyecto/Site1.Master" AutoEventWireup="true" CodeBehind="Fuentes.aspx.cs" Inherits="Prueba1.Proyecto.Fuentes" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <telerik:RadGrid ID="RadGrid1" runat="server" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AutoGenerateColumns="False" Culture="es-ES" DataSourceID="EDS_Fuentes">
        <GroupingSettings CollapseAllTooltip="Collapse all groups">
        </GroupingSettings>
        <MasterTableView CommandItemDisplay="Top" DataKeyNames="id_fuente" DataSourceID="EDS_Fuentes" EditMode="Batch">
            <CommandItemSettings AddNewRecordText="Agregar Fuente" CancelChangesText="Cancelar" RefreshText="Actualizar" SaveChangesText="Guardar" />
            <RowIndicatorColumn Visible="False">
            </RowIndicatorColumn>
            <ExpandCollapseColumn Created="True">
            </ExpandCollapseColumn>
            <Columns>
                <telerik:GridBoundColumn DataField="id_fuente" DataType="System.Int32" FilterControlAltText="Filter id_fuente column" HeaderText="id_fuente" ReadOnly="True" SortExpression="id_fuente" UniqueName="id_fuente" Visible="False">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="nombre_fuente" FilterControlAltText="Filter nombre_fuente column" HeaderText="Nombre Fuente" SortExpression="nombre_fuente" UniqueName="nombre_fuente">
                    <HeaderStyle Font-Bold="True" />
                </telerik:GridBoundColumn>
            </Columns>
        </MasterTableView>
    </telerik:RadGrid>
    <asp:EntityDataSource ID="EDS_Fuentes" runat="server" ConnectionString="name=prueba1Entities" DefaultContainerName="prueba1Entities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="fuentes">
    </asp:EntityDataSource>
</asp:Content>
