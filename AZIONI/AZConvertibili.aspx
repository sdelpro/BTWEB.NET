<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZConvertibili.aspx.vb" Inherits="BTWEB.NET.AZConvertibili"%>
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
			<asp:label id="lblNoRecord" style="Z-INDEX: 106; POSITION: absolute; TOP: 360px; LEFT: 16px"
				runat="server" Height="23px" Width="360px" Visible="False" Font-Bold="True" ForeColor="Red"
				Font-Names="Tahoma" Font-Size="Medium" BackColor="Transparent" BorderColor="Transparent">Nessun periodo trovato</asp:label>
			<div id="riga-header">
				<div id="header">
					<div><IMG id="logo" alt="" src="../images/ImagesLogo.gif" width="352"> <span class="etichetta" style="margin-left:900px;margin-top:0px">
							<a class="selected" href="JavaScript:window.close();"><img src="../Images/close2.png""></a></span>
					</div>
				</div> <!-- header --></div> <!-- riga-header -->
			<div id="riga-menu">
				<div id="menu">
					<ul>
						<li>
							<A href="../IDXMenuIn.aspx">HOME</A>
						</li>
						<li class="selected">
							<asp:linkbutton id="lblAZIONI" Runat="server">AZIONI</asp:linkbutton></li>
						<li>
							<asp:linkbutton id="lblOBBLIGAZIONI" Runat="server">OBBLIGAZIONI</asp:linkbutton></li>
						<li>
							<asp:linkbutton id="lblINFOVARIE" Runat="server">INFORMAZIONI VARIE</asp:linkbutton></li>
						<li>
							<asp:linkbutton id="lbEstrazioni" Runat="server">ESTRAZIONI</asp:linkbutton></li>
						<li>
							<A href="../Logout.aspx">LOGOUT</A>
						</li>
					</ul>
					<div id="ultima-connessione"><asp:label style="Z-INDEX: 114" id="lblLastLogin" runat="server">Ultima connessione</asp:label></div>
				</div> <!-- menu -->
				<div id="menuazioni" align="center">
					<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol2" runat="server" TypeMenu="Titoli"></ucmenu:dhtmlmenucontrol>
				</div>
			</div> <!-- riga-menu -->
			<div id="riga-pagina">
				<div id="pagina">
					<div id="interna">
						<div id="top">
							<div><span class="label-sinistra">AZIONI CONVERTIBILI<IMG alt="" src="../Images/label-sinistra-fine.png"></span></div>
						</div>
						<div id="contenuto">
							<div id="due-colonne">
								<table>
									<tr>
										<td><span class="etichetta">CODICE ISIN</span>
											<asp:label id="lbl_codisi" runat="server" CssClass="valore"></asp:label></td>
										<td class="separa"></td>
										<td><span class="etichetta">DENOMINAZIONE</span>
											<asp:label id="lbl_denomi" runat="server" CssClass="valore"></asp:label></td>
									</tr>
									<tr>
										<td><span class="etichetta">CONVERTIBILITA'</span>
											<asp:label id="lbl_conver" runat="server" cssclass="valore"></asp:label></td>
									</tr>
									<tr>
										<td><span class="etichetta">NOTA</span>
											<asp:label id="lbl_nota" runat="server" cssclass="valore"></asp:label></td>
									</tr>
								</table>
								
								<div id="una-colonna">
									<span class="etichetta">TABELLA DI CONVERTIBILITA'</span>
									<asp:label id="lbl_tabcon" runat="server" cssclass="valore"></asp:label>
								</div>

							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
			</div>
			</div> 
			<!--
			<asp:table id="tbCarPrinc" style="Z-INDEX: 100; LEFT: 0px; POSITION: absolute; TOP: 136px"
				runat="server" Width="100%" Height="57" Font-Names="Tahoma" Font-Size="14px">
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BackColor="Transparent" ColumnSpan="1" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BackColor="Transparent" ColumnSpan="1" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BackColor="Transparent" ColumnSpan="1" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BackColor="Transparent" ColumnSpan="1" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BackColor="Transparent" ColumnSpan="1" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BackColor="Transparent" ColumnSpan="1" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BackColor="Transparent" ColumnSpan="1" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BackColor="Transparent" ColumnSpan="1" Width="12.5%" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="2" Width="25%"
						BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="7" Width="87.5%"
						BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="7" Width="87.5%"
						BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BackColor="Transparent" ForeColor="Transparent" ColumnSpan="8" Width="100%" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BackColor="Transparent" ForeColor="Navy" ColumnSpan="8" Width="100%" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="8" Width="100%"
						BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BackColor="Transparent" ForeColor="Navy" ColumnSpan="8" Width="100%" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BackColor="Transparent" ForeColor="Transparent" ColumnSpan="8" Width="100%" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BackColor="Transparent" ForeColor="Navy" ColumnSpan="8" Width="100%" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ForeColor="Transparent"
						ColumnSpan="8" Width="100%" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
			</asp:table>
			-->
		</form>
	</body>
</HTML>
