<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBFindCedole.aspx.vb" Inherits="BTWEB.NET.OBFindCedole"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta name="vs_showGrid" content="True">
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
				</div>
				<div id="menuazioni" align="center">
					<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" TypeMenu="RicercheObbligazioni"></ucmenu:dhtmlmenucontrol>
				</div>
			</div> <!-- riga-menu -->
			<div id="riga-pagina">
				<div id="pagina">
					<div id="interna">
						<div id="top">
							<span class="label-sinistra">AGGIORNAMENTO CEDOLE<img src="../images/label-sinistra-fine.png" alt=""></span>
							<div>
								<asp:label id="lbUpd" CssClass="label-destra" style="Z-INDEX: 127" runat="server">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
							</div>
						</div> <!-- top -->
						<div id="contenuto">
							<table>
								<tr>
									<td>DESCRIZIONE</td>
									<td>
										<asp:textbox id="txtFind" tabIndex="2" runat="server"></asp:textbox>
										<asp:dropdownlist id="cmbFind" runat="server" tabIndex="1">
											<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
											<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
											<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
										</asp:dropdownlist>
									</td>
								</tr>
								<tr>
									<td>ISINCODE o UIC</td>
									<td>
										<asp:textbox id="txtIsincode" tabIndex="3" runat="server"></asp:textbox>
									</td>
								</tr>
								<tr>
									<td>TIPO CEDOLE</td>
									<td><asp:dropdownlist id="cmbTipoInd" tabIndex="4" runat="server">
											<asp:ListItem Value="-1">TUTTI</asp:ListItem>
											<asp:ListItem Value="1">Tasso Fisso</asp:ListItem>
											<asp:ListItem Value="2">Tasso Variabile</asp:ListItem>
											<asp:ListItem Value="3">Tasso Misto</asp:ListItem>
											<asp:ListItem Value="0">(Nessuno)</asp:ListItem>
										</asp:dropdownlist>
									</td>
								</tr>
								<tr>
									<td></td>
									<td class="note" colspan="2">Attenzione: le date devono essere inserite nella forma 
										GG/MM/AAAA</td>
								</tr>
								<tr>
									<td>DATA MODIFICA/INSERIMENTO</td>
									<td>
										<asp:textbox id="txtDtMDa" CssClass="datepicker" tabIndex="5" placeholder="Da" runat="server"></asp:textbox>
										<asp:textbox id="txtDtMA" CssClass="datepicker" tabIndex="6" placeholder="A" runat="server"></asp:textbox>
									</td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2"><asp:CheckBox id="ckStor" runat="server" Text="RICERCA ANCHE NELLO STORICO" tabIndex="7"></asp:CheckBox>
									</td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2"><asp:button id="btnFind" tabIndex="8" runat="server" Text="Ricerca"></asp:button></td>
								</tr>
							</table>
							<div id="box-interna">
								<ul>
									<li>
									Per cambiare l’ordinamento (crescente/decrescente e di colonna) dell'elenco 
									restituito dalla ricerca bisogna cliccare sull’intestazione della colonna 
									desiderata
									<li>
									Spuntando ‘RICERCA ANCHE NELLO STORICO’ si aggiungono automaticamente anche i 
									Titoli storicizzati (non più attivi). Questa opzione può rallentare il lavoro.
									<li>
									Premendo il solo pulsante ‘Ricerca’ senza avere effettuato alcuna selezione si 
									ottiene l’elenco di TUTTE le cedole presenti
									<li>
										La ricerca può essere richiesta per descrizione (anche solo parte del nome), 
										per codice ISIN o UIC, oppure all’interno del range temporale tra le due date.</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<asp:label id="Label2" style="Z-INDEX: 118; POSITION: absolute; TOP: 608px; LEFT: 16px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="136px"
				Height="16px" Visible="False">DATA SCADENZA CEDOLE (GG/MM/AAAA)</asp:label>
			<asp:textbox id="txtDtScA" style="Z-INDEX: 117; POSITION: absolute; TOP: 608px; LEFT: 328px"
				tabIndex="5" runat="server" Width="85px" Height="20px" BorderStyle="Groove" Visible="False"></asp:textbox>
			<asp:textbox id="txtDtScDa" style="Z-INDEX: 116; POSITION: absolute; TOP: 608px; LEFT: 208px"
				tabIndex="4" runat="server" Width="85px" Height="20px" BorderStyle="Groove" Visible="False"></asp:textbox>
			<asp:label id="Label7" style="Z-INDEX: 106; POSITION: absolute; TOP: 656px; LEFT: 184px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="24px"
				Height="16px" Visible="False">DA</asp:label>
			<asp:label id="Label6" style="Z-INDEX: 108; POSITION: absolute; TOP: 656px; LEFT: 312px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="12px"
				Height="16px" Visible="False">A</asp:label>
			<asp:textbox id="txtDtInA" style="Z-INDEX: 109; POSITION: absolute; TOP: 656px; LEFT: 328px"
				tabIndex="8" runat="server" Width="85px" Height="20px" BorderStyle="Groove" Visible="False"></asp:textbox>
			<asp:textbox id="txtDtInDa" style="Z-INDEX: 104; POSITION: absolute; TOP: 656px; LEFT: 208px"
				tabIndex="7" runat="server" Width="85px" Height="20px" BorderStyle="Groove" Visible="False"></asp:textbox>
			<asp:label id="Label3" style="Z-INDEX: 101; POSITION: absolute; TOP: 656px; LEFT: 24px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="136px"
				Height="16px" Visible="False">DATA INSERIMENTO</asp:label>
		</form>
	</body>
</HTML>
