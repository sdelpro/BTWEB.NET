<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZTitolo.aspx.vb" Inherits="BTWEB.NET.AZTitolo" %>
<%@ Register TagPrefix="btweb" TagName="DynamicMenu" Src="../DynamicMenu.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
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
						<li class="selected">
							<a runat="server" id="lblAZIONI" href="../AZIONI/AZMenu.aspx">AZIONI</a>
						</li>
						<li>
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
						<asp:label id="lblLastLogin" runat="server">Ultima connessione</asp:label>
					</div>
				</div> <!-- menu -->
				<div id="menuazioni" align="center">
					<btweb:DynamicMenu id="Dhtmlmenucontrol4" runat="server" TypeMenu="Azioni"></btweb:DynamicMenu>
				</div>
			</div> <!-- riga-menu -->
			<div id="riga-pagina">
				<div id="pagina">
					<div id="interna">
						<div id="top">
							<span class="label-sinistra">
								<asp:label ID="lblTipoRicerca" runat="server"></asp:label><img src="../Images/label-sinistra-fine.png" alt=""></span>
						</div>
						<div id="contenuto">
							<asp:table id="tbTitolo" runat="server" CssClass="quattro-colonne">
								<asp:TableRow>
									<asp:TableCell CssClass="etichetta"></asp:TableCell>
									<asp:TableCell ColumnSpan="2"></asp:TableCell>
									<asp:TableCell CssClass="etichetta"></asp:TableCell>
									<asp:TableCell ColumnSpan="4"></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell CssClass="etichetta"></asp:TableCell>
									<asp:TableCell ColumnSpan="2"></asp:TableCell>
									<asp:TableCell CssClass="etichetta"></asp:TableCell>
									<asp:TableCell></asp:TableCell>
									<asp:TableCell></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell CssClass="etichetta"></asp:TableCell>
									<asp:TableCell ColumnSpan="2"></asp:TableCell>
									<asp:TableCell CssClass="etichetta"></asp:TableCell>
									<asp:TableCell></asp:TableCell>
									<asp:TableCell></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell CssClass="etichetta"></asp:TableCell>
									<asp:TableCell></asp:TableCell>
									<asp:TableCell CssClass="etichetta"></asp:TableCell>
									<asp:TableCell></asp:TableCell>
									<asp:TableCell CssClass="etichetta"></asp:TableCell>
									<asp:TableCell></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell CssClass="etichetta"></asp:TableCell>
									<asp:TableCell></asp:TableCell>
									<asp:TableCell CssClass="etichetta"></asp:TableCell>
									<asp:TableCell></asp:TableCell>
									<asp:TableCell></asp:TableCell>
									<asp:TableCell></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell CssClass="etichetta"></asp:TableCell>
									<asp:TableCell ColumnSpan="2"></asp:TableCell>
									<asp:TableCell CssClass="etichetta"></asp:TableCell>
									<asp:TableCell ColumnSpan="2"></asp:TableCell>
								</asp:TableRow>
							</asp:table></div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
