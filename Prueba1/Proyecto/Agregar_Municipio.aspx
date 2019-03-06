<%@ Page Title="" Language="C#" MasterPageFile="~/Proyecto/Site1.Master" AutoEventWireup="true" CodeBehind="Agregar_Municipio.aspx.cs" Inherits="Prueba1.Proyecto.Agregar_Municipio" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadGrid ID="RadGrid1" runat="server" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AutoGenerateColumns="False" Culture="es-ES" DataSourceID="EDS_municipios" OnNeedDataSource="RadGrid1_NeedDataSource">
        <GroupingSettings CollapseAllTooltip="Collapse all groups">
        </GroupingSettings>
        <MasterTableView CommandItemDisplay="Top" DataKeyNames="id" DataSourceID="EDS_municipios" EditMode="Batch" NoMasterRecordsText="" Width="50%">
            <CommandItemSettings AddNewRecordText="Agregar Nuevo" CancelChangesText="Cancelar" RefreshText="Actualizar" SaveChangesText="Guardar" />
            <RowIndicatorColumn Visible="False">
            </RowIndicatorColumn>
            <ExpandCollapseColumn Created="True">
            </ExpandCollapseColumn>
            <Columns>
                <telerik:GridBoundColumn DataField="id" DataType="System.Int32" FilterControlAltText="Filter id column" ForceExtractValue="Always" HeaderText="id" ReadOnly="True" SortExpression="id" UniqueName="id" Visible="False">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="nombre_mun" FilterControlAltText="Filter nombre_mun column" HeaderText="Nombre Municipio" SortExpression="nombre_mun" UniqueName="nombre_mun">
                </telerik:GridBoundColumn>
            </Columns>
        </MasterTableView>
    </telerik:RadGrid>
    <asp:EntityDataSource ID="EDS_municipios" runat="server" ConnectionString="name=prueba1Entities" DefaultContainerName="prueba1Entities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="municipio">
    </asp:EntityDataSource>
</asp:Content>
