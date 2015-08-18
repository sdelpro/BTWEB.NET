<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBQuotazioni.aspx.vb" Inherits="BTWEB.NET.OBQuotazioni"%>
<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta name="vs_snapToGrid" content="False">
		<meta name="vs_showGrid" content="False">
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
						<asp:label id="lblLastLogin" style="Z-INDEX: 114" runat="server">Ultima connessione</asp:label>
					</div>
					<div id="menuazioni" align="center">
						<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol1" runat="server" TypeMenu="Obbligazioni" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></div>
				</div> <!-- menu -->
			</div> <!-- riga-menu -->
			<div id="riga-pagina">
				<div id="pagina">
					<div id="interna">
						<div id="top">
							<span class="label-sinistra">
								<asp:label id="lblTIPORICERCA" runat="server"></asp:label><img src="../Images/label-sinistra-fine.png" alt=""></span>
						</div>
						<div id="contenuto">
							<asp:DropDownList id="cmbAnno" runat="server" AutoPostBack="True"></asp:DropDownList>
							<asp:table id="tbCarPrinc" runat="server" Width="100%" class="quattro-colonne">
								<asp:TableRow>
									<asp:TableCell ColumnSpan="1" Width="12.5%"></asp:TableCell>
									<asp:TableCell ColumnSpan="1" Width="12.5%"></asp:TableCell>
									<asp:TableCell ColumnSpan="1" Width="12.5%"></asp:TableCell>
									<asp:TableCell ColumnSpan="1" Width="12.5%"></asp:TableCell>
									<asp:TableCell ColumnSpan="1" Width="12.5%"></asp:TableCell>
									<asp:TableCell ColumnSpan="1" Width="12.5%"></asp:TableCell>
									<asp:TableCell ColumnSpan="1" Width="12.5%"></asp:TableCell>
									<asp:TableCell ColumnSpan="1" Width="12.5%"></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell class="etichetta" Width="12.5%"></asp:TableCell>
									<asp:TableCell ColumnSpan="2" Width="25%"></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell Width="12.5%"></asp:TableCell>
									<asp:TableCell ColumnSpan="4" Width="87.5%"></asp:TableCell>
									<asp:TableCell Width="12.5%"></asp:TableCell>
									<asp:TableCell ColumnSpan="2" Width="87.5%"></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell Width="12.5%"></asp:TableCell>
									<asp:TableCell ColumnSpan="3" Width="87.5%"></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell class="etichetta" ColumnSpan="8" Width="100%"></asp:TableCell>
								</asp:TableRow>
							</asp:table>
							<asp:Table id="tbQuot" class="quattro-colonne" runat="server" Width="100%">
								<asp:TableRow>
									<asp:TableCell ColumnSpan="8" Width="100%"></asp:TableCell>
								</asp:TableRow>
							</asp:Table></div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
