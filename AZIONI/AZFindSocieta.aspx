<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZFindSocieta.aspx.vb" Inherits="BTWEB.NET.AZFindSocieta" %>
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
							<asp:linkbutton id="lblOBBLIGAZIONI" Runat="server">OBBLIGAZIONI</asp:linkbutton>
						</li>
						<li>
							<asp:linkbutton id="lblINFOVARIE" Runat="server">INFORMAZIONI VARIE</asp:linkbutton>
						</li>
						<li>
							<asp:linkbutton id="lbEstrazioni" Runat="server">ESTRAZIONI</asp:linkbutton>
						</li>
						<li>
							<a href="../Logout.aspx">LOGOUT</a>
						</li>
					</ul>
					<div id="ultima-connessione">
						<asp:label id="lblLastLogin" runat="server">Ultima connessione</asp:label>
					</div>
				</div> <!-- menu -->
			</div> <!-- riga-menu -->
			<!-- corpo centrale della pagina-->
			<div id="riga-pagina">
				<div id="pagina">
					<div id="interna">
						<div id="top">
							<span class="label-sinistra">ANAGRAFE SOCIETA<img src="../images/label-sinistra-fine.png" alt=""></span>
							<asp:label id="lbUpd" CssClass="label-destra" runat="server">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
						</div> <!-- top -->
						<div id="contenuto">
							<table>
								<tr>
									<!--<div>-->
									<td>DESCRIZIONE</td>
									<td><asp:textbox id="txtFind" style="Z-INDEX: 101" runat="server"></asp:textbox></td>
									<td><asp:dropdownlist id="cmbFind" runat="server" tabIndex="1">
											<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
											<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
											<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<!--</div>-->
								<tr>
									<td>ISINCODE o UIC</td>
									<td><asp:textbox id="txtIsincode" runat="server" tabIndex="2"></asp:textbox></td>
								</tr>
								<tr>
									<td>DATA MODIFICA/INSERIMENTO</td>
									<td><asp:textbox id="txtDtMDa" runat="server" tabIndex="3" placeholder="Da"></asp:textbox></td>
									<td><asp:textbox id="txtDtMA" style="Z-INDEX: 109" runat="server" tabIndex="4" placeholder="A"></asp:textbox></td>
								</tr>
								<tr class="note">
									<td></td>
									<td colspan="2">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2">
										<asp:button id="btnFind" style="Z-INDEX: 102" Text="Ricerca" runat="server" tabIndex="5"></asp:button></td>
								</tr>
							</table>
							<div id="box-interna">
								<ul>
									<li>
										<asp:label id="lbHelp1" style="Z-INDEX: 106" runat="server">La ricerca può essere effettuata per descrizione (anche solo parte del nome), per codice ISIN o UIC, oppure all’interno del range temporale tra le due date.</asp:label>
									<li>
										<asp:label id="lbHelp2" style="Z-INDEX: 122" runat="server">Le società storicizzate sono evidenziate in rosso.</asp:label>
									<li>
										<asp:label id="lbHelp3" runat="server">Le NOVITA’ si cercano copiando nel campo "DATA MODIFICA/INSERIMENTO DA" la data di "ultima connessione" riportata qui in alto sotto il logo Brambilla Titoli.</asp:label>
									<li>
										<asp:label id="lbHelp4" style="Z-INDEX: 119" runat="server">Premendo il solo pulsante "Ricerca" senza avere effettuato alcuna selezione si ottiene l’elenco di TUTTE le società presenti.</asp:label>
									<li>
										<asp:label id="lbHelp5" style="Z-INDEX: 121" runat="server">Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata.   </asp:label></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
