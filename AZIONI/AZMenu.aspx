<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZMenu.aspx.vb" Inherits="BTWEB.NET.AZMenu"%>
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
		<!--<body MS_POSITIONING="GridLayout" background="..\Images\sfHome.JPG">-->
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
						<asp:label id="lblLastLogin" runat="server">Ultima connessione</asp:label>
					</div>
				</div> <!-- menu -->
			</div> <!-- riga-menu -->
			<div id="riga-pagina">
				<div id="pagina">
					<div id="foglio">
						<div id="top">
							<span class="label-sinistra">BENVENUTI<img src="../images/label-sinistra-fine.png" alt=""></span>
							<span class="label-destra">MENU AZIONI<img src="../images/label-destra-fine.png" alt=""></span>
						</div> <!-- top -->
						<div id="aree">
							<ul>
								<li>
									<asp:linkbutton id="lbl1" runat="server">ANAGRAFE SOCIETA'</asp:linkbutton>
								<li>
									<asp:linkbutton id="lbl2" runat="server">TITOLI SOCIETA'</asp:linkbutton>
								<li>
									<asp:linkbutton id="lbl3" runat="server">CONVOCAZIONI ASSEMBLEE</asp:linkbutton>
								<li>
									<asp:linkbutton id="lbl4" runat="server">CDA</asp:linkbutton>
								<li>
									<asp:linkbutton id="lbl5" runat="server">DIVIDENDI</asp:linkbutton>
								<li>
									<asp:linkbutton id="lbl6" runat="server">NEWS AZIONI</asp:linkbutton>
								<li>
									<asp:linkbutton id="lbl7" runat="server">AZIONI CONVERTIBILI</asp:linkbutton>
								<li>
									<asp:linkbutton id="lbl8" runat="server">OPERAZIONI SUL CAPITALE</asp:linkbutton>
								<li>
									<asp:linkbutton id="lbl9" runat="server">TABELLA WARRANT IN CIRCOLAZIONE</asp:linkbutton>
								<li>
									<asp:linkbutton id="lbl10" runat="server">QUOTAZIONI</asp:linkbutton></li>
							</ul>
						</div> <!-- aree -->
					</div> <!-- foglio -->
				</div> <!-- pagina -->
			</div> <!-- riga-pagina -->
			<TABLE id="Table5" style="Z-INDEX: 111; POSITION: absolute; WIDTH: 100%; HEIGHT: 88px; TOP: 136px; LEFT: 16px"
				cellSpacing="10" cellPadding="0" width="100%" align="center" border="0">
			</TABLE>
			<!--
			<TABLE id="Table1" style="Z-INDEX: 110; LEFT: 4px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD vAlign="middle">
						<ucmenu:dhtmlmenucontrol id=Dhtmlmenucontrol4 runat="server" Visible='<%# iif(Session("LOGIN_VALIDATE") = "ABILITATO_BT" ,"true","false") %>' TypeMenu="TopMenuAZ" ImagePath="Images/">
						</ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>-->
			<!--
			<asp:image id="Image1" style="Z-INDEX: 106; LEFT: 4px; POSITION: absolute; TOP: 32px" runat="server"
				Height="44px" Width="352px" ImageUrl="..\Images\Logo.gif"></asp:image>
			<TABLE id="Table3" style="Z-INDEX: 102; LEFT: 60px; WIDTH: 348px; POSITION: absolute; TOP: 364px; HEIGHT: 84px"
				cellSpacing="1" cellPadding="1" width="300" border="1">-->
			<TR>
			</TR>
			</TABLE>
		</form>
	</body>
</HTML>
