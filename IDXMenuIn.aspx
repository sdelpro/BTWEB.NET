<%@ Page Language="vb" AutoEventWireup="false" Codebehind="IDXMenuIn.aspx.vb" Inherits="BTWEB.NET.IDXMenuIn" %>
<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
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
		<!--<body bgProperties="fixed" background="Images\sfHome.jpg" MS_POSITIONING="GridLayout">-->
		<form id="Form1" method="post" runat="server">
			<div id="riga-header">
				<div id="header"><IMG id="logo" alt="" src="images/ImagesLogo.gif" width="352">
				</div> <!-- header --></div> <!-- riga-header -->
			<div id="riga-menu">
				<div id="menu">
					<ul>
						<li class="selected">
							<a href="IDXMenuIn.aspx">HOME</a>
						</li>
						<li>
							<a runat="server" id="lblAZIONI" href="AZIONI/AZMenu.aspx">AZIONI</a>
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
							<a href="Logout.aspx">LOGOUT</a>
						</li>
					</ul>
					<div id="ultima-connessione">
						<asp:label id="lblLastLogin" runat="server">Ultima connessione</asp:label>
					</div>
				</div> <!-- menu --></div> <!-- riga-menu -->
			<div id="riga-pagina">
				<div id="pagina">
					<div id="interna">
						<div id="top"><span class="label-sinistra">HomePage Tutto Titoli<IMG alt="" src="Images/label-sinistra-fine.png"></span>
						</div> <!-- top -->
						<div id="contenuto">
							<TABLE>
								<TR>
									<TD>
										<asp:PlaceHolder ID="phScarichi" Runat="server" Visible="False">
<asp:label id="lbScarichi" runat="server" ForeColor="#00547d" Visible="False" Font-Size="18px"
												Font-Names="Verdana">SCARICHI</asp:label>&nbsp;&nbsp; 
<asp:linkbutton id="lbScarA" runat="server" ForeColor="#00547d" Visible="False" Font-Size="18px"
												Font-Names="Verdana" Height="16px" Width="43px">A</asp:linkbutton>
<asp:linkbutton id="lbScarB" runat="server" ForeColor="#00547d" Visible="False" Font-Size="18px"
												Font-Names="Verdana" Height="16px" Width="34px">B</asp:linkbutton></asp:PlaceHolder></TD>
								</TR>
								<TR>
									<TD><asp:table id="tbComun" runat="server" CssClass="quattro-colonne">
											<asp:TableRow CssClass="etichetta">
												<asp:TableCell Text="COMUNICAZIONI AGLI UTENTI"></asp:TableCell>
											</asp:TableRow>
											<asp:TableRow>
												<asp:TableCell Text="&lt;br&gt;   Nessuna Comunicazione&lt;br&gt;&lt;br&gt;"></asp:TableCell>
											</asp:TableRow>
										</asp:table></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 0px" align="center" width="100%">&nbsp;&nbsp;</TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 0px" align="center" width="100%">&nbsp;</TD>
								</TR>
							</TABLE>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
