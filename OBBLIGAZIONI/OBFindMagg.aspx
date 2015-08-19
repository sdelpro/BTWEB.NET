<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBFindMagg.aspx.vb" Inherits="BTWEB.NET.OBFindMagg"%>
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
				</div> <!-- menu -->				<div id="menuazioni" align="center">
					<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" TypeMenu="RicercheObbligazioni"></ucmenu:dhtmlmenucontrol>
				</div>

			</div> <!-- riga-menu -->
			<div id="riga-pagina">
				<div id="pagina">
					<div id="interna">
						<div id="top">
							<span class="label-sinistra">MAGGIORAZIONI<img src="../images/label-sinistra-fine.png" alt=""></span>
							<div style="MARGIN-TOP:25px;MARGIN-LEFT:640px">
								<asp:label id="lbUpd" style="Z-INDEX: 127" runat="server">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
							</div>
						</div> <!-- top -->
						<div id="contenuto">
							<table>
								<tr>
									<td>DESCRIZIONE</td>
									<td>
										<asp:dropdownlist id="cmbFind" style="Z-INDEX: 102" tabIndex="1" runat="server">
											<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
											<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
											<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
										</asp:dropdownlist></td>
									<td><asp:textbox id="txtFind" CssClass="autcmpl" style="Z-INDEX: 100" tabIndex="2" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td>ISINCODE o UIC</td>
									<td><asp:textbox id="txtIsincode" style="Z-INDEX: 136" tabIndex="3" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2">
										<asp:textbox CssClass="datepicker"  id="txtDtInDa" style="Z-INDEX: 108" tabIndex="4" placeholder="Da" runat="server"></asp:textbox>
										<asp:textbox CssClass="datepicker"  id="txtDtInA" style="Z-INDEX: 112" tabIndex="5" placeholder="A" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2">
										<asp:checkbox id="ckStor" style="Z-INDEX: 134" tabIndex="6" runat="server" Text="RICERCA ANCHE NELLO STORICO"></asp:checkbox></td>
								<tr>
									<td></td>
									<td colspan="2">
										<asp:button id="btnFind" style="Z-INDEX: 101" tabIndex="7" Text="RICERCA" runat="server"></asp:button></td>
									<asp:label id="Label3" style="Z-INDEX: 107; POSITION: absolute; TOP: 552px; LEFT: 48px" runat="server"
										Height="16px" Width="104px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
										ForeColor="Black" Visible="False">DATA (GG/MM/AAAA)</asp:label>
								</tr>
							</table>
							<div id="box-interna">
								<ul>
									<li>
									Per ricercare un solo Titolo: inserirne la descrizione (anche solo parte del 
									nome), o il codice ISIN o UIC; per ottenere l’elenco di TUTTI i Titoli con 
									Maggiorazione basta premere il pulsante ‘Ricerca’ senza avere effettuato 
									alcun’altra selezione;
									<li>
									Spuntando ‘RICERCA ANCHE NELLO STORICO’ si aggiungono automaticamente anche i 
									Titoli storicizzati (non più attivi). Questa opzione può rallentare il lavoro;
									<li>
										Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco 
										restituito dalla ricerca bisogna cliccare sull’intestazione della colonna 
										desiderata;</li></ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
