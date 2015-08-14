<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZTitoli.aspx.vb" Inherits="BTWEB.NET.AZTitoli"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK rel="stylesheet" type="text/css" href="../css/style.css">
	</HEAD>
	<body bottomMargin="0" leftMargin="0" background="..\Images\sfMenuidx.jpg" topMargin="0"
		rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<div id="riga-header">
				<div id="header"><IMG id="logo" alt="" src="../images/ImagesLogo.gif" width="352">
				</div> <!-- header --></div> <!-- riga-header -->
			<div id="riga-menu">
				<div id="menu">
					<ul>
						<li>
							<a href="../IDXMenuIn.aspx">HOME</a>
						</li>
						<li>
							<asp:linkbutton id="lblAZIONI" Runat="server">AZIONI</asp:linkbutton>
						</li>
						<li>
							<asp:linkbutton id="lblOBBLIGAZIONI" Runat="server">OBBLIGAZIONI</asp:linkbutton>
						</li>
						<li>
							<asp:linkbutton id="lblINFOVARIE" Runat="server">INFORMAZIONI VARIE</asp:linkbutton>
						</li>
						<li>
							<asp:linkbutton id="lbEstrazioni" Runat="server">ESTRAZIONI</asp:linkbutton>
						</li>
						<li>
							<a href="../Logout.aspx">LOGOUT</a>
						</li>
					</ul>
					<div id="ultima-connessione">
						<asp:label id="lblLastlogin" style="Z-INDEX: 114" runat="server">Ultima connessione</asp:label>
					</div>
				</div> <!-- menu -->
				<div id="menuazioni" align="center">
					<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol2" runat="server" TypeMenu="Titoli"></ucmenu:dhtmlmenucontrol>
				</div>
			</div> <!-- riga-menu -->
			<div id="contenuto">
				<div id="risultati-ricerca">
					<div id="risultati-ricerca-sopra">
						<div class="risultati-ricerca-numero">
							<span class="totale"><span>
									<asp:label id="lblNumRecord" runat="server" /></span> <span style="MARGIN-LEFT:485px">
									<asp:linkbutton id="lblFirstPage" runat="server">Prima Pag.</asp:linkbutton>
									<asp:linkbutton id="lblLastPage" runat="server">Ultima Pag.</asp:linkbutton>
								</span></span>
						</div>
					</div>
					<asp:datagrid id="dtgAZIO" runat="server" Width="100%" Font-Size="10px" BackColor="#FFFFFF" BorderStyle="None"
						ForeColor="#FFFFFF" AutoGenerateColumns="False" PageSize="40" CellPadding="1" BorderWidth="1px"
						BorderColor="Black" CellSpacing="3">
						<SelectedItemStyle Font-Bold="True" ForeColor="Black" BackColor="LemonChiffon"></SelectedItemStyle>
						<ItemStyle ForeColor="Black" BackColor="White"></ItemStyle>
						<HeaderStyle Font-Size="10px" Font-Names="Tahoma" Wrap="False" HorizontalAlign="Left" ForeColor="Black"
							BackColor="Gainsboro"></HeaderStyle>
						<FooterStyle ForeColor="White" BackColor="DarkGray"></FooterStyle>
						<PagerStyle NextPageText="&amp;gt; Avanti" Font-Size="10px" Font-Bold="True" PrevPageText="&amp;lt; Indietro"
							HorizontalAlign="Right" ForeColor="White" Position="Top" BackColor="#454582" Mode="NumericPages"></PagerStyle>
					</asp:datagrid>
					<asp:table id="tbCarPrinc" runat="server" Height="57" Width="100%" Font-Size="14px">
						<asp:TableRow Width="100%" Font-Size="10px">
							<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Width="25%" BorderColor="Black"></asp:TableCell>
							<asp:TableCell BorderStyle="Solid" BorderWidth="1px" ColumnSpan="6" Width="75%" BorderColor="Black"></asp:TableCell>
						</asp:TableRow>
						<asp:TableRow Width="100%" Font-Size="10px">
							<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Width="25%" BorderColor="Black"></asp:TableCell>
							<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" Width="75%" BorderColor="Black"></asp:TableCell>
						</asp:TableRow>
						<asp:TableRow Width="100%" Font-Size="10px">
							<asp:TableCell BorderColor="Black"></asp:TableCell>
						</asp:TableRow>
					</asp:table>
				</div>
			</div>
		</form>
	</body>
</HTML>
