<%@ Register TagPrefix="btweb" TagName="DynamicMenu" Src="../DynamicMenu.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBFindCedScad.aspx.vb" Inherits="BTWEB.NET.OBFindCedScad"%>
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
							<a runat="server" style="display:none" id="lbEstrazioni" href="../Download.aspx?CD=3">ESTRAZIONI</a>
						</li>
						<li>
							<a href="../Logout.aspx">LOGOUT</a>
						</li>
					</ul>
					<div id="ultima-connessione">
						<asp:label id="lblLastLogin" runat="server">Ultima connessione</asp:label>
					</div>
				</div> <!-- menu -->				<div id="menuazioni" align="center">
					<btweb:DynamicMenu id="Dhtmlmenucontrol3" runat="server" TypeMenu="RicercheObbligazioni"></btweb:DynamicMenu>
				</div>

			</div> <!-- riga-menu -->
			<div id="riga-pagina">
				<div id="pagina">
					<div id="interna">
						<div id="top">
							<span class="label-sinistra">CEDOLE IN SCADENZA<img src="../images/label-sinistra-fine.png" alt=""></span>
							<div>
								<asp:label id="lbUpd" CssClass="label-destra" style="Z-INDEX: 127" runat="server">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
							</div>
						</div> <!-- top -->
						<div id="contenuto">
							<table>
								<tr>
									<td>DESCRIZIONE</td>
									<td><asp:textbox id="txtFind" CssClass="autcmpl" style="Z-INDEX: 102" tabIndex="2" runat="server"></asp:textbox></td>
									<td><asp:dropdownlist id="cmbFind" style="Z-INDEX: 105" tabIndex="1" runat="server">
											<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
											<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
											<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<tr>
									<td>ISINCODE o UIC</td>
									<td><asp:textbox id="txtIsincode" style="Z-INDEX: 129" tabIndex="3" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td>DATA SCADENZA CEDOLE</td>
									<td><asp:textbox CssClass="datepicker"  id="txtDtScDa" style="Z-INDEX: 113" tabIndex="4" placeholder="Da" runat="server"></asp:textbox></td>
									<td><asp:textbox CssClass="datepicker"  id="txtDtScA" style="Z-INDEX: 114" tabIndex="5" placeholder="A" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td></td>
									<td class="note" colspan="2">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2"><asp:checkbox id="ckStor" style="Z-INDEX: 122" tabIndex="6" runat="server" Text="RICERCA ANCHE NELLO STORICO"></asp:checkbox></td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2"><asp:checkbox id="ckPro" style="Z-INDEX: 125" tabIndex="7" runat="server" Text="RICERCA SOLO CEDOLE PRO RATA"></asp:checkbox></td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2"><asp:button id="btnFind" style="Z-INDEX: 100" tabIndex="8" Text="RICERCA" runat="server"></asp:button></td>
								</tr>
							</table>
							<div id="box-interna"><ul>
									<li>
										La ricerca pu� essere richiesta per descrizione (anche solo parte del nome), per codice ISIN o UIC, oppure all�interno del range temporale tra le due date;</li>
									<li>
										La ricerca di cedole Pro Rata si esegue spuntando �RICERCA SOLO PRO RATA� e/o riempiendo i campi �DATA PRO RATA� per ottenere il periodo in cui cercarle;</li>
									<li>
										Premendo il solo pulsante �Ricerca� senza avere effettuato alcuna selezione si ottiene l�elenco di TUTTE le Cedole presenti;</li>
									<li>
										Spuntando �RICERCA ANCHE NELLO STORICO� si aggiungono automaticamente anche i Titoli storicizzati (non pi� attivi). Questa opzione pu� rallentare il lavoro;</li>
									<li>
										Per cambiare l�ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull�intestazione della colonna desiderata;</li></ul>
							</div>
							<asp:textbox CssClass="datepicker"  id="txtDtPRA" style="Z-INDEX: 110" tabIndex="7" runat="server" Visible="False"></asp:textbox>
							<asp:label id="Label11" style="Z-INDEX: 109" runat="server" Visible="False">A</asp:label>
							<asp:textbox CssClass="datepicker"  id="txtDtPRDa" style="Z-INDEX: 108" tabIndex="6" runat="server" Visible="False"></asp:textbox>
							<asp:label id="Label5" style="Z-INDEX: 107" runat="server" Visible="False">DA</asp:label>
							<asp:label id="Label4" style="Z-INDEX: 104" runat="server" Visible="False"> DATA PRO RATA</asp:label>
						</div>
					</div>
				</div></div>
		</form>
	</body>
</HTML>
