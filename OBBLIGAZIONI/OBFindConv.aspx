<%@ Register TagPrefix="btweb" TagName="DynamicMenu" Src="../DynamicMenu.ascx" %>
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
							<a runat="server" style="DISPLAY:none" id="lbEstrazioni" href="../Download.aspx?CD=3">
								ESTRAZIONI</a>
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
							<span class="label-sinistra">OBBLIGAZIONI CONVERTIBILI<img src="../images/label-sinistra-fine.png" alt=""></span>
							<div>
								<asp:label id="lbUpd" CssClass="label-destra" style="Z-INDEX: 127" runat="server">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
							</div>
						</div> <!-- top -->
						<div id="contenuto">
							<table>
								<tr>
									<td>DESCRIZIONE</td>
									<td><asp:textbox id="txtFind" CssClass="autcmpl" style="Z-INDEX: 101" tabIndex="2" runat="server"></asp:textbox></td>
									<td><asp:dropdownlist id="cmbFind" style="Z-INDEX: 102" runat="server" tabIndex="1">
											<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
											<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
											<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<tr>
									<td>ISINCODE o UIC</td>
									<td><asp:textbox id="txtIsincode" style="Z-INDEX: 117" tabIndex="3" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2">
										<asp:CheckBox id="ckStor" style="Z-INDEX: 115" runat="server" Text="RICERCA ANCHE NELLO STORICO"
											tabIndex="4"></asp:CheckBox></td>
									<td colspan="2"><asp:checkbox id="ckConv" style="Z-INDEX: 106" tabIndex="4" runat="server" Text="VISUALIZZA ELENCO OBBLIGAZIONI CONVERTIBILI"
											Visible="False"></asp:checkbox></td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2"><asp:button id="btnFind" style="Z-INDEX: 100" tabIndex="5" runat="server" Text="Ricerca"></asp:button></td>
								</tr>
							</table>
							<div id="box-interna">
								<ul>
									<li>
									Per ricercare un solo Titolo: inserirne la descrizione (anche solo parte del 
									nome), o il codice ISIN o UIC; per ottenere l�elenco di TUTTE le Obbligazioni 
									Convertibili basta premere il pulsante �Ricerca� senza avere effettuato 
									alcun�altra selezione;
									<li>
									Selezionando l�obbligazione desiderata si accede alla consultazione della 
									Tabella di Convertibilit� e alla relativa Tabella di Parit� teorica con le 
									azioni.
									<li>
									Spuntando �RICERCA ANCHE NELLO STORICO� si aggiungono automaticamente anche i 
									Titoli storicizzati (non pi� attivi). Questa opzione pu� rallentare il lavoro.
									<li>
										Per cambiare l�ordinamento (crescente/decrescente e di colonna) di ogni elenco 
										restituito dalla ricerca bisogna cliccare sull�intestazione della colonna 
										desiderata.</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
