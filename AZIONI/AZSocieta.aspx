<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZSocieta.aspx.vb" Inherits="BTWEB.NET.AZSocieta"%>
<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
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
				<div id="header"><IMG id="logo" alt="" src="../images/ImagesLogo.gif" width="352">
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
					<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol1" runat="server" TypeMenu="Titoli"></ucmenu:dhtmlmenucontrol>
				</div>
			</div> <!-- riga-menu -->
			<div id="riga-pagina">
				<div id="pagina">
					<div id="interna">
						<div id="top"><span class="label-sinistra">ANAGRAFE E SOCIETA<IMG alt="" src="../Images/label-sinistra-fine.png"></span>
						</div> <!-- top -->
						<div id="contenuto">
							<div id="due-colonne">
								<asp:Table id="tbCarPrinc" runat="server">
									<asp:TableRow>
										<asp:TableCell>
											<span class="etichetta">CODICE ISIN</span>
											<asp:label id="lbl_codisi" runat="server" CssClass="valore">Ultima connessione</asp:label>
										</asp:TableCell>
										<asp:TableCell class="separa"></asp:TableCell>
										<asp:TableCell>
											<span class="etichetta">RAGIONE SOCIALE</span>
											<asp:label id="lbl_ragsoc" runat="server" CssClass="valore"></asp:label>
										</asp:TableCell>
									</asp:TableRow>
									<asp:TableRow>
										<asp:TableCell>
											<span class="etichetta">SEDE AMMINISTRATIVA</span>
											<asp:label id="lbl_sedamm" runat="server" cssclass="valore"></asp:label>
										</asp:TableCell>
										<asp:TableCell class="separa"></asp:TableCell>
										<asp:TableCell>
											<span class="etichetta">SEDE LEGALE</span>
											<asp:label id="lbl_sedleg" runat="server" cssclass="valore"></asp:label>
										</asp:TableCell>
									</asp:TableRow>
									<asp:TableRow>
										<asp:TableCell>
											<span class="etichetta">TELEFONO</span>
											<asp:label id="lbl_telefo" runat="server" cssclass="valore"></asp:label>
										</asp:TableCell>
										<asp:TableCell class="separa"></asp:TableCell>
										<asp:TableCell>
											<span class="etichetta">FAX</span>
											<asp:label id="lbl_fax" runat="server" cssclass="valore"></asp:label>
										</asp:TableCell>
									</asp:TableRow>
									<asp:TableRow>
										<asp:TableCell>
											<span class="etichetta">QUOTATA</span>
											<asp:label id="lbl_quotat" runat="server" cssclass="valore"></asp:label>
										</asp:TableCell>
										<asp:TableCell class="separa"></asp:TableCell>
										<asp:TableCell>
											<span class="etichetta">VALUTA</span>
											<asp:label id="lbl_valuta" runat="server" cssclass="valore"></asp:label>
										</asp:TableCell>
									</asp:TableRow>
									<asp:TableRow>
										<asp:TableCell>
											<span class="etichetta">CAP. SOCIALE</span>
											<asp:label id="lbl_capsoc" runat="server" cssclass="valore"></asp:label>
										</asp:TableCell>
										<asp:TableCell class="separa"></asp:TableCell>
										<asp:TableCell>
											<span class="etichetta">ESERC. SOCIALE DA</span>
											<asp:label id="lbl_iniese" runat="server" cssclass="valore"></asp:label>
											<span class="etichetta">A</span>
											<asp:label id="lbl_finese" runat="server" cssclass="valore"></asp:label>
										</asp:TableCell>
									</asp:TableRow>
									<asp:TableRow>
										<asp:TableCell>
											<span class="etichetta">P.IVA/C.FISCALE</span>
											<asp:label id="lbl_pivacf" runat="server" cssclass="valore"></asp:label>
										</asp:TableCell>
										<asp:TableCell class="separa"></asp:TableCell>
										<asp:TableCell>
											<span class="etichetta">STATO</span>
											<asp:label id="lbl_stato" runat="server" cssclass="valore"></asp:label>
										</asp:TableCell>
									</asp:TableRow>
									<asp:TableRow>
										<asp:TableCell>
											<span class="etichetta">TIPO SOCIETA'</span>
											<asp:label id="lbl_tipsoc" runat="server" cssclass="valore"></asp:label>
										</asp:TableCell>
										<asp:TableCell class="separa"></asp:TableCell>
										<asp:TableCell>
											<span class="etichetta">CASSE</span>
											<asp:label id="lbl_casse" runat="server" cssclass="valore"></asp:label>
										</asp:TableCell>
									</asp:TableRow>
									<asp:TableRow>
										<asp:TableCell>
											<span class="etichetta">PRECEDENTI DENOMINAZIONI SOCIETA'</span>
											<asp:label id="lbl_prdeso" runat="server" cssclass="valore"></asp:label>
										</asp:TableCell>
									</asp:TableRow>
								</asp:Table>
								<div class="clear"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
