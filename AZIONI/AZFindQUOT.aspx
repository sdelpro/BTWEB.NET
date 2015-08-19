<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZFindQUOT.aspx.vb" Inherits="BTWEB.NET.AZFindQUOT"%>
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
							<asp:linkbutton id="lbEstrazioni" Runat="server">ESTRAZIONI</asp:linkbutton>
						</li>
						<li>
							<a href="../Logout.aspx">LOGOUT</a>
						</li>
					</ul>
					<div id="ultima-connessione">
						<asp:label id="lblLastLogin" style="Z-INDEX: 119" runat="server">Ultima connessione</asp:label>
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
							<span class="label-sinistra">QUOTAZIONI<img src="../images/label-sinistra-fine.png" alt=""></span>
							<asp:label id="lbUpd" CssClass="label-destra" runat="server">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
						</div> <!-- top -->
						<div id="contenuto">
							<table>
								<tr>
									<td>DESCRIZIONE</td>
									<td><asp:textbox id="txtFind" CssClass="autcmpl" style="Z-INDEX: 100" runat="server"></asp:textbox></td>
									<td><asp:dropdownlist id="cmbFind" style="Z-INDEX: 102" tabIndex="1" runat="server">
											<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
											<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
											<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<tr>
									<td>ISINCODE o UIC</td>
									<td><asp:textbox id="txtIsincode" tabIndex="2" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td>MESE</td>
									<td><asp:dropdownlist id="cmbMese" style="Z-INDEX: 112" tabIndex="3" runat="server">
											<asp:ListItem Value="GENNAIO">GENNAIO</asp:ListItem>
											<asp:ListItem Value="FEBBRAIO">FEBBRAIO</asp:ListItem>
											<asp:ListItem Value="MARZO">MARZO</asp:ListItem>
											<asp:ListItem Value="APRILE">APRILE</asp:ListItem>
											<asp:ListItem Value="MAGGIO">MAGGIO</asp:ListItem>
											<asp:ListItem Value="GIUGNO">GIUGNO</asp:ListItem>
											<asp:ListItem Value="LUGLIO">LUGLIO</asp:ListItem>
											<asp:ListItem Value="AGOSTO">AGOSTO</asp:ListItem>
											<asp:ListItem Value="SETTEMBRE">SETTEMBRE</asp:ListItem>
											<asp:ListItem Value="OTTOBRE">OTTOBRE</asp:ListItem>
											<asp:ListItem Value="NOVEMBRE">NOVEMBRE</asp:ListItem>
											<asp:ListItem Value="DICEMBRE">DICEMBRE</asp:ListItem>
										</asp:dropdownlist></td>
									<td>ANNO</td>
									<td><asp:dropdownlist id="cmbAnno" style="Z-INDEX: 124" tabIndex="4" runat="server"></asp:dropdownlist></td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2">
										<asp:button id="btnFind" style="Z-INDEX: 101" tabIndex="5" runat="server" Text="Ricerca"></asp:button></td>
								</tr>
							</table>
							<div id="box-interna">
								<ul>
									<li>
										<asp:label id="lbHelp1" runat="server">Definita una richiesta operando nei campi per "MESE" e/o per "ANNO verrà restituito l’elenco delle Azioni Quotate comprese nel periodo richiesto.</asp:label></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
		</FORM>
		<!--
			<asp:label id="Label3" style="Z-INDEX: 107;" runat="server" Visible="False">DATA MODIFICA</asp:label>
			<asp:label id="Label10" style="Z-INDEX: 113;" runat="server" Visible="False">A</asp:label>
			<asp:label id="Label9" style="Z-INDEX: 111;" runat="server" Visible="False">DA</asp:label>
			<asp:textbox CssClass="datepicker"  id="txtDtMA" style="Z-INDEX: 110;" runat="server" Visible="False"></asp:textbox>
			<asp:textbox CssClass="datepicker"  id="txtDtMDa" style="Z-INDEX: 109;" runat="server" Visible="False"></asp:textbox>
			<asp:label id="Label8" style="Z-INDEX: 106;" runat="server" Visible="False">DATA MODIFICA</asp:label>
			<asp:label id="Label1" style="Z-INDEX: 114;" runat="server">QUOTAZIONI</asp:label></FORM>--> 
		</DIV>
	</body>
</HTML>
