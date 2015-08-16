<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBFindConv.aspx.vb" Inherits="BTWEB.NET.OBFindConv"%>
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
			<div id="riga-header">
				<div id="header"><IMG id="logo" alt="" src="../images/ImagesLogo.gif" width="352">
				</div> <!-- header --></div> <!-- riga-header -->
			<div id="riga-menu">
				<div id="menu">
					<ul>
						<li>
							<a href="../IDXMenuIn.aspx">HOME</a>
						</li>
						<li>
							<a runat="server" id="lblAZIONI" href="../AZIONI/AZMenu.aspx">AZIONI</a>
						</li>
						<li class="selected">
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
			<div id="riga-pagina">
				<div id="pagina">
					<div id="interna">
						<div id="top">
							<span class="label-sinistra">OBBLIGAZIONI CONVERTIBILI<img src="../images/label-sinistra-fine.png" alt=""></span>
							<div style="MARGIN-TOP:25px;MARGIN-LEFT:640px">
								<asp:label id="lbUpd" style="Z-INDEX: 127" runat="server">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
							</div>
						</div> <!-- top -->
						<div id="contenuto">
							<table>
								<tr>
									<td>DESCRIZIONE</td>
									<td><asp:dropdownlist id="cmbFind" style="Z-INDEX: 102; " runat="server" tabIndex="1">
											<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
											<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
											<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
										</asp:dropdownlist></td>
									<td><asp:textbox id="txtFind" style="Z-INDEX: 101;" tabIndex="2" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td>ISINCODE o UIC</td>
									<td><asp:textbox id="txtIsincode" style="Z-INDEX: 117;" tabIndex="3" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2">
										<asp:CheckBox id="ckStor" style="Z-INDEX: 115;" runat="server" Text="RICERCA ANCHE NELLO STORICO"
											tabIndex="4"></asp:CheckBox></td>
																			<td colspan="2"><asp:checkbox id="ckConv" style="Z-INDEX: 106; " tabIndex="4" runat="server" Text="VISUALIZZA ELENCO OBBLIGAZIONI CONVERTIBILI"
										Visible="False"></asp:checkbox></td>

								</tr>
								<tr>
									<td></td>
									<td colspan="2"><asp:button id="btnFind" style="Z-INDEX: 100;" tabIndex="5" runat="server" Text="Ricerca"></asp:button></td>
								</tr></table>
								<div id="box-interna">
									<ul>
										<li>
											Per ricercare un solo Titolo: inserirne la descrizione (anche solo parte del 
											nome), o il codice ISIN o UIC; per ottenere l’elenco di TUTTE le Obbligazioni 
											Convertibili basta premere il pulsante ‘Ricerca’ senza avere effettuato 
											alcun’altra selezione;</li>
										<li>
											Selezionando l’obbligazione desiderata si accede alla consultazione della 
											Tabella di Convertibilità e alla relativa Tabella di Parità teorica con le 
											azioni.</asp:label></li>
										<li>
											Spuntando ‘RICERCA ANCHE NELLO STORICO’ si aggiungono automaticamente anche i 
											Titoli storicizzati (non più attivi). Questa opzione può rallentare il 
											lavoro.</asp:label></li>
										<li>
											Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco 
											restituito dalla ricerca bisogna cliccare sull’intestazione della colonna 
											desiderata.</asp:label></li>
									</ul>
								</div>
							
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
