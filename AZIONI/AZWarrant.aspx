<%@ Register TagPrefix="btweb" TagName="DynamicMenu" Src="../DynamicMenu.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZWarrant.aspx.vb" Inherits="BTWEB.NET.AZWarrant"%>
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
				<div id="header">
					<IMG id="logo" alt="" src="../images/ImagesLogo.gif" width="352">
				</div>
			</div> <!-- header --> </div> <!-- riga-header -->
			<div id="riga-menu">
				<div id="menu">
					<ul>
						<li>
							<A href="../IDXMenuIn.aspx">HOME</A>
						</li>
						<li class="selected">
							<a runat="server" id="lblAZIONI" href="../AZIONI/AZMenu.aspx">AZIONI</a></li>
						<li>
							<a runat="server" id="lblOBBLIGAZIONI" href="../OBBLIGAZIONI/OBMenu.aspx">OBBLIGAZIONI</a></li>
						<li>
							<a runat="server" id="lblINFOVARIE" href="../FindNews.aspx">INFORMAZIONI VARIE</a></li>
						<li>
							<a runat="server" style="display:none" id="lbEstrazioni" href="../Download.aspx?CD=3">ESTRAZIONI</a></li>
						<li>
							<A href="../Logout.aspx">LOGOUT</A>
						</li>
					</ul>
					<div id="ultima-connessione"><asp:label style="Z-INDEX: 114" id="lblLastLogin" runat="server">Ultima connessione</asp:label></div>
				</div> <!-- menu -->
				<div id="menuazioni" align="center">
					<btweb:DynamicMenu id="Dhtmlmenucontrol4" runat="server" TypeMenu="Azioni"></btweb:DynamicMenu>
				</div>
			</div> <!-- riga-menu -->
			<div id="riga-pagina">
				<div id="pagina">
					<div id="interna">
						<div id="top">
							<div><span class="label-sinistra">WARRANT IN CIRCOLAZIONE<IMG alt="" src="../Images/label-sinistra-fine.png"></span></div>
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
										<td><span class="etichetta">CONDIZIONI ESERCIZIO</span>
											<asp:label id="lbl_conese" runat="server" cssclass="valore"></asp:label></td>
									</tr>
									<tr>
										<td><span class="etichetta">PERIODO ESERCIZIO</span>
											<asp:label id="lbl_perese" runat="server" cssclass="valore"></asp:label></td>
									</tr>
								</table>
								<div id="una-colonna">
									<span class="etichetta">TABELLA WARRANT</span>
									<asp:label id="lbl_tabwar" runat="server" cssclass="valore"></asp:label>
								</div>
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
			</div>
			<!--
			<asp:table id="tbCarPrinc" style="Z-INDEX: 100; LEFT: 8px; POSITION: absolute; TOP: 136px"
				runat="server" Width="100%" Height="57" Font-Names="Tahoma" Font-Size="14px">
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BackColor="Transparent"  BorderColor="Black"></asp:TableCell>
					<asp:TableCell BackColor="Transparent"  BorderColor="Black"></asp:TableCell>
					<asp:TableCell BackColor="Transparent"  BorderColor="Black"></asp:TableCell>
					<asp:TableCell BackColor="Transparent"  BorderColor="Black"></asp:TableCell>
					<asp:TableCell BackColor="Transparent"  BorderColor="Black"></asp:TableCell>
					<asp:TableCell BackColor="Transparent"  BorderColor="Black"></asp:TableCell>
					<asp:TableCell BackColor="Transparent"  BorderColor="Black"></asp:TableCell>
					<asp:TableCell BackColor="Transparent"  BorderColor="Black"></asp:TableCell>
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
					<asp:TableCell BackColor="Transparent" ForeColor="#00547d" ColumnSpan="8" Width="100%" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="8" Width="100%"
						BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BackColor="Transparent" ForeColor="#00547d" ColumnSpan="8" Width="100%" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BackColor="Transparent" ForeColor="Transparent" ColumnSpan="8" Width="100%" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BackColor="Transparent" ForeColor="#00547d" ColumnSpan="8" Width="100%" BorderColor="Black"></asp:TableCell>
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
