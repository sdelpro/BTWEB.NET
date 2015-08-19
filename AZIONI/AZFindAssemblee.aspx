<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZFindAssemblee.aspx.vb" Inherits="BTWEB.NET.AZFindAssemblee"%>
<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
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
		<script>
		$(function() {
			$.datepicker.setDefaults($.datepicker.regional['it']); 
			$(".datepicker").datepicker();
			$(".datepicker").datepicker("option", "dateFormat", "dd/mm/yy");
		});
		</script>
	</HEAD>
	<body>
		<FORM id="Form1" method="post" runat="server">
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
						<asp:label id="lblLastLogin" style="Z-INDEX: 119" runat="server">Ultima connessione</asp:label>
					</div>
				</div>
				<div id="menuazioni" align="center">
					<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" TypeMenu="RicercheAzioni"></ucmenu:dhtmlmenucontrol>
				</div>
			</div>
			<div id="riga-pagina">
				<div id="pagina">
					<div id="interna">
						<div id="top">
							<span class="label-sinistra">CONVOCAZIONI ASSEMBLEE<img src="../images/label-sinistra-fine.png" alt=""></span>
							<asp:label id="lbUpd" CssClass="label-destra" runat="server">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
						</div>
						<div id="contenuto">
							<table>
								<tr>
									<td>DESCRIZIONE</td>
									<td><asp:textbox id="txtFind" runat="server"></asp:textbox></td>
									<td><asp:dropdownlist id="cmbFind" style="Z-INDEX: 102" runat="server" tabIndex="1">
											<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
											<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
											<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<tr>
									<td>ISINCODE o UIC</td>
									<td><asp:textbox id="txtIsincode" runat="server" tabIndex="2"></asp:textbox></td>
								</tr>
								<tr>
									<td>DATA ASSEMBLEA</td>
									<td><asp:textbox id="txtDtDa" CssClass="datepicker" runat="server" placeholder="Da" tabIndex="3"></asp:textbox></td>
									<td><asp:textbox id="txtDtA" CssClass="datepicker" runat="server" placeholder="A" tabIndex="4"></asp:textbox></td>
								</tr>
								<tr>
									<td>DATA MODIFICA/INSERIMENTO</td>
									<td><asp:textbox id="txtDtMDa" CssClass="datepicker" runat="server" placeholder="Da" tabIndex="5"></asp:textbox>
									<td><asp:textbox id="txtDtMA" CssClass="datepicker" runat="server" placeholder="A" tabIndex="6"></asp:textbox></td>
								<tr class="note">
									<td></td>
									<td colspan="2">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</td>
								</tr>
								<tr>
									<td>TESTO CONVOCAZIONE</td>
									<td><asp:textbox id="txtAss" runat="server" tabIndex="7"></asp:textbox></td>
								<tr>
									<td></td>
									<td colspan="2">
										<asp:button id="btnFind" Text="Ricerca" runat="server" tabIndex="8"></asp:button></td>
								</tr>
							</table>
							<div id="box-interna">
								<ul>
									<li>
										<asp:label id="lbHelp3" runat="server"> Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata.</asp:label>
									<li>
										<asp:label id="lbHelp2" runat="server" Font-Italic="True"> Le NOVITA’ si cercano copiando nel campo "DATA MODIFICA/INSERIMENTO DA" la data di "ultima connessione" riportata qui in alto sotto il logo Brambilla Titoli.</asp:label>
									<li>
										<asp:label id="lbHelp1" runat="server"> La ricerca può essere effettuata per descrizione (anche solo parte del nome), per codice ISIN o UIC, per DATA ASSEMBLEA (range temporale tra due date), per DATA MODIFICA/INSERIMENTO (range temporale tra due date), per testo della convocazione.</asp:label></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</FORM>
	</body>
</HTML>
