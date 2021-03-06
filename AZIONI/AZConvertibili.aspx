<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZConvertibili.aspx.vb" Inherits="BTWEB.NET.AZConvertibili"%>
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
					<btweb:DynamicMenu id="Dhtmlmenucontrol2" runat="server" TypeMenu="Titoli"></btweb:DynamicMenu>
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
		</form>
	</body>
</HTML>
