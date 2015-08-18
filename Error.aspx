<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Error.aspx.vb" Inherits="BTWEB.NET.PageError"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK rel="stylesheet" type="text/css" href="css/style.css"> <!-- new -->
	</HEAD>
	<body>
		<div id="riga-header">
			<div id="header">
				<img id="logo" src="images/ImagesLogo.gif" alt="" width="352">
			</div> <!-- header -->
		</div> <!-- riga-header -->
		<div id="riga-menu">
			<div id="menu">
				<span class="intestazione">Tuttotitoli - Brambilla &amp; C. Servizi Telematici Srl 
					- Via Caradosso, 14 - 20124 Milano - tel. 02.20.40.45.03 - fax 02.39.19.54.04 </span>
			</div> <!-- menu -->
		</div> <!-- riga-menu -->
		<form id="Form1" method="post" runat="server">
			<div id="riga-pagina">
				<div id="pagina">
					<div id="foglio">
						<div id="top">
							<div>
								<span class="label-sinistra">Si è verificato un errore<img src="images/label-sinistra-fine.png" alt=""></span>
								<asp:label id="lblLastLogin" runat="server" CssClass="label-destra">Tutto Titoli</asp:label></div>
						</div> <!-- top -->
						<div id="login">
							<table>
								<tr>
									<td>
										<asp:Label id="lblError" Font-Size="Medium" Font-Names="Tahoma" BorderColor="Transparent" BackColor="Transparent"
											ForeColor="Red" Font-Bold="True" Height="23px" runat="server"></asp:Label>&nbsp;
									</td>
								</tr>
								<tr>
									<td>
										<asp:LinkButton id="lnbtn" runat="server" Visible="False">Torna alla Pagina Principale</asp:LinkButton>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
