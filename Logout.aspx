<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Logout.aspx.vb" Inherits="BTWEB.NET.Logout"%>
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
				</div>
			</div>
					<div id="riga-menu">
				<div id="menu">
					<ul>
						<li>
							<a href="IDXMenu.aspx">LOGIN</a>
						</li>
					</ul>
					<div id="ultima-connessione">
						<asp:label id="lblLastLogin" runat="server">Ultima connessione</asp:label>
					</div>
				</div>
			</div>
			<div id="riga-pagina">
				<div id="pagina">
					<div id="interna">
						<div id="top">
							<span class="label-sinistra">LOGOUT<img src="images/label-sinistra-fine.png" alt=""></span>
						</div> <!-- top -->
						<div style="text-align:center">
							<span style="font-size:17px;font-weight:bold;"><asp:label id="lbMessage" runat="server">Arrivederci da Brambilla Titoli</asp:label></span>
						</div>
						<div id="contenuto">

			
				
				</div></div></div></div>
		</form>
	</body>
</HTML>
