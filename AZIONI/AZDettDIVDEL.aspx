<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZDettDIVDEL.aspx.vb" Inherits="BTWEB.NET.AZDettDIVDEL"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK rel="stylesheet" type="text/css" href="../css/style.css"><link rel="stylesheet" href="../css/jquery-ui.css"><script src="../js//jquery-1.10.2.js"></script><script src="../js/jquery-ui.js"></script><script>$(function() {$.datepicker.setDefaults($.datepicker.regional['it']); $(".datepicker").datepicker(); $(".datepicker").datepicker("option", "dateFormat", "dd/mm/yy");	});	</script>
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
							<div><span class="label-sinistra">DIVIDENDI DELIBERATI<IMG alt="" src="../Images/label-sinistra-fine.png"></span></div>
						</div>
						<div id="contenuto">
							<div id="due-colonne-s">
								<table>
									<tr>
										<td><span class="etichetta">CODICE ISIN</span>
											<asp:label id="lbl_codisi" runat="server" CssClass="valore"></asp:label></td>
										<td class="separa"></td>
										<td><span class="etichetta">DENOMINAZIONE</span>
											<asp:label id="lbl_denomi" runat="server" CssClass="valore"></asp:label></td>
									</tr>
									<tr>
										<td><span class="etichetta">TIPO AZIONE</span>
											<asp:label id="lbl_tipazi" runat="server" cssclass="valore"></asp:label></td>
										<td class="separa"></td>
										<td><span class="etichetta">STATO</span>
											<asp:label id="lbl_stato" runat="server" cssclass="valore"></asp:label></td>
									</tr>
									<tr>
										<td><span class="etichetta">VALUTA</span>
											<asp:label id="lbl_valuta" runat="server" cssclass="valore"></asp:label></td>
										<td class="separa"></td>
										<td><span class="etichetta">LORDO</span>
											<asp:label id="lbl_lordo" runat="server" cssclass="valore"></asp:label></td>
									</tr>
									<tr>
										<td><span class="etichetta">ALIQUOTA%</span>
											<asp:label id="lbl_aliquo" runat="server" cssclass="valore"></asp:label></td>
										<td class="separa"></td>
										<td><span class="etichetta">NETTO</span>
											<asp:label id="lbl_netto" runat="server" cssclass="valore"></asp:label></td>
									</tr>
									<tr>
										<td><span class="etichetta">CEDOLA</span>
											<asp:label id="lbl_cedola" runat="server" cssclass="valore"></asp:label></td>
										<td class="separa"></td>
										<td><span class="etichetta">STACCO</span>
											<asp:label id="lbl_stacco" runat="server" cssclass="valore"></asp:label></td>
									</tr>
									<tr>
										<td><span class="etichetta">PAGAMENTO</span>
											<asp:label id="lbl_pagame" runat="server" cssclass="valore"></asp:label></td>
										<td class="separa"></td>
										<td><span class="etichetta">STRAORDINARIO</span>
											<asp:label id="lbl_straor" runat="server" cssclass="valore"></asp:label></td>
									</tr>
									<tr>
										<td><span class="etichetta">ORDINARIO</span>
											<asp:label id="lbl_ordina" runat="server" cssclass="valore"></asp:label></td>
										<td class="separa"></td>
										<td><span class="etichetta">NETTO</span>
											<asp:label id="lbl_ordnet" runat="server" cssclass="valore"></asp:label></td>
									</tr>
									<tr>
										<td><span class="etichetta">ACCONTO</span>
											<asp:label id="lbl_accont" runat="server" cssclass="valore"></asp:label></td>
										<td class="separa"></td>
										<td><span class="etichetta">SALDO</span>
											<asp:label id="lbl_saldo" runat="server" cssclass="valore"></asp:label></td>
									</tr>
									<tr>
										<td><span class="etichetta">NON CONFR.</span>
											<asp:label id="lbl_noncfr" runat="server" cssclass="valore"></asp:label></td>
										<td class="separa"></td>
										<td><span class="etichetta">NOTE</span>
											<asp:label id="lbl_note" runat="server" cssclass="valore"></asp:label></td>
									</tr>
								</table>
								<div class="clear"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--
			<asp:image id="Image1" style="Z-INDEX: 106; LEFT: 8px; POSITION: absolute; TOP: 32px" runat="server"
				Width="352px" Height="44px" ImageUrl="..\Images\Logo.gif"></asp:image>
			<TABLE id="Table1" style="Z-INDEX: 108; LEFT: 8px; WIDTH: 100%; POSITION: absolute; TOP: 96px; HEIGHT: 36px"
				cellSpacing="1" cellPadding="1" width="100%" border="0">
				<TR>
					<TD><A class="NAV" href="JavaScript:window.close();"><B style="COLOR: lime; FONT-STYLE: normal; FONT-FAMILY: Tahoma; FONT-VARIANT: normal; TEXT-DECORATION: none">CHIUDI</B></A><A class="NAV" href="JavaScript:window.close();"><B style="COLOR: lime; FONT-STYLE: normal; FONT-FAMILY: Tahoma; FONT-VARIANT: normal; TEXT-DECORATION: none"></B></A></TD>
				</TR>
			</TABLE>
			<asp:table id="tbDiv" style="Z-INDEX: 107; LEFT: 0px; POSITION: absolute; TOP: 136px" runat="server"
				Width="100%" Height="20px">
				<asp:TableRow Width="100%" BorderWidth="1px" Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Font-Size="12px" Font-Names="Tahoma"
						BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="4" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Width="100%" BorderWidth="1px" Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="2" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="2" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Width="100%" BorderWidth="1px" Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Width="100%" BorderWidth="1px" Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Width="16.6%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" Width="16.6%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Width="16.7%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" Width="16.7%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Width="16.7%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" Width="16.7%" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Width="100%" BorderWidth="1px" Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Width="100%" BorderWidth="1px" Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Width="100%" BorderWidth="1px" Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="6" Font-Size="12px"
						Font-Names="Tahoma" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="6" Font-Size="12px"
						Font-Names="Tahoma" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="6" Font-Size="12px"
						Font-Names="Tahoma" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="6" Font-Size="12px"
						Font-Names="Tahoma" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="6" Font-Size="12px"
						Font-Names="Tahoma" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="6" Font-Size="12px"
						Font-Names="Tahoma" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="6" Font-Size="12px"
						Font-Names="Tahoma" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="6" Font-Size="12px"
						Font-Names="Tahoma" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="6" Font-Size="12px"
						Font-Names="Tahoma" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="6" Font-Size="12px"
						Font-Names="Tahoma" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
			</asp:table>
			-->
		</form>
	</body>
</HTML>
