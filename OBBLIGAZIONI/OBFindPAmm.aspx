<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBFindPAmm.aspx.vb" Inherits="BTWEB.NET.OBFindPAmm"%>
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
				</div> <!-- menu -->				<div id="menuazioni" align="center">
					<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" TypeMenu="RicercheObbligazioni"></ucmenu:dhtmlmenucontrol>
				</div>

			</div> <!-- riga-menu -->
			<div id="riga-pagina">
				<div id="pagina">
					<div id="interna">
						<div id="top">
							<span class="label-sinistra">PIANI AMMORTAMENTO<img src="../images/label-sinistra-fine.png" alt=""></span>
							<div>
								<asp:label id="lbUpd" CssClass="label-destra" style="Z-INDEX: 127" runat="server">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
							</div>
						</div> <!-- top -->
						<div id="contenuto">
							<table>
								<tr>
									<td>DESCRIZIONE</td>
									<td><asp:textbox id="txtFind" CssClass="autcmpl" style="Z-INDEX: 101" tabIndex="2" runat="server"></asp:textbox></td>
									<td><asp:dropdownlist id="cmbFind" style="Z-INDEX: 102" tabIndex="1" runat="server">
											<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
											<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
											<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<tr>
									<td>ISINCODE o UIC</td>
									<td><asp:textbox id="txtIsincode" style="Z-INDEX: 124" tabIndex="3" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td>DATA RATA</td>
									<td><asp:textbox CssClass="datepicker"  id="txtDtScDa" style="Z-INDEX: 113" tabIndex="4" placeholder="Da" runat="server"></asp:textbox></td>
									<td><asp:textbox CssClass="datepicker"  id="txtDtScA" style="Z-INDEX: 114" tabIndex="5" placeholder="A" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td></td>
									<td class="note" colspan="2">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</td>
								</tr>
								<tr>
									<td>TIPO AMMORTAMENTO</td>
									<td><asp:dropdownlist id="cmbTipoAmm" style="Z-INDEX: 121" tabIndex="6" runat="server"></asp:dropdownlist></td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2"><asp:CheckBox id="ckStor" style="Z-INDEX: 122" runat="server" Text="RICERCA ANCHE NELLO STORICO"
											tabIndex="7"></asp:CheckBox></td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2"><asp:button id="btnFind" style="Z-INDEX: 100" tabIndex="8" runat="server" Text="Ricerca"></asp:button></td>
								</tr>
							</table>
							<div id="box-interna"><ul>
									<li>
										Spuntando ‘RICERCA ANCHE NELLO STORICO’ si aggiungono automaticamente anche i Titoli storicizzati (non più attivi). Questa opzione può rallentare il lavoro;</li>
									<li>
										La ricerca può essere richiesta per descrizione (anche solo parte del nome), per codice ISIN o UIC, per tipo di ammortamento, oppure nel range temporale tra le due date;></li>
									<li>
										Per ottenere l’elenco di TUTTI i Titoli con Piano Ammortamento basta premere il pulsante “Ricerca“ senza aver effettuato alcun’altra selezione;</li></ul>
							</div>
							<asp:checkbox id="ckPiano" style="Z-INDEX: 107" tabIndex="4" runat="server" Text="TITOLI CON PIANO AMMORTAMENTO"
								Visible="False"></asp:checkbox>
						</div>
					</div>
				</div></div>
		</form>
	</body>
</HTML>
