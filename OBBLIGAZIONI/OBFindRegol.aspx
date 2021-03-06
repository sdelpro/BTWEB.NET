<%@ Register TagPrefix="btweb" TagName="DynamicMenu" Src="../DynamicMenu.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBFindRegol.aspx.vb" Inherits="BTWEB.NET.OBFindRegol"%>
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
							<span class="label-sinistra">REGOLAMENTI<img src="../images/label-sinistra-fine.png" alt=""></span>
							<div>
								<asp:label id="lbUpd" CssClass="label-destra" style="Z-INDEX: 127" runat="server">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
							</div>
						</div> <!-- top -->
						<div id="contenuto">
							<table>
								<tr>
									<td>DESCRIZIONE</td>
									<td><asp:textbox id="txtFind" CssClass="autcmpl" style="Z-INDEX: 100" tabIndex="2" runat="server"></asp:textbox></td>
									<td><asp:dropdownlist id="cmbFind" style="Z-INDEX: 102" runat="server" tabIndex="1" Font-Names="Tahoma">
											<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
											<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
											<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<tr>
									<td>ISINCODE o UIC</td>
									<td><asp:textbox id="txtIsincode" style="Z-INDEX: 106" tabIndex="3" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td>TESTO REGOLAMENTO</td>
									<td><asp:textbox id="txtReg" style="Z-INDEX: 105" tabIndex="4" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td>DATA MODIFICA/INSERIMENTO</td>
									<td><asp:textbox CssClass="datepicker"  id="txtDtMDa" style="Z-INDEX: 113" tabIndex="5" placeholder="DA" runat="server"></asp:textbox></td>
									<td><asp:textbox CssClass="datepicker"  id="txtDtMA" style="Z-INDEX: 114" tabIndex="6" placeholder="A" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td></td>
									<td class="note" colspan="2">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2">
										<asp:CheckBox id="ckStor" style="Z-INDEX: 127" runat="server" Text="RICERCA ANCHE NELLO STORICO"
											tabIndex="7"></asp:CheckBox></td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2">
										<asp:button id="btnFind" style="Z-INDEX: 101" tabIndex="8" runat="server" Text="Ricerca"></asp:button></td>
								</tr>
							</table>
							<div id="box-interna">
								<ul>
									<li>
									La ricerca pu� essere richiesta per descrizione (anche solo parte del nome), 
									per codice ISIN o UIC, per Testo del Regolamento e all�interno del range 
									temporale tra due date; la ricerca per Testo del Regolamento rallenter� 
									considerevolmente i tempi di risposta;
									<li>
									Le NOVIT� si cercano copiando nel campo �DATA MODIFICA/INSERIMENTO DA� la data 
									di �Ultima Connessione� riportata qui in alto, sotto il logo Brambilla Titoli. 
									Si ricorda che sono presenti solo i regolamenti delle obbligazioni emesse a 
									partire dal 1990, se disponibili;
									<li>
									Spuntando �RICERCA ANCHE NELLO STORICO� si aggiungono automaticamente anche i 
									Titoli storicizzati (non pi� attivi). Questa opzione pu� rallentare il lavoro;
									<li>
										Per cambiare l�ordinamento (crescente/decrescente e di colonna) di ogni elenco 
										restituito dalla ricerca bisogna cliccare sull�intestazione della colonna 
										desiderata;</li>
								</ul>
							</div>
							<asp:textbox CssClass="datepicker"  id="txtDtInA" style="Z-INDEX: 111" tabIndex="3" runat="server" Visible="False"></asp:textbox>
							<asp:textbox CssClass="datepicker"  id="txtDtInDa" style="Z-INDEX: 108" runat="server" Visible="False"></asp:textbox>
							<asp:label id="Label3" style="Z-INDEX: 107; POSITION: absolute; TOP: 640px; LEFT: 24px" runat="server"
								Height="16px" Width="104px" ForeColor="Black" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
								Visible="False">DATA INSERIMENTO</asp:label>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
