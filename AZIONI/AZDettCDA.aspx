<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZDettCDA.aspx.vb" Inherits="BTWEB.NET.AZDettCDA"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK rel="stylesheet" type="text/css" href="../css/style.css">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<div id="riga-header">
				<div id="header">
					<div><IMG id="logo" alt="" src="../images/ImagesLogo.gif" width="352"> <span class="etichetta" style="margin-left:900px;margin-top:0px">
							<a class="selected" href="JavaScript:window.close();"><img src="../Images/close2.png""></a></span>
					</div>
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
							<div><span class="label-sinistra">CDA<IMG alt="" src="../Images/label-sinistra-fine.png"></span></div>
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
										<td><span class="etichetta">DATA CDA</span>
											<asp:label id="lbl_datcda" runat="server" cssclass="valore"></asp:label></td>
										<td class="separa"></td>
										<td><span class="etichetta">TEMA CDA</span>
											<asp:label id="lbl_temcda" runat="server" cssclass="valore"></asp:label></td>
									</tr>
									<tr>
										<td><span class="etichetta">TESTO</span>
											<asp:label id="lbl_testo" runat="server" cssclass="valore"></asp:label></td>
									</tr>
								</table>
								<div class="clear"></div>
							</div>
							<!--
			<asp:image id="Image1" style="Z-INDEX: 100; LEFT: 8px; POSITION: absolute; TOP: 32px" runat="server"
				ImageUrl="..\Images\Logo.gif" Width="352px" Height="44px"></asp:image>
			<TABLE id="Table1" style="Z-INDEX: 104; LEFT: 8px; WIDTH: 100%; POSITION: absolute; TOP: 96px; HEIGHT: 36px"
				cellSpacing="1" cellPadding="1" width="100%" border="0">
				<TR>
					<TD><A class="NAV" href="JavaScript:window.close();"><B style="COLOR: lime; FONT-STYLE: normal; FONT-FAMILY: Tahoma; FONT-VARIANT: normal; TEXT-DECORATION: none">CHIUDI</B></A><A class="NAV" href="JavaScript:window.close();"><B style="COLOR: lime; FONT-STYLE: normal; FONT-FAMILY: Tahoma; FONT-VARIANT: normal; TEXT-DECORATION: none"></B></A></TD>
				</TR>
			</TABLE>
			<asp:table id="tbAss" style="Z-INDEX: 102; LEFT: 0px; POSITION: absolute; TOP: 136px" runat="server"
				Width="100%" Height="20px">
				<asp:TableRow Width="100%" BorderWidth="1px" Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Font-Size="12px" Font-Names="Tahoma"
						BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="3" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Width="100%" BorderWidth="1px" Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="3" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell></asp:TableCell>
					<asp:TableCell></asp:TableCell>
					<asp:TableCell></asp:TableCell>
					<asp:TableCell></asp:TableCell>
					<asp:TableCell></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" RowSpan="4" ColumnSpan="6"
						Font-Size="12px" Font-Names="Tahoma" BorderColor="Black"></asp:TableCell>
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
