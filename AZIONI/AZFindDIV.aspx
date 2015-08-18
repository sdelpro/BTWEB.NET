<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZFindDIV.aspx.vb" Inherits="BTWEB.NET.AZFindDIV"%>
<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK rel="stylesheet" type="text/css" href="../css/style.css">
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
						<asp:Label id="lblLastLogin" style="Z-INDEX: 125" runat="server">Ultima connessione</asp:Label>
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
							<span class="label-sinistra">DIVIDENDI<img src="../images/label-sinistra-fine.png" alt=""></span>
							<asp:label id="Label1" CssClass="label-destra" runat="server">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
						</div>
						<div id="contenuto">
							<table>
								<tr>
									<td style="FONT-WEIGHT:bold">DIVIDENDI PREANNUNCIATI</td>
								</tr>
								<tr>
									<td>DATA MODIFICA/INSERIMENTO</td>
									<td><asp:textbox id="txtDtMDaPre" style="Z-INDEX: 109" placeholder="Da" runat="server"></asp:textbox></td>
									<td><asp:textbox id="txtDtMAPre" style="Z-INDEX: 111" runat="server" placeholder="A" tabIndex="1"></asp:textbox></td>
								</tr>
								<tr class="note">
									<td></td>
									<td colspan="2">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</td>
								</tr>
								<tr>
									<td><asp:CheckBox id="CkDivStr" style="Z-INDEX: 145" runat="server" Text="Dividendo Straordinario"
											tabIndex="2"></asp:CheckBox></td>
									<td><asp:CheckBox id="CkDivNetto" style="Z-INDEX: 146" runat="server" Text="Dividendo Netto" tabIndex="3"></asp:CheckBox></td>
									<td><asp:CheckBox id="CkDivSaldo" style="Z-INDEX: 147" runat="server" Text="Saldo Dividendo" tabIndex="4"></asp:CheckBox></td>
								</tr>
								<tr>
									<td><asp:CheckBox id="CkDivOrd" style="Z-INDEX: 148" runat="server" Text="Dividendo Ordinario" tabIndex="5"></asp:CheckBox></td>
									<td><asp:CheckBox id="CkDivAcc" style="Z-INDEX: 149" runat="server" Text="Acconto Dividendo" tabIndex="6"></asp:CheckBox></td>
									<td><asp:CheckBox id="CkDivNonConfr" style="Z-INDEX: 150" runat="server" Text="Dividendo Non Confrontabile"
											tabIndex="7"></asp:CheckBox></td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2">
										<asp:button id="btnFindPre" style="Z-INDEX: 101" runat="server" Text="Ricerca" tabIndex="8"></asp:button></td>
								</tr>
								<tr>
									<td style="FONT-WEIGHT:bold">DIVIDENDI DELIBERATI</td>
								</tr>
								<tr>
									<td>
										DESCRIZIONE</td>
									<td><asp:textbox id="txtFind" style="Z-INDEX: 100" runat="server" tabIndex="9"></asp:textbox></td>
									<td><asp:dropdownlist id="cmbFind" style="Z-INDEX: 103" runat="server" tabIndex="10">
											<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
											<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
											<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<tr>
									<td>ISINCODE o UIC</td>
									<td><asp:textbox id="txtIsincode" runat="server" tabIndex="11"></asp:textbox></td>
								</tr>
								<tr>
									<td>DATA PAGAMENTO</td>
									<td><asp:textbox id="txtDtPagDa" style="Z-INDEX: 116" runat="server" placeholder="Da" tabIndex="12"></asp:textbox></td>
									<td><asp:textbox id="txtDtPagA" style="Z-INDEX: 119" runat="server" placeholder="A" tabIndex="13"></asp:textbox></td>
								</tr>
								<tr>
									<td>DATA MODIFICA/INSERIMENTO</td>
									<td><asp:textbox id="txtDtMDa" style="Z-INDEX: 110" runat="server" placeholder="Da" tabIndex="14"></asp:textbox></td>
									<td><asp:textbox id="txtDtMA" style="Z-INDEX: 112" runat="server" placeholder="A" tabIndex="15"></asp:textbox></td>
								</tr>
								<tr class="note">
									<td></td>
									<td colspan="2">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</td>
								</tr>
								<tr>
									<td><asp:CheckBox id="CkDivStrD" style="Z-INDEX: 139" runat="server" Text="Dividendo Straordinario"
											tabIndex="16"></asp:CheckBox></td>
									<td><asp:CheckBox id="CkDivNettoD" style="Z-INDEX: 141" runat="server" Text="Dividendo Netto" tabIndex="17"></asp:CheckBox></td>
									<td><asp:CheckBox id="CkDivSaldoD" style="Z-INDEX: 143" runat="server" Text="Saldo Dividendo" tabIndex="18"></asp:CheckBox></td>
								</tr>
								<tr>
									<td><asp:CheckBox id="CkDivOrdD" style="Z-INDEX: 140" runat="server" Text="Dividendo Ordinario" tabIndex="19"></asp:CheckBox></td>
									<td><asp:CheckBox id="CkDivAccD" style="Z-INDEX: 142" runat="server" Text="Acconto Dividendo" tabIndex="20"></asp:CheckBox></td>
									<td><asp:CheckBox id="CkDivNonConfrD" style="Z-INDEX: 144" runat="server" Text="Dividendo Non Confrontabile"
											tabIndex="21"></asp:CheckBox></td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2">
										<asp:button id="btnFindDel" style="Z-INDEX: 131" runat="server" Text="Ricerca" tabIndex="22"></asp:button></td>
								</tr>
							</table>
							<div id="box-interna"><ul>
									<li>
										<asp:label id="lbUpd" style="Z-INDEX: 138" runat="server">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
									<li>
										<asp:label id="lbHelp6" style="Z-INDEX: 137" runat="server">Le NOVITA’ si cercano copiando nel campo "DATA MODIFICA/INSERIMENTO DA" la data di "ultima connessione" riportata qui in alto sotto il logo Brambilla Titoli.</asp:label>
									<li>
										<asp:label id="lbHelp5" style="Z-INDEX: 136" runat="server">La ricerca per DIVIDENDI DELIBERATI può essere effettuata per descrizione (anche solo parte del nome), per codice ISIN o UIC, per DATA PAGAMENTO (range temporale tra due date) oppure per DATA MODIFICA/INSERIMENTO (range temporale tra due date), per tipo dividendo (porre il flag apposito).</asp:label>
									<li>
										<asp:label id="lbHelp7" style="Z-INDEX: 135" runat="server">Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata.</asp:label>
									<li>
										<asp:label id="lbHelp4" style="Z-INDEX: 134" runat="server">Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata.</asp:label>
									<li>
										<asp:label id="lbHelp3" runat="server">Premendo il solo pulsante "Ricerca" senza avere effettuato alcuna selezione si ottiene l’elenco di TUTTI I DIVIDENDI PREANNUNCIATI presenti.</asp:label>
									<li>
										<asp:label id="lbHelp2" style="Z-INDEX: 124" runat="server">Le NOVITÀ si cercano copiando nel campo "DATA MODIFICA/INSERIMENTO DA" la data di "Ultima Connessione" riportata qui in alto, sotto il logo Brambilla Titoli.</asp:label>
									<li>
										<asp:label id="lbHelp1" style="Z-INDEX: 107" runat="server">La ricerca per DIVIDENDI PREANNUNCIATI può essere effettuata per DATA MODIFICA/INSERIMENTO (range temporale tra due date), per tipo dividendo (porre il flag apposito).</asp:label></li></ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</FORM>
	</body>
</HTML>
