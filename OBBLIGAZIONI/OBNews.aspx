<%@ Page CodeBehind="OBNews.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="BTWEB.NET.OBNews" %>
<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<meta content="False" name="vs_snapToGrid">
		<meta content="False" name="vs_showGrid">
		<LINK rel="stylesheet" type="text/css" href="../css/style.css">
		<link rel="stylesheet" href="../css/jquery-ui.css">
		<script src="../js//jquery-1.10.2.js"></script>
		<script src="../js/jquery-ui.js"></script>
		<script>$(function() {$.datepicker.setDefaults($.datepicker.regional['it']); $(".datepicker").datepicker(); $(".datepicker").datepicker("option", "dateFormat", "dd/mm/yy");	});	</script>
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
							<a runat="server" style="display:none" id="lbEstrazioni" href="../Download.aspx?CD=3">ESTRAZIONI</a>
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
							<asp:table id="tbCarPrinc" class="quattro-colonne" Width="100%" runat="server">
								<asp:TableRow>
									<asp:TableCell ></asp:TableCell>
									<asp:TableCell ></asp:TableCell>
									<asp:TableCell ></asp:TableCell>
									<asp:TableCell ></asp:TableCell>
									<asp:TableCell ></asp:TableCell>
									<asp:TableCell ></asp:TableCell>
									<asp:TableCell ></asp:TableCell>
									<asp:TableCell ></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell class="etichetta" Width="12.5%"></asp:TableCell>
									<asp:TableCell ColumnSpan="2" Width="25%"></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell class="etichetta" Width="12.5%"></asp:TableCell>
									<asp:TableCell ColumnSpan="7" Width="87.5%"></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell Width="100%"></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell class="etichetta" ColumnSpan="8" Width="100%"></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell class="etichetta" ></asp:TableCell>
									<asp:TableCell class="etichetta" ColumnSpan="7" Width="87.5%"></asp:TableCell>
								</asp:TableRow>
							</asp:table></TABLE>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
