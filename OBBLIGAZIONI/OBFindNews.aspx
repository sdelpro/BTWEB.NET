<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBFindNews.aspx.vb" Inherits="BTWEB.NET.OBFindNews" %>
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
							<span class="label-sinistra">NEWS<img src="../images/label-sinistra-fine.png" alt=""></span>
							<div style="MARGIN-TOP:25px;MARGIN-LEFT:640px">
								<asp:label id="lbUpd" style="Z-INDEX: 127" runat="server">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
							</div>
						</div> <!-- top -->
						<div id="contenuto">
							<table>
								<tr>
									<td>DESCRIZIONE</td>
									<td><asp:dropdownlist id="cmbFind" style="Z-INDEX: 104" tabIndex="1" runat="server">
											<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
											<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
											<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
										</asp:dropdownlist></td>
									<td><asp:textbox id="txtFind" style="Z-INDEX: 102" tabIndex="2" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td>ISINCODE o UIC</td>
									<td><asp:textbox id="txtIsincode" style="Z-INDEX: 122" tabIndex="3" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td>TESTO NEWS</td>
									<td><asp:textbox id="txtNews" style="Z-INDEX: 124" tabIndex="4" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td>DATA NEWS</td>
									<td><asp:textbox id="txtDtInA" style="Z-INDEX: 110" tabIndex="6" placeholder="Da" runat="server"></asp:textbox></td>
									<td><asp:textbox id="txtDtInDa" style="Z-INDEX: 107" tabIndex="5" placeholder="A" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2"><asp:button id="btnFind" style="Z-INDEX: 103" tabIndex="7" runat="server" Text="Ricerca"></asp:button>
									</td>
								</tr>
							</table>
							<div id="box-interna">
								<ul>
									<li>
									La ricerca pu� essere richiesta per descrizione (anche solo parte del nome), 
									per codice ISIN o UIC, per testo news oppure all�interno del range temporale 
									tra due date
									<li>
									Per cambiare l�ordinamento (crescente/decrescente e di colonna) di ogni elenco 
									restituito dalla ricerca bisogna cliccare sull�intestazione della colonna 
									desiderata;
									<li>
										La ricerca delle NEWS � sempre estesa anche ai Titoli non pi� attivi;</li>
								</ul>
							</div>
							<asp:checkbox id="ckStor" style="Z-INDEX: 120" runat="server" Text="RICERCA ANCHE NELLO STORICO"
								Visible="False"></asp:checkbox>
							<asp:label id="Label1" style="Z-INDEX: 111" runat="server">NEWS</asp:label>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
