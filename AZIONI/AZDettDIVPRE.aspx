<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZDettDIVPRE.aspx.vb" Inherits="BTWEB.NET.AZDettDIV"%>
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
	<body background="..\Images\sfMenuidx.jpg" MS_POSITIONING="GridLayout" bottomMargin="0"
		leftMargin="0" topMargin="0" rightMargin="0">
		<form id="Form1" method="post" runat="server">
			<div id="riga-header">
				<div id="header">
					<div><IMG id="logo" alt="" src="../images/ImagesLogo.gif" width="352"> <span class="etichetta" style="MARGIN-TOP:0px;MARGIN-LEFT:900px">
							<a class="selected" href="JavaScript:window.close();"><IMG src="../Images/close2.png"></a></span></div>
				</div> <!-- header --></div> <!-- riga-header -->
			<div id="riga-menu">
				<div id="menu">
					<ul>
						<li>
							<A href="../IDXMenuIn.aspx">HOME</A>
						</li>
						<li class="selected">
							<asp:linkbutton id="lblAZIONI" Runat="server">AZIONI</asp:linkbutton></li>
						<li>
							<asp:linkbutton id="lblOBBLIGAZIONI" Runat="server">OBBLIGAZIONI</asp:linkbutton></li>
						<li>
							<asp:linkbutton id="lblINFOVARIE" Runat="server">INFORMAZIONI VARIE</asp:linkbutton></li>
						<li>
							<asp:linkbutton id="lbEstrazioni" Runat="server">ESTRAZIONI</asp:linkbutton></li>
						<li>
							<A href="../Logout.aspx">LOGOUT</A>
						</li>
					</ul>
					<div id="ultima-connessione"><asp:label style="Z-INDEX: 114" id="lblLastLogin" runat="server">Ultima connessione</asp:label></div>
				</div> <!-- menu --></div> <!-- riga-menu -->
			<div id="riga-pagina">
				<div id="pagina">
					<div id="interna">
						<div id="top">
							<div><span class="label-sinistra">DIVIDENDI PREANNUNCIATI<IMG alt="" src="../Images/label-sinistra-fine.png"></span></div>
						</div>
						<div id="contenuto">
							<div id="due-colonne">
								<table>
									<tr>
										<td><span class="etichetta">CODICE ISIN</span>
											<asp:label id="lbl_codisi" runat="server" CssClass="valore"></asp:label></td>
										<td class="separa"></td>
										<td><span class="etichetta">DENOMINAZIONE</span>
											<asp:label id="lbl_denomi" runat="server" CssClass="valore"></asp:label></td>
									</tr>
									<tr>
										<td><span class="etichetta">VALUTA</span>
											<asp:label id="lbl_valuta" runat="server" cssclass="valore"></asp:label></td>
										<td class="separa"></td>
										<td><span class="etichetta">STATO</span>
											<asp:label id="lbl_stato" runat="server" cssclass="valore"></asp:label></td>
									</tr>
									<tr>
										<td><span class="etichetta">LORDO</span>
											<asp:label id="lbl_lordo" runat="server" cssclass="valore"></asp:label></td>
										<td class="separa"></td>
										<td><span class="etichetta">VAL. DIV. PREC.</span>
											<asp:label id="lbl_vadipr" runat="server" cssclass="valore"></asp:label></td>
									</tr>
									<tr>
										<td><span class="etichetta">DIV. PREC.</span>
											<asp:label id="lbl_divpre" runat="server" cssclass="valore"></asp:label></td>
										<td class="separa"></td>
										<td><span class="etichetta">PAGAMENTO</span>
											<asp:label id="lbl_pagame" runat="server" cssclass="valore"></asp:label></td>
									</tr>
									<tr>
										<td><span class="etichetta">STACCO</span>
											<asp:label id="lbl_stacco" runat="server" cssclass="valore"></asp:label></td>
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
										<td><span class="etichetta">NOTA</span>
											<asp:label id="lbl_nota" runat="server" cssclass="valore"></asp:label></td>
									</tr>
								</table>
								<div class="clear"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--
			<asp:image id="Image1" style="Z-INDEX: 100; LEFT: 8px; POSITION: absolute; TOP: 32px" runat="server"
				Height="44px" Width="352px" ImageUrl="..\Images\Logo.gif"></asp:image>
			<TABLE id="Table1" style="Z-INDEX: 104; LEFT: 8px; WIDTH: 100%; POSITION: absolute; TOP: 96px; HEIGHT: 36px"
				cellSpacing="1" cellPadding="1" width="100%" border="0">
				<TR>
					<TD><A class="NAV" href="JavaScript:window.close();"><B style="COLOR: lime; FONT-STYLE: normal; FONT-FAMILY: Tahoma; FONT-VARIANT: normal; TEXT-DECORATION: none">CHIUDI</B></A><A class="NAV" href="JavaScript:window.close();"><B style="COLOR: lime; FONT-STYLE: normal; FONT-FAMILY: Tahoma; FONT-VARIANT: normal; TEXT-DECORATION: none"></B></A></TD>
				</TR>
			</TABLE>
			<asp:table id="tbDiv" style="Z-INDEX: 103; LEFT: 0px; POSITION: absolute; TOP: 136px" runat="server"
				Height="20px" Width="100%">
				<asp:TableRow Width="100%" BorderWidth="1px" Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Font-Size="12px" Font-Names="Tahoma"
						BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="4" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Width="100%" BorderWidth="1px" Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="4" BorderColor="Black"></asp:TableCell>
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
