<%@ Page Language="vb" AutoEventWireup="false" Codebehind="PopupNews.aspx.vb" Inherits="BTWEB.NET.PopupNews" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK rel="stylesheet" type="text/css" href="css/style.css">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<div id="riga-menu">
				<div id="menu-s">
					<ul>
						<li>
							<a class="selected" href="JavaScript:window.close();">CHIUDI</a></SPAN>
						</li>
					</ul>
				</div> <!-- menu --></div> <!-- riga-menu -->
			<div id="riga-pagina">
				<div id="pagina-s">
					<div id="interna-s">
						<div id="top">
							<div><span class="label-sinistra">NEWS<IMG alt="" src="Images/label-sinistra-fine.png"></span></div>
						</div>
						<div id="contenuto">
							<asp:table id="tbNews" runat="server" class="quattro-colonne-s">
								<asp:TableRow Width="100%">
									<asp:TableCell Width="100%"></asp:TableCell>
								</asp:TableRow>
							</asp:table></div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
