<%@ Page Title="" Language="C#" MasterPageFile="~/Proyecto/Site1.Master" AutoEventWireup="true" CodeBehind="Proyecto_Actualizar.aspx.cs" Inherits="Prueba1.Proyecto.Proyecto_Actualizar" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" height="100%" width="100%">
        <table class="auto-style1">
            <tr>
                <td>
                    <telerik:RadLabel ID="RadLabel1" runat="server">
                        Código
                    </telerik:RadLabel>
                    <br />
                    <telerik:RadTextBox ID="RadTextBox1" Runat="server" AutoPostBack="True">
                    </telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <telerik:RadLabel ID="RadLabel2" runat="server">
                        Nombre
                    </telerik:RadLabel>
                    <br />
                    <telerik:RadTextBox ID="RadTextBox2" Runat="server" Rows="5" TextMode="MultiLine" Width="50%">
                    </telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <telerik:RadLabel ID="RadLabel3" runat="server">
                        Población
                    </telerik:RadLabel>
                    <br />
                    <telerik:RadGrid ID="RadGrid1" runat="server" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" Culture="es-ES" DataSourceID="EDS_proy_vs_pob">
                        <GroupingSettings CollapseAllTooltip="Collapse all groups" />
                        <MasterTableView AutoGenerateColumns="False" CommandItemDisplay="Top" DataKeyNames="id" DataSourceID="EDS_proy_vs_pob" EditMode="Batch">
                            <RowIndicatorColumn Visible="False">
                            </RowIndicatorColumn>
                            <ExpandCollapseColumn Created="True">
                            </ExpandCollapseColumn>
                            <Columns>
                                <telerik:GridBoundColumn DataField="id" DataType="System.Int32" FilterControlAltText="Filter id column" HeaderText="id" ReadOnly="True" SortExpression="id" UniqueName="id">
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="id_proy" DataType="System.Int32" FilterControlAltText="Filter id_proy column" HeaderText="id_proy" SortExpression="id_proy" UniqueName="id_proy">
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="id_pob" DataType="System.Int32" FilterControlAltText="Filter id_pob column" HeaderText="id_pob" SortExpression="id_pob" UniqueName="id_pob">
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="numero_pob" DataType="System.Int32" FilterControlAltText="Filter numero_pob column" HeaderText="numero_pob" SortExpression="numero_pob" UniqueName="numero_pob">
                                </telerik:GridBoundColumn>
                            </Columns>
                        </MasterTableView>
                    </telerik:RadGrid>
                    <asp:EntityDataSource ID="EDS_proy_vs_pob" runat="server" ConnectionString="name=prueba1Entities" DefaultContainerName="prueba1Entities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="proyecto_vs_poblacion">
                    </asp:EntityDataSource>
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
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </telerik:RadAjaxPanel>
</asp:Content>
