<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZFindCDA.aspx.vb" Inherits="BTWEB.NET.AZFindCDA"%>
<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
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
						<asp:Label id="lblLastLogin" style="Z-INDEX: 118" runat="server">Ultima connessione</asp:Label>
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
							<span class="label-sinistra">CDA<img src="../images/label-sinistra-fine.png" alt=""></span>
							<asp:label id="lbUpd" CssClass="label-destra" runat="server">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
						</div> <!-- top -->
						<div id="contenuto">
							<table>
								<tr>
									<td>DESCRIZIONE</td>
									<td><asp:textbox id="txtFind" CssClass="autcmpl" style="Z-INDEX: 100" runat="server"></asp:textbox></td>
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
									<td>DATA CDA</td>
									<td><asp:textbox CssClass="datepicker"  id="txtDtDa" style="Z-INDEX: 112" runat="server" placeholder="Da" tabIndex="3"></asp:textbox></td>
									<td><asp:textbox CssClass="datepicker"  id="txtDtA" style="Z-INDEX: 114" runat="server" placeholder="A" tabIndex="4"></asp:textbox></td>
								</tr>
								<tr>
									<td>DATA MODIFICA/INSERIMENTO</td>
									<td><asp:textbox CssClass="datepicker"  id="txtDtMDa" runat="server" placeholder="Da" tabIndex="5"></asp:textbox></td>
									<td><asp:textbox CssClass="datepicker"  id="txtDtMA" style="Z-INDEX: 109" runat="server" placeholder="A" tabIndex="6"></asp:textbox></td>
								</tr>
								<tr class="note">
									<td></td>
									<td colspan="2"><asp:label id="lbHelpDate" style="Z-INDEX: 124" runat="server">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</asp:label></td>
								</tr>
								<tr>
									<td>TIPO CDA</td>
									<td><asp:dropdownlist id="cmbTipoCDA" style="Z-INDEX: 126" tabIndex="7" runat="server">
											<asp:ListItem Value="TUTTI">TUTTI</asp:ListItem>
											<asp:ListItem Value="BILANCIO">BILANCIO</asp:ListItem>
											<asp:ListItem Value="1&#176; TRIMESTRE">1&#176; TRIMESTRE</asp:ListItem>
											<asp:ListItem Value="2&#176; TRIMESTRE">2&#176; TRIMESTRE</asp:ListItem>
											<asp:ListItem Value="SEMESTRALE">SEMESTRALE</asp:ListItem>
											<asp:ListItem Value="3&#176; TRIMESTRE">3&#176; TRIMESTRE</asp:ListItem>
											<asp:ListItem Value="4&#176; TRIMESTRE">4&#176; TRIMESTRE</asp:ListItem>
											<asp:ListItem Value="ALTRO">ALTRO</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2">
										<asp:button id="btnFind" style="Z-INDEX: 101" runat="server" Text="Ricerca" tabIndex="8"></asp:button></td>
								</tr>
							</table>
							<div id="box-interna">
								<ul>
									<li>
										<asp:label id="lbHelp2" style="Z-INDEX: 121" runat="server">Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata.   </asp:label>
									<li>
										<asp:label id="lbHelp1" runat="server">La ricerca può essere effettuata per descrizione (anche solo parte del nome), per codice ISIN o UIC, per Tipo CDA, per DATA CDA (range temporale tra due date) oppure per DATA MODIFICA/INSERIMENTO (range temporale tra due date).</asp:label></li></ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</FORM>
	</body>
</HTML>
