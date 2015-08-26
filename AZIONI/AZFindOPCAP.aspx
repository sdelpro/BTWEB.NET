<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZFindOPCAP.aspx.vb" Inherits="BTWEB.NET.AZFindOPCAP"%>
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
		<FORM id="Form1" method="post" runat="server">
			<div id="riga-header">
				<div id="header"><IMG id="logo" alt="" src="../images/ImagesLogo.gif" width="352">
				</div> <!-- header --></div> <!-- riga-header -->
			<div id="riga-menu">
				<div id="menu">
					<ul>
						<li>
							<a href="../IDXMenuIn.aspx">HOME</a>
						</li>
						<li class="selected">
							<a runat="server" id="lblAZIONI" href="../AZIONI/AZMenu.aspx">AZIONI</a>
						</li>
						<li>
							<a runat="server" id="lblOBBLIGAZIONI" href="../OBBLIGAZIONI/OBMenu.aspx">OBBLIGAZIONI</a>
						</li>
						<li>
							<a runat="server" id="lblINFOVARIE" href="../FindNews.aspx">INFORMAZIONI VARIE</a>
						</li>
						<li>
							<a runat="server" style="display:none" id="lbEstrazioni" href="../Download.aspx?CD=3">ESTRAZIONI</a>
						</li>
						<li>
							<a href="../Logout.aspx">LOGOUT</a>
						</li>
					</ul>
					<div id="ultima-connessione">
						<asp:label id="lblLastLogin" style="Z-INDEX: 114" runat="server">Ultima connessione</asp:label>
					</div>
				</div> <!-- menu -->
				<div id="menuazioni" align="center">
					<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" TypeMenu="RicercheAzioni"></ucmenu:dhtmlmenucontrol>
				</div>
			</div> <!-- riga-menu -->
			<!-- corpo centrale della pagina-->
			<div id="riga-pagina">
				<div id="pagina">
					<div id="interna">
						<div id="top">
							<span class="label-sinistra">OPERAZIONI SUL CAPITALE<img src="../images/label-sinistra-fine.png" alt=""></span>
							<asp:label id="lbUpd" CssClass="label-destra" runat="server">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
						</div> <!-- top -->
						<div id="contenuto">
							<table>
								<tr>
									<td style="FONT-WEIGHT:bold">OPERAZIONI SUL CAPITALE</td>
								</tr>
								<tr>
									<td>PER STATO</td>
									<td><asp:dropdownlist id="cmbStato" style="Z-INDEX: 130" runat="server">
											<asp:ListItem Value="PREANNUNCIATO">Preannunciato</asp:ListItem>
											<asp:ListItem Value="APPROVATO">Approvato</asp:ListItem>
											<asp:ListItem Value="IN CORSO DA">In Corso</asp:ListItem>
											<asp:ListItem Value="Tutti">Tutti</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<tr>
									<td>DATA MODIFICA/INSERIMENTO</td>
									<td><asp:textbox CssClass="datepicker"  id="txtDtM1Da" style="Z-INDEX: 113" runat="server" placeholder="Da" tabIndex="1"></asp:textbox></td>
									<td><asp:textbox CssClass="datepicker"  id="txtDtM1A" style="Z-INDEX: 117" runat="server" placeholder="A" tabIndex="2"></asp:textbox></td>
								</tr>
								<tr class="note">
									<td></td>
									<td colspan="2">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</td>
								</tr>
								<tr>
									<td>TESTO OPERAZIONE</td>
									<td><asp:textbox id="txtTesto" style="Z-INDEX: 140" tabIndex="3" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2">
									<asp:button id="btnFind" style="Z-INDEX: 101" runat="server" Text="Ricerca" tabIndex="4"></asp:button></td>
								</tr>
								<tr>
									<td style="FONT-WEIGHT:bold">OPERAZIONI SUL CAPITALE STORICIZZATE</td>
								</tr>
								<tr>
									<td>
										DESCRIZIONE</td>
									<td><asp:textbox id="txtFind" CssClass="autcmpl" style="Z-INDEX: 100" runat="server" tabIndex="5"></asp:textbox></td>
									<td><asp:dropdownlist id="cmbFind" style="Z-INDEX: 102" runat="server" tabIndex="6">
											<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
											<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
											<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<tr>
									<td>ISINCODE o UIC</td>
									<td><asp:textbox id="txtIsincode" style="Z-INDEX: 106" runat="server" tabIndex="7"></asp:textbox></td>
								</tr>
								<tr>
									<td>DATA MODIFICA/INSERIMENTO</td>									
									<td><asp:textbox CssClass="datepicker"  id="txtDtMDa" style="Z-INDEX: 112" runat="server" placeholder="Da" tabIndex="8"></asp:textbox></td>
									<td><asp:textbox CssClass="datepicker"  id="txtDtMA" style="Z-INDEX: 116" runat="server" placeholder="A" tabIndex="9"></asp:textbox></td>
								</tr>
								<tr class="note">
									<td></td>
									<td colspan="2">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</td>
								</tr>
								<tr>
									<td>TESTO OPERAZIONE</td>
									<td><asp:textbox id="txtTestoStor" style="Z-INDEX: 144" tabIndex="10" runat="server"></asp:textbox></td>
								</tr>
								<tr>
								<td></td>
									<td colspan="2">
									<asp:button id="btnFindStor" style="Z-INDEX: 121" runat="server" Text="Ricerca" tabIndex="11"></asp:button></td>
								</tr>
							</table>
							<div id="box-interna">
								<ul>
									<li>
										<asp:label id="lbHelp1" style="Z-INDEX: 107" runat="server">La ricerca per STATO (PREANNUNCIATO, APPROVATO, IN CORSO, TUTTI) può essere effettuata per DATA MODIFICA/INSERIMENTO (range temporale tra due date), per testo dell'operazione.</asp:label></li>
									<li>
										<asp:label id="lbHelp2" style="Z-INDEX: 127" runat="server">Le NOVITA’ si cercano copiando nel campo "DATA MODIFICA/INSERIMENTO DA" la data di "ultima connessione" riportata qui in alto sotto il logo Brambilla Titoli.</asp:label></li>
									<li>
										<asp:label id="lbHelp3" runat="server">Ricercando per STATO e premendo il pulsante "Ricerca" si ottiene l’elenco di TUTTE LE OPERAZIONI presenti nello STATO prescelto. Inoltre si può ricercare per testo dell'operazione.</asp:label></li>
									<li>
										<asp:label id="lbHelp4" style="Z-INDEX: 134" runat="server">Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata.   </asp:label></li>
									<li>
										<asp:label id="lbHelp5" style="Z-INDEX: 135" runat="server">La ricerca per STORICIZZATE può essere effettuata per descrizione (anche solo parte del nome), per testo dell'operazione, per codice ISIN o UIC oppure per DATA MODIFICA/INSERIMENTO (range temporale tra due date).</asp:label></li>
								</ul>
							</div>
							<asp:textbox CssClass="datepicker"  id="txtDtStoA" style="Z-INDEX: 128" runat="server" Visible="False"></asp:textbox>
							<asp:textbox CssClass="datepicker"  id="txtDtStoDa" style="Z-INDEX: 124" runat="server" Visible="False"></asp:textbox>
							<!--			
						<asp:label id="Label6" style="Z-INDEX: 122; " runat="server" Visible="False">DATA STORICIZZAZIONE</asp:label>
						<asp:label id="Label5" style="Z-INDEX: 129; " runat="server" Visible="False">A</asp:label>
						-->
						</div>
					</div>
				</div></div>
		</FORM>
	</body>
</HTML>
