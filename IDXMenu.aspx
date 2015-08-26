<%@ Page Language="vb" AutoEventWireup="false" Codebehind="IDXMenu.aspx.vb" Inherits="BTWEB.NET.IDXMenu" %>
<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script type="text/javascript">
			<!--
			var stile = "top="+ screen.height-250 + ", left=" +  screen.width-200 + ", status=no, menubar=no, toolbar=no, scrollbars=no";
				function Popup(apri) {
					window.open(apri, "", stile);
				}
			//-->
		</script>
		<LINK rel="stylesheet" type="text/css" href="css/style.css"> <!-- new -->
		<!-- new
	<body bgProperties="fixed" background="Images\sfHome.jpg" MS_POSITIONING="GridLayout"> -->
	</HEAD>
	<body> <!-- new -->
		<div id="riga-header">
			<div id="header">
				<img id="logo" src="images/ImagesLogo.gif" alt="" width="352">
			</div> <!-- header -->
		</div> <!-- riga-header -->
		<div id="riga-menu">
			<div id="menu">
				<span class="intestazione">TUTTO TITOLI - BOLLETTINO DELLE ESTRAZIONI dal 1876</span>
			</div> <!-- menu -->
		</div> <!-- riga-menu -->
		<form id="Form1" method="post" runat="server">
			<div id="riga-pagina">
				<div id="pagina">
					<div id="foglio">
						<div id="top">
							<div>
							<span class="label-sinistra">LOGIN<img src="images/label-sinistra-fine.png" alt=""></span>
							<asp:label id="lblLastLogin" runat="server" CssClass="label-destra">TUTTO TITOLI</asp:label></div>
						</div> <!-- top -->
						<div id="login">
							<form>
								<table>
									<tr>
										<td><asp:label id="lblUsername" runat=server>UTENTE</asp:label></td>
										<td><asp:textbox id="txtUsername"  runat="server" TextMode="Password"></asp:textbox></td>
									</tr>
									<tr>
										<td><asp:label id="lblPassword" runat=server>PASSWORD</asp:label></td>
										<td><asp:textbox id="txtPassword" runat="server" TextMode="Password"></asp:textbox></td>
									</tr>
									<tr>
										<td></td>
										<td><asp:button id="btnLogin" runat="server" Text="Accedi"></asp:button></td>
									</tr>
									<tr>
										<td>
											<asp:label id="lblError" runat="server"></asp:label>
										</td>
									</tr>
									<tr>
										<td></td>
										<td><asp:button id="btnGotoHome" runat="server" Text="Vai alla HomePage"></asp:button></td>
									</tr>
								</table>
							</form>
						</div> <!-- login -->
						<div id="box-home">
							<p>E' on line la nuova versione di Tuttotitoli con nuove e importanti 
								implementazioni, tra le quali:</p>
							<li>
								ricerca per <b>TESTO</b> negli archivi <b>NEWS, CONVOCAZIONI ASSEMBLEE, OPERAZIONI 
									SUL CAPITALE</b>
							<li>
								ricerca per tipo <b>DIVIDENDO</b> e tipo <b>CDA</b>
							<li>
								ricerca per <b>NOTA BREVE, PREZZO DI EMISSIONE, TIPO INDICIZZAZIONE, MAGGIORAZIONE, 
									TESTO NOTE ASSOCIATE</b>, nell'archivio <b>CARATTERISTICHE PRINCIPALI 
									OBBLIGAZIONI</b></li>
						</div> <!-- box-home -->
					</div> <!-- foglio -->
				</div> <!-- pagina -->
			</div> <!-- riga-pagina -->
			<div id="riga-fondo">			
				<div id="fondo">Brambilla &amp; C. Servizi Telematici S.r.l &egrave; una societ&agrave; Analysis</div> <!-- fondo -->
			</div> <!-- riga-fondo -->
			<div id="riga-footer">
				<div id="footer">
					<p>Per Informazioni Commerciali: <a href="#">info@brambillatitoli.it</a></p>
					<p>Per Problemi Tecnici: <a href="#">customersupport@brambillatitoli.it</a></p>
					<p>Powered by: <a target="_blank" href="http://www.itcube.it">ITCube Consulting srl</a></p>
				</div> <!-- fondo -->
			</div> <!-- riga-fondo -->
		</form>
	</body>
				

</HTML>

