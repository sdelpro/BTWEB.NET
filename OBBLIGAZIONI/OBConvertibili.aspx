<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBConvertibili.aspx.vb" Inherits="BTWEB.NET.OBConvertibili"%>
<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta name="vs_snapToGrid" content="False">
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK rel="stylesheet" type="text/css" href="../css/style.css"><link rel="stylesheet" href="../css/jquery-ui.css"><script src="../js//jquery-1.10.2.js"></script><script src="../js/jquery-ui.js"></script><script>$(function() {$.datepicker.setDefaults($.datepicker.regional['it']); $(".datepicker").datepicker(); $(".datepicker").datepicker("option", "dateFormat", "dd/mm/yy");	});	</script>
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
							<a runat="server" id="lblOBBLIGAZIONI" href="../OBBLIGAZIONI/OBMenu.aspx">OBBLIGAZIONI</a>
						</li>
						<li>
							<a runat="server" id="lblINFOVARIE" href="../FindNews.aspx">INFORMAZIONI VARIE</a>
						</li>
						<li>
							<a runat="server" id="lbEstrazioni" href="../Download.aspx?CD=3">ESTRAZIONI</a>
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
							<asp:table id="tbCarPrinc"	class="quattro-colonne" runat="server" Width="100%">
								<asp:TableRow >
									<asp:TableCell  BorderColor="Black"></asp:TableCell>
									<asp:TableCell  BorderColor="Black"></asp:TableCell>
									<asp:TableCell  BorderColor="Black"></asp:TableCell>
									<asp:TableCell  BorderColor="Black"></asp:TableCell>
									<asp:TableCell  BorderColor="Black"></asp:TableCell>
									<asp:TableCell  BorderColor="Black"></asp:TableCell>
									<asp:TableCell  BorderColor="Black"></asp:TableCell>
									<asp:TableCell  BorderColor="Black"></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell class="etichetta" Width="12.5%" ></asp:TableCell>
									<asp:TableCell ColumnSpan="2" Width="25%"></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell class="etichetta" Width="12.5%"></asp:TableCell>
									<asp:TableCell ColumnSpan="7" Width="87.5%"></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell class="etichetta" Width="12.5%"></asp:TableCell>
									<asp:TableCell ColumnSpan="7" Width="87.5%"></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell ColumnSpan="8" Width="100%"></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell class="etichetta" ColumnSpan="8" Width="100%"></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell ColumnSpan="8" Width="100%"></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell class="etichetta" ColumnSpan="8" Width="100%" ></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell ColumnSpan="8" Width="100%"></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell class="etichetta" ColumnSpan="8" Width="100%"></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell ColumnSpan="8" Width="100%"></asp:TableCell>
								</asp:TableRow>
							</asp:table>
						</div>
					</div>
				</div>
			</div>
			<asp:label id="lblNoRecord" style="Z-INDEX: 106; LEFT: 16px; POSITION: absolute; TOP: 360px"
				runat="server" Height="23px" Width="360px" BackColor="Transparent" Font-Size="Medium" Font-Names="Tahoma"
				Font-Bold="True" ForeColor="Red" Visible="False" BorderColor="Transparent">Nessun periodo trovato</asp:label>
		</form>
	</body>
</HTML>
