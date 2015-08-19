<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBFindScad.aspx.vb" Inherits="BTWEB.NET.OBFindScad"%>
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
							<a href="../OBBLIGAZIONI/OBMenu.aspx">OBBLIGAZIONI</a>
							
						</li>
						<li>
							<a href="../FindNews.aspx">INFORMAZIONI VARIE</a>							
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
							<span class="label-sinistra">OBBLIGAZIONI IN SCADENZA<img src="../images/label-sinistra-fine.png" alt=""></span>
							<div style="MARGIN-TOP:25px;MARGIN-LEFT:640px">
								<asp:label id="lbUpd" style="Z-INDEX: 127" runat="server">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
							</div>
						</div> <!-- top -->
						<div id="contenuto">
							<table>
								<tr>
									<td>DATA SCADENZA</td>
									<td><asp:textbox CssClass="datepicker"  id="txtDtScDa" style="Z-INDEX: 112" placeholder="Da" runat="server" tabIndex="1"></asp:textbox></td>
									<td><asp:textbox CssClass="datepicker"  id="txtDtScA" style="Z-INDEX: 113" placeholder="A" tabIndex="2" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td>DATA RIMB. ANTICIP.</td>
									<td><asp:textbox CssClass="datepicker"  id="txtDtRaDa" style="Z-INDEX: 114" placeholder="Da" tabIndex="3" runat="server"></asp:textbox></td>
									<td><asp:textbox CssClass="datepicker"  id="txtDtRaA" style="Z-INDEX: 115" placeholder="A" tabIndex="4" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td>DATA MODIFICA/INSERIMENTO</asp:label></td>
									<td><asp:textbox CssClass="datepicker"  id="txtDtMDa" style="Z-INDEX: 107" tabIndex="5" placeholder="Da" runat="server"></asp:textbox></td>
									<td><asp:textbox CssClass="datepicker"  id="txtDtMA" style="Z-INDEX: 108" tabIndex="6" placeholder="A" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2">
										<asp:CheckBox id="ckStor" style="Z-INDEX: 131" runat="server" Text="RICERCA ANCHE NELLO STORICO"
											tabIndex="7"></asp:CheckBox></td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2">
										<asp:button id="btnFind" style="Z-INDEX: 123" tabIndex="8" runat="server" Text="Ricerca"></asp:button></td>
								</tr>
							</table>
							<div id="box-interna"><ul>
									<li>
										La ricerca per  “DATA SCADENZA”  restituisce lo scadenziario mensile, mentre quella per  “DATA RIMBORSO ANTICIPATO”  trova gli eventuali call esercitati</li>
									<li>
										Premendo il solo pulsante ‘Ricerca’ senza avere effettuato alcuna selezione si ottiene l’elenco di TUTTI i Titoli Obbligazionari attivi presenti</li>
									<li>
										Spuntando ‘RICERCA ANCHE NELLO STORICO’ si aggiungono automaticamente anche i Titoli storicizzati (non più attivi). Questa opzione può rallentare il lavoro></li>
									<li>
										Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata</li></ul>
							</div>
							<asp:label id="Label7" style="Z-INDEX: 102" runat="server" Visible="False">DA</asp:label>
							<asp:label id="Label6" style="Z-INDEX: 103" runat="server" Visible="False">A</asp:label>
							<asp:textbox CssClass="datepicker"  id="txtDtInA" style="Z-INDEX: 105" tabIndex="7" runat="server" Visible="False"></asp:textbox>
							<asp:textbox CssClass="datepicker"  id="txtDtInDa" style="Z-INDEX: 101" tabIndex="6" runat="server" Visible="False"></asp:textbox>
							<asp:label id="Label3" style="Z-INDEX: 100" runat="server" Visible="False">DATA INSERIMENTO</asp:label>
						</div>
					</div>
				</div></div>
		</form>
	</body>
</HTML>
