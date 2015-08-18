<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Error.aspx.vb" Inherits="BTWEB.NET.PageError"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK rel="stylesheet" type="text/css" href="css/style.css">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<div id="riga-header">
				<div id="header"><IMG id="logo" alt="" src="images/ImagesLogo.gif" width="352">
				</div> <!-- header --></div> <!-- riga-header -->
			<div id="riga-menu">
				<div id="menu">
					<ul>
						<li>
							<a href="IDXMenuIn.aspx">HOME</a>
						<li>
							<a href="AZIONI/AZMenu.aspx">AZIONI</a>
						<li>
							<a href="OBBLIGAZIONI/OBMenu.aspx">OBBLIGAZIONI</a>
						<li>
							<a href="FindNews.aspx">INFORMAZIONI VARIE</a>
						<li>
							<asp:linkbutton id="lbEstrazioni" Runat="server">ESTRAZIONI</asp:linkbutton>
						<li>
							<a href="Logout.aspx">LOGOUT</a>
							<div id="ultima-connessione">
								<asp:Label id="lblLastLogin" style="Z-INDEX: 118" runat="server">Ultima connessione</asp:Label>
							</div>
						</li>
					</ul>
				</div> <!-- menu -->
			</div> <!-- riga-menu -->
			<!-- corpo centrale della pagina-->
			<div id="riga-pagina">
				<div id="pagina">
					<div id="interna">
						<div id="top">
							<span class="label-sinistra">ERRORE SISTEMA BTWEB.NET<img src="images/label-sinistra-fine.png" alt=""></span>
						</div> <!-- top -->
						<div style="text-align:center">
							<span style="font-size:17px;font-weight:bold;"><asp:label id="lbError" runat="server">Arrivederci da Brambilla Titoli</asp:label></span>
						</div>

						<div id="contenuto">
							
							<asp:LinkButton id="lnbtn" runat="server" Visible="False">Torna alla Pagina Principale</asp:LinkButton>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
