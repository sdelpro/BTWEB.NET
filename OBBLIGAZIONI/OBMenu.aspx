<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBMenu.aspx.vb" Inherits="BTWEB.NET.OBMenu" errorPage="error.aspx"%>
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
						<asp:label id="LBLLASTLOGIN" runat="server">Ultima connessione</asp:label>
					</div>
				</div> <!-- menu -->
				<div id="menuazioni" align="center">
					<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" TypeMenu="RicercheObbligazioni"></ucmenu:dhtmlmenucontrol>
				</div>
			</div> <!-- riga-menu -->
			<div id="riga-pagina">
				<div id="pagina">
					<div id="foglio">
						<div id="top">
							<span class="label-sinistra">BENVENUTI<img src="../images/label-sinistra-fine.png" alt=""></span>
							<span class="label-destra">MENU OBBLIGAZIONI<img src="../images/label-destra-fine.png" alt=""></span>
						</div> <!-- top -->
						<div id="aree">
							<ul>
								<li>
									<asp:linkbutton id="lbl1" runat="server">CARATTERISTICHE PRINCIPALI</asp:linkbutton>
								<li>
									<asp:linkbutton id="lbl2" runat="server">OBBLIGAZIONI IN SCADENZA</asp:linkbutton>
								<li>
									<asp:linkbutton id="lbl3" runat="server">AGGIORNAMENTO CEDOLE</asp:linkbutton>
								<li>
									<asp:linkbutton id="lbl4" runat="server">CEDOLE IN SCADENZA</asp:linkbutton>
								<li>
									<asp:linkbutton id="lbl5" runat="server">PIANI DI AMMORTAMENTO</asp:linkbutton>
								<li>
									<asp:linkbutton id="lbl6" runat="server">NEWS</asp:linkbutton>
								<li>
									<asp:linkbutton id="lbl7" runat="server">OBBLIGAZIONI CONVERTIBILI</asp:linkbutton>
								<li>
									<asp:linkbutton id="lbl8" runat="server">REGOLAMENTI</asp:linkbutton>
								<li>
									<asp:linkbutton id="lbl9" runat="server">MAGGIORAZIONI</asp:linkbutton>
								<li>
									<asp:linkbutton id="lbl10" runat="server">QUOTAZIONI</asp:linkbutton></li>
							</ul>
						</div> <!-- aree -->
					</div> <!-- foglio -->
				</div> <!-- pagina -->
			</div> <!-- riga-pagina -->
		</form>
	</body>
</HTML>
