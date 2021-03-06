<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBFindDesc.aspx.vb" Inherits="BTWEB.NET.OBFindDesc"%>
<%@ Register TagPrefix="btweb" TagName="DynamicMenu" Src="../DynamicMenu.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK rel="stylesheet" type="text/css" href="../css/style.css">
		<link rel="stylesheet" href="../css/jquery-ui.css">
		<script src="../js//jquery-1.10.2.js"></script>
		<script src="../js/jquery-ui.js"></script>
		<script>$(function() {$.datepicker.setDefaults($.datepicker.regional['it']); $(".datepicker").datepicker(); $(".datepicker").datepicker("option", "dateFormat", "dd/mm/yy");	});	</script>
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
							<a href="../AZIONI/AZMenu.aspx">AZIONI</a>
						</li>
						<li class="selected">
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
						<asp:label id="lblLastLogin" runat="server">Ultima connessione</asp:label>
					</div>
				</div> <!-- menu -->
				<div id="menuazioni" align="center">
					<btweb:DynamicMenu id="Dhtmlmenucontrol3" runat="server" TypeMenu="RicercheObbligazioni"></btweb:DynamicMenu>
				</div>
			</div> <!-- riga-menu -->
			<div id="riga-pagina">
				<div id="pagina">
					<div id="interna">
						<div id="top">
							<span class="label-sinistra">CARATTERISTICHE PRINCIPALI<img src="../images/label-sinistra-fine.png" alt=""></span>
							<div>
								<asp:label id="lbUpd" CssClass="label-destra" style="Z-INDEX: 127" runat="server">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
							</div>
						</div> <!-- top -->
						<div id="contenuto">
							<table>
								<tr>
									<td>DESCRIZIONE</td>
									<td><asp:textbox id="txtFind" CssClass="autcmpl" style="Z-INDEX: 101" tabIndex="2" runat="server"></asp:textbox></td>
									<td><asp:dropdownlist id="cmbFind" style="Z-INDEX: 103" tabIndex="1" runat="server">
											<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
											<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
											<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<tr>
									<td>ISINCODE o UIC</td>
									<td><asp:textbox id="txtIsincode" style="Z-INDEX: 127" tabIndex="3" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td>NOTA BREVE</td>
									<td><asp:textbox id="txtNota" style="Z-INDEX: 133" tabIndex="4" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td>PREZZO DI EMISSIONE</td>
									<td><asp:textbox id="txtPrEmDa" style="Z-INDEX: 136" tabIndex="5" placeholder="Da" runat="server"></asp:textbox></td>
									<td><asp:textbox id="txtPrEmA" style="Z-INDEX: 138" tabIndex="6" placeholder="A" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td><asp:label id="Label15" style="Z-INDEX: 140" runat="server">TIPO INDICIZZAZIONE</asp:label></td>
									<td><asp:dropdownlist id="cmbIndic" style="Z-INDEX: 139" tabIndex="7" runat="server">
											<asp:ListItem Value="Tutti">Tutti</asp:ListItem>
											<asp:ListItem Value="A Tasso Fisso">A Tasso Fisso</asp:ListItem>
											<asp:ListItem Value="A Tasso Variabile">A Tasso Variabile</asp:ListItem>
											<asp:ListItem Value="A Tasso Misto">A Tasso Misto</asp:ListItem>
											<asp:ListItem Value="Nessuno">Nessuno</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<tr>
									<td>CON MAGGIORAZIONE</td>
									<td><asp:CheckBox id="ckMaggiorazione" style="Z-INDEX: 141" runat="server" tabIndex="8"></asp:CheckBox></td>
								</tr>
								<tr>
									<td>TESTO NOTE ASSOCIATE</td>
									<td><asp:textbox id="txtNotaSpec" style="Z-INDEX: 132" tabIndex="9" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td></td>
									<td class="note" colspan="2">Attenzione: le date devono essere inserite nella forma 
										GG/MM/AAAA</td>
								</tr>
								<tr>
									<td><asp:label id="Label3" style="Z-INDEX: 106" runat="server">DATA SCADENZA</asp:label></td>
									<td><asp:textbox CssClass="datepicker" id="txtDtScadDa" style="Z-INDEX: 107" tabIndex="10" placeholder="Da"
											runat="server"></asp:textbox></td>
									<td><asp:textbox CssClass="datepicker" id="txtDtScadA" style="Z-INDEX: 110" tabIndex="11" placeholder="A"
											runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td><asp:label id="Label8" style="Z-INDEX: 111" runat="server">DATA MODIFICA/INSERIMENTO</asp:label></td>
									<td><asp:textbox CssClass="datepicker" id="txtDtMA" style="Z-INDEX: 114" tabIndex="13" placeholder="Da"
											runat="server"></asp:textbox></td>
									<td><asp:textbox CssClass="datepicker" id="txtDtMDa" style="Z-INDEX: 113" tabIndex="12" placeholder="A"
											runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2"><asp:checkbox id="ckStor" style="Z-INDEX: 123" tabIndex="14" runat="server" Text="RICERCA ANCHE NELLO STORICO"></asp:checkbox></td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2"><asp:button id="btnFind" style="Z-INDEX: 102" tabIndex="15" runat="server" Text="Ricerca"></asp:button></td>
								</tr>
							</table>
							<div id="box-interna"><ul>
									<li>
									La ricerca pu� essere richiesta per descrizione (anche solo parte del nome), 
									per codice ISIN o UIC, per testo Nota Breve, per testo Note Associate, per 
									range di prezzo di emissione, per tipo indicizzazione, per maggiorazioni (se 
									presenti), per data scadenza e per data modifica/inserimento.
									<li>
									Premendo il solo pulsante �Ricerca� senza avere effettuato alcuna selezione si 
									ottiene l�elenco di TUTTI i Titoli Obbligazionari attivi presenti.
									<li>
									Spuntando �RICERCA ANCHE NELLO STORICO� si aggiungono automaticamente anche i 
									Titoli storicizzati (non pi� attivi). Questa opzione pu� rallentare il lavoro.
									<li>
										Per cambiare l�ordinamento (crescente/decrescente e di colonna) di ogni elenco 
										restituito dalla ricerca bisogna cliccare sull�intestazione della colonna 
										desiderata</li></ul>
							</div>
							<!--<asp:textbox id="Textbox4" style="Z-INDEX: 112" tabIndex="4" runat="server"></asp:textbox>-->
							<asp:textbox id="Textbox1" Visible="False" style="Z-INDEX: 128" tabIndex="3" runat="server"></asp:textbox>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
