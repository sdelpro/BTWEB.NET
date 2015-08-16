<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZDettTitolo.aspx.vb" Inherits="BTWEB.NET.AZDettTitolo"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK rel="stylesheet" type="text/css" href="../css/style.css">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<div id="riga-menu">
				<div id="menu-s">
					<ul>
						<li>
							<a class="selected" href="JavaScript:window.close();">CHIUDI</a></SPAN>
						</li>
					</ul>
				</div> <!-- menu --></div> <!-- riga-menu -->
			<div id="riga-pagina">
				<div id="pagina-s">
					<div id="interna-s">
						<div id="top">
							<div><span class="label-sinistra">TITOLI SOCIETA<IMG alt="" src="../Images/label-sinistra-fine.png"></span></div>
						</div>
						<div id="contenuto">
							<div id="due-colonne-s">
								<table>
									<tr>
										<td><span class="etichetta">CODICE ISIN</span>
											<asp:label id="lbl_codisi" runat="server" CssClass="valore">Ultima connessione</asp:label></td>
										<td class="separa"></td>
										<td><span class="etichetta">DENOMINAZIONE</span>
											<asp:label id="lbl_denomi" runat="server" CssClass="valore"></asp:label></td>
									</tr>
									<tr>
										<td><span class="etichetta">TIPO AZIONE</span>
											<asp:label id="lbl_tipazi" runat="server" cssclass="valore"></asp:label></td>
										<td class="separa"></td>
										<td><span class="etichetta">QUOTATA</span>
											<asp:label id="lbl_quotat" runat="server" cssclass="valore"></asp:label></td>
									</tr>
									<tr>
										<td><span class="etichetta">INDICE</span>
											<asp:label id="lbl_indice" runat="server" cssclass="valore"></asp:label></td>
										<td class="separa"></td>
										<td><span class="etichetta">PESO%</span>
											<asp:label id="lbl_peso" runat="server" cssclass="valore"></asp:label></td>
									</tr>
									<tr>
										<td><span class="etichetta">QUANTITA'</span>
											<asp:label id="lbl_qta" runat="server" cssclass="valore"></asp:label></td>
										<td class="separa"></td>
										<td><span class="etichetta">VALORE NOMINALE</span>
											<asp:label id="lbl_valnom" runat="server" cssclass="valore"></asp:label>
										</td>
									</tr>
									<tr>
										<td><span class="etichetta">CAPITALE</span>
											<asp:label id="lbl_capita" runat="server" cssclass="valore"></asp:label></td>
										<td class="separa"></td>
										<td><span class="etichetta">ACRONIMO</span>
											<asp:label id="lbl_acroni" runat="server" cssclass="valore"></asp:label></td>
									</tr>
									<tr>
										<td><span class="etichetta">QTA MINIMA</span>
											<asp:label id="lbl_qtamin" runat="server" cssclass="valore"></asp:label></td>
										<td class="separa"></td>
										<td><span class="etichetta">MERCATO</span>
											<asp:label id="lbl_mercat" runat="server" cssclass="valore"></asp:label></td>
									</tr>
									<tr>
										<td><span class="etichetta">ALTRO INDICE</span>
											<asp:label id="lbl_altind" runat="server" cssclass="valore"></asp:label></td>
									</tr>
								</table>
								<div class="clear"></div>
							</div>
							<!--
			<asp:table id="tbTitolo" style="Z-INDEX: 103; LEFT: 0px; POSITION: absolute; TOP: 136px" runat="server"
				Height="80px" Width="100%">
				<asp:TableRow Width="100%" BorderWidth="1px" Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" ColumnSpan="1" Font-Size="12px"
						Font-Names="Tahoma" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="2" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" ColumnSpan="1" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="4" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Width="100%" Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" ColumnSpan="1" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="2" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="2" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="2" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Double" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
					<asp:TableCell></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Double" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Double" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Double" BorderWidth="1px" BackColor="Transparent" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Double" BorderWidth="1px" BackColor="Transparent" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell Width="12.5%"></asp:TableCell>
					<asp:TableCell Width="12.5%"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Double" BorderWidth="1px" BackColor="Transparent" ColumnSpan="2" Width="12.5%"
						BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Double" BorderWidth="1px" BackColor="Transparent" ColumnSpan="2" Width="12.5%"
						BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
			</asp:table>
			-->
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
