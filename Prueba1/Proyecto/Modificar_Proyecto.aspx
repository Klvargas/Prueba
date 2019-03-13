<%@ Page Title="" Language="C#" MasterPageFile="~/Proyecto/Site1.Master" AutoEventWireup="true" CodeBehind="Modificar_Proyecto.aspx.cs" Inherits="Prueba1.Proyecto.Modificar_Proyecto" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 70%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="margin: auto">
        <tr>
            <td style="margin: auto">Caja de texto
                <telerik:RadLabel ID="RadLabel1" runat="server">
                    Código
                </telerik:RadLabel>
                <br />
                <telerik:RadTextBox ID="txt_codigo" Runat="server" AutoPostBack="True" OnTextChanged="txt_codigo_TextChanged">
                </telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td style="margin: auto">
                <telerik:RadLabel ID="RadLabel2" runat="server">
                    Nombre
                </telerik:RadLabel>
                <asp:TextBox ID="txt_nombre" runat="server" OnTextChanged="txt_nombre_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_nombre" ErrorMessage="Dato requerido"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="margin: auto">
                <telerik:RadLabel ID="RadLabel3" runat="server">
                    Valor
                </telerik:RadLabel>
                <br />
                <telerik:RadNumericTextBox ID="txt_valor" Runat="server">
                </telerik:RadNumericTextBox>
            </td>
        </tr>
        <tr>
            <td style="margin: auto">
                <telerik:RadLabel ID="RadLabel4" runat="server">
                    Objetivos
                </telerik:RadLabel>
                <br />
                <telerik:RadTextBox ID="txt_objetivo" Runat="server">
                </telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td style="margin: auto">
                <telerik:RadLabel ID="RadLabel5" runat="server">
                    Municipio
                </telerik:RadLabel>
                <br />
                <telerik:RadComboBox ID="cmb_municipios" Runat="server" Culture="es-ES" DataSourceID="EDS_municipio" DataTextField="nombre_mun" DataValueField="id">
                </telerik:RadComboBox>
                <asp:EntityDataSource ID="EDS_municipio" runat="server" ConnectionString="name=prueba1Entities" DefaultContainerName="prueba1Entities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="municipio">
                </asp:EntityDataSource>
            </td>
        </tr>
        <tr>
            <td style="margin: auto">
                <telerik:RadLabel ID="RadLabel6" runat="server">
                    Población
                </telerik:RadLabel>
                <br />
                <telerik:RadGrid ID="RadGrid1" runat="server" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AutoGenerateColumns="False" Culture="es-ES" DataSourceID="EDS_proyecto_vs_poblacion" Width="50%" OnNeedDataSource="RadGrid1_NeedDataSource">
<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
                    <MasterTableView CommandItemDisplay="Top" DataKeyNames="id" DataSourceID="EDS_proyecto_vs_poblacion" EditMode="Batch" NoMasterRecordsText="">
                        <CommandItemSettings AddNewRecordText="Agregar Nuevo" CancelChangesText="Cancelar" RefreshText="Actualizar" SaveChangesText="Guardar" />
                        <RowIndicatorColumn Visible="False">
                        </RowIndicatorColumn>
                        <ExpandCollapseColumn Created="True">
                        </ExpandCollapseColumn>
                        <Columns>
                            <telerik:GridBoundColumn DataField="id" DataType="System.Int32" FilterControlAltText="Filter id column" ForceExtractValue="Always" HeaderText="id" ReadOnly="True" SortExpression="id" UniqueName="id" Visible="False">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="id_proy" DataType="System.Int32" FilterControlAltText="Filter id_proy column" ForceExtractValue="Always" HeaderText="Id Proyecto" SortExpression="id_proy" UniqueName="id_proy" Visible="False">
                            </telerik:GridBoundColumn>
                            <telerik:GridDropDownColumn DataField="id_pob" DataSourceID="EDS_poblacion" FilterControlAltText="Filter column column" HeaderText="Población" ListTextField="nombre_pob" ListValueField="id" UniqueName="column">
                            </telerik:GridDropDownColumn>
                            <telerik:GridBoundColumn DataField="numero_pob" DataType="System.Int32" FilterControlAltText="Filter numero_pob column" HeaderText="Número de Población" SortExpression="numero_pob" UniqueName="numero_pob">
                            </telerik:GridBoundColumn>
                        </Columns>
                    </MasterTableView>
                </telerik:RadGrid>
                <asp:EntityDataSource ID="EDS_proyecto_vs_poblacion" runat="server" ConnectionString="name=prueba1Entities" DefaultContainerName="prueba1Entities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="proyecto_vs_poblacion" EntityTypeFilter="" Select="" Where="it.[id_proy] = @id_proy" OnSelecting="EDS_proyecto_vs_poblacion_Selecting">
                    <WhereParameters>
                        <asp:SessionParameter Name="id_proy" SessionField="ID_PROYECTO" Type="Int32" />
                    </WhereParameters>
                    <InsertParameters>
                        <asp:SessionParameter Name="id_proy" SessionField="ID_PROYECTO" Type="Int32" />
                    </InsertParameters>
                </asp:EntityDataSource>
                <asp:EntityDataSource ID="EDS_poblacion" runat="server" ConnectionString="name=prueba1Entities" DefaultContainerName="prueba1Entities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="poblacion" OnSelecting="EDS_poblacion_Selecting">
                </asp:EntityDataSource>
            </td>
        </tr>
        <tr>
            <td style="margin: auto">
                <telerik:RadLabel ID="RadLabel7" runat="server">
                    Fuentes de financiación
                </telerik:RadLabel>
                <br />
                <telerik:RadGrid ID="RadGrid2" runat="server" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AutoGenerateColumns="False" Culture="es-ES" DataSourceID="EDS_proyecto_vs_fuentes" OnNeedDataSource="RadGrid2_NeedDataSource" Width="50%">
<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
                    <MasterTableView CommandItemDisplay="Top" DataKeyNames="id" DataSourceID="EDS_proyecto_vs_fuentes" EditMode="Batch" NoMasterRecordsText="">
                        <CommandItemSettings AddNewRecordText="Agregar Nuevo" CancelChangesText="Cancelar" RefreshText="Actualizar" SaveChangesText="Guardar" />
                        <RowIndicatorColumn Visible="False">
                        </RowIndicatorColumn>
                        <ExpandCollapseColumn Created="True">
                        </ExpandCollapseColumn>
                        <Columns>
                            <telerik:GridBoundColumn DataField="id" DataType="System.Int32" FilterControlAltText="Filter id column" ForceExtractValue="Always" HeaderText="id" ReadOnly="True" SortExpression="id" UniqueName="id" Visible="False">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="id_proy" DataType="System.Int32" FilterControlAltText="Filter id_proy column" ForceExtractValue="Always" HeaderText="id_proy" SortExpression="id_proy" UniqueName="id_proy" Visible="False">
                            </telerik:GridBoundColumn>
                            <telerik:GridDropDownColumn DataField="id_fuente" DataSourceID="EDS_fuentes" FilterControlAltText="Filter column column" HeaderText="Fuentes" ListTextField="nombre_fuente" ListValueField="id_fuente" UniqueName="column">
                            </telerik:GridDropDownColumn>
                            <telerik:GridBoundColumn DataField="valor_fuente" DataType="System.Double" FilterControlAltText="Filter valor_fuente column" HeaderText="Valor Fuente" SortExpression="valor_fuente" UniqueName="valor_fuente">
                            </telerik:GridBoundColumn>
                        </Columns>
                    </MasterTableView>
                </telerik:RadGrid>
                <asp:EntityDataSource ID="EDS_proyecto_vs_fuentes" runat="server" ConnectionString="name=prueba1Entities" DefaultContainerName="prueba1Entities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="proyecto_vs_fuente" EntityTypeFilter="" Select="" Where="it.[id_proy] = @id_proy">
                    <WhereParameters>
                        <asp:SessionParameter Name="id_proy" SessionField="ID_PROYECTO" Type="Int32" />
                    </WhereParameters>
                    <InsertParameters>
                        <asp:SessionParameter Name="id_proy" SessionField="ID_PROYECTO" Type="Int32" />
                    </InsertParameters>
                </asp:EntityDataSource>
                <asp:EntityDataSource ID="EDS_fuentes" runat="server" ConnectionString="name=prueba1Entities" DefaultContainerName="prueba1Entities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="fuentes">
                </asp:EntityDataSource>
            </td>
        </tr>
        <tr>
            <td style="margin: auto">
                <telerik:RadButton ID="btn_actualizar" runat="server" OnClick="btn_actualizar_Click" Text="Actualizar">
                </telerik:RadButton>
            </td>
        </tr>
        <tr>
            <td style="margin: auto">&nbsp;</td>
        </tr>
        <tr>
            <td style="margin: auto">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
