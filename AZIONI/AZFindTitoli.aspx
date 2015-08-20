<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZFindTitoli.aspx.vb" Inherits="BTWEB.NET.AZFindTitoli"%>
<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK rel="stylesheet" type="text/css" href="../css/style.css"><link rel="stylesheet" href="../css/jquery-ui.css"><script src="../js//jquery-1.10.2.js"></script><script src="../js/jquery-ui.js"></script><script>$(function() {$.datepicker.setDefaults($.datepicker.regional['it']); $(".datepicker").datepicker(); $(".datepicker").datepicker("option", "dateFormat", "dd/mm/yy");	});	</script>
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<div id="riga-header">
				<div id="header"><IMG id="logo" alt="" src="../images/ImagesLogo.gif" width="352">
				</div>
			</div>
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
							<a runat="server" id="lbEstrazioni" href="../Download.aspx?CD=3">ESTRAZIONI</a>
						</li>
						<li>
							<a href="../Logout.aspx">LOGOUT</a>
						</li>
					</ul>
					<div id="ultima-connessione">
						<asp:label id="lblLastLogin" runat="server">Ultima connessione</asp:label>
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
							<span class="label-sinistra">TITOLI SOCIETA'<img src="../images/label-sinistra-fine.png" alt=""></span>
							<asp:label id="lbUpd" CssClass="label-destra" runat="server">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
						</div>
						
						<div id="contenuto">
							<table>
								<tr>
									<td>DESCRIZIONE</td>
									<td><asp:textbox id="txtFind" CssClass="autcmpl" style="Z-INDEX: 100" runat="server"></asp:textbox></td>
									<td><asp:dropdownlist id="cmbFind" style="Z-INDEX: 101" tabIndex="1" runat="server">
											<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
											<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
											<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<!-- RIGA ISINCODE -->
								<tr>
									<td>ISINCODE o UIC</td>
									<td><asp:textbox id="txtIsincode" tabIndex="2" runat="server"></asp:textbox>
									</td>
								</tr>
								<tr>
									<!-- RIGA MERCATO -->
									<td>MERCATO</td>
									<td><asp:dropdownlist id="cmbMercato" tabIndex="3" runat="server">
											<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
											<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
											<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<!-- RIGA INDICE -->
								<tr>
									<td>INDICE</td>
									<td><asp:dropdownlist id="cmbSettore" style="Z-INDEX: 127" tabIndex="4" runat="server">
											<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
											<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
											<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<!-- riga DATA -->
								<tr>
									<td>DATA MODIFICA/INSERIMENTO</td>
									<td><asp:textbox CssClass="datepicker"  id="txtDtMDa" style="Z-INDEX: 107" tabIndex="5" placeholder="Da" runat="server"></asp:textbox>
									<td><asp:textbox CssClass="datepicker"  id="txtDtMA" tabIndex="6" placeholder="A" runat="server"></asp:textbox>
									</td>
								</tr>
								<tr class="note">
									<td></td>
									<td colspan="2">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</td>
								</tr>
								<!-- riga Button ricerca -->
								<tr>
									<td></td>
									<td colspan="2">
										<asp:button id="btnFind" style="Z-INDEX: 102" Text="Ricerca" tabIndex="7" runat="server"></asp:button>
								</tr>
							</table>
							<!-- RIGHE INDICAZIONI FINALI -->
							<div id="box-interna">
								<ul>
									<li>
										<asp:label id="lbHelp2" style="Z-INDEX: 121" runat="server">I titoli storicizzati sono evidenziati in rosso.</asp:label>
									<li>
										<asp:label id="lbHelp5" runat="server">Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata.   </asp:label>
									<li>
										<asp:label id="lbHelp4" style="Z-INDEX: 118" runat="server">Premendo il solo pulsante "Ricerca" senza avere effettuato alcuna selezione si ottiene l’elenco di TUTTI i Titoli presenti.</asp:label>
									<li>
										<asp:label id="lbHelp3" style="Z-INDEX: 119" runat="server">Le NOVITA’ si cercano copiando nel campo "DATA MODIFICA/INSERIMENTO DA" la data di "ultima connessione" riportata qui in alto sotto il logo Brambilla Titoli.</asp:label>
									<li>
										<asp:label id="lbHelp1" runat="server">La ricerca può essere effettuata per descrizione (anche solo parte del nome), per codice ISIN o UIC, per mercato, per settore, per DATA MODIFICA/INSERIMENTO (range temporale tra due date).</asp:label>
									<li>
										<asp:label id="lbHelpDate" style="Z-INDEX: 117" runat="server">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</asp:label></li></ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
