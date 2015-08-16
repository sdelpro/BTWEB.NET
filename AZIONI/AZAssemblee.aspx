<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZAssemblee.aspx.vb" Inherits="BTWEB.NET.AZAssemblee"%>
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
		<form id="Form1" method="post" runat="server">
			<div id="riga-header">
				<div id="header"><IMG id="logo" alt="" src="../images/ImagesLogo.gif" width="352"></div>
			</div>
			<div id="riga-menu">
				<div id="menu">
					<ul>
						<li>
							<a href="../IDXMenuIn.aspx">HOME</a>
						</li>
						<li class="selected">
							<asp:linkbutton id="lblAZIONI" Runat="server">AZIONI</asp:linkbutton>
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
						<asp:label id="lblLastLogin" style="Z-INDEX: 114" runat="server">Ultima connessione</asp:label>
					</div>
				</div> <!-- menu -->
								<div id="menuazioni" align=center>
					
					<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol1" runat="server" TypeMenu="Azioni" 
					></ucmenu:dhtmlmenucontrol>
				</div>

			</div> <!-- riga-menu -->
			<div id="riga-pagina">
				<div id="pagina">
					<div id="interna">
						<div id="top">
							<span class="label-sinistra">CONVOCAZIONI ASSEMBLEE<img src="../Images/label-sinistra-fine.png" alt=""></span>
						</div>
						<div id="contenuto">
							<asp:table id="tbAss" class="quattro-colonne" runat="server">
								<asp:TableRow Font-Size="12px">
									<asp:TableCell></asp:TableCell>
									<asp:TableCell></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
									<asp:TableCell></asp:TableCell>
									<asp:TableCell></asp:TableCell>
								</asp:TableRow>
							</asp:table>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
