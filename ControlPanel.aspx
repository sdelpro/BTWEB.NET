<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ControlPanel.aspx.vb" Inherits="BTWEB.NET.ControlPanel"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK rel="stylesheet" type="text/css" href="css/style.css">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<div id="riga-header">
				<div id="header"><IMG id="logo" alt="" src="images/ImagesLogo.gif" width="352"></div>
			</div>
			<div id="riga-menu">
				<div id="menu">
					<ul>
						<li>
							<a href="IDXMenuIn.aspx">HOME</a>
						</li>
						<li>
							<a href="AZIONI/AZMenu.aspx">AZIONI</a>
						</li>
						<li>
							<a runat="server" id="lblOBBLIGAZIONI" href="OBBLIGAZIONI/OBMenu.aspx">OBBLIGAZIONI</a>
						</li>
						<li>
							<a runat="server" id="lblINFOVARIE" href="FindNews.aspx">INFORMAZIONI VARIE</a>
						</li>
						<li>
							<asp:linkbutton id="lbEstrazioni" Runat="server">ESTRAZIONI</asp:linkbutton>
						</li>
						<li>
							<a href="Logout.aspx">LOGOUT</a>
						</li>
					</ul>
					<div id="ultima-connessione">
						<asp:label id="lblLastLogin" style="Z-INDEX: 114" runat="server">Ultima connessione</asp:label>
					</div>
					<div id="riga-pagina">
						<div id="pagina">
							<div id="interna">
								<div id="top">
									<span class="label-sinistra">
										<asp:label id="lbDIR" runat="server"></asp:label><img src="Images/label-sinistra-fine.png" alt=""></span>
								</div>
								<div id="contenuto">
									<asp:Button id="btnGU" style="Z-INDEX: 100; LEFT: 0px; POSITION: absolute; TOP: 132px" runat="server"
										Text="GESTIONE UTENTI" Width="132px" Height="28px" BackColor="Red" BorderColor="Transparent"
										BorderStyle="None" ForeColor="White" Visible="False"></asp:Button>
									<asp:datagrid id="dtgOBB" style="Z-INDEX: 107; LEFT: 0px; POSITION: absolute; TOP: 160px" runat="server"
										ForeColor="#00547d" BorderStyle="None" BorderColor="Silver" BackColor="#00547d" Width="400px"
										Font-Size="12px" Font-Names="Tahoma" ShowFooter="True" AllowSorting="True" BorderWidth="0px"
										CellPadding="0" GridLines="Vertical" AllowPaging="True" AutoGenerateColumns="False">
										<SelectedItemStyle Font-Bold="True" ForeColor="Black" BackColor="LemonChiffon"></SelectedItemStyle>
										<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
										<ItemStyle ForeColor="Black" BackColor="White"></ItemStyle>
										<HeaderStyle Font-Size="12px" Font-Names="Tahoma" Font-Bold="True" Wrap="False" HorizontalAlign="Left"
											ForeColor="White" BackColor="#00547d"></HeaderStyle>
										<FooterStyle ForeColor="White" BackColor="White"></FooterStyle>
										<PagerStyle NextPageText="&amp;gt; Avanti" Font-Size="12px" Font-Bold="True" PrevPageText="&amp;lt; Indietro"
											HorizontalAlign="Right" ForeColor="White" Position="Top" Mode="NumericPages"></PagerStyle>
									</asp:datagrid>
									<TABLE id="Table1" style="Z-INDEX: 104; LEFT: 4px; WIDTH: 719px; POSITION: absolute; TOP: 104px; HEIGHT: 16px"
										cellSpacing="1" cellPadding="1" width="719" border="0">
										<TR>
											<TD><A class="NAV" href="JavaScript:window.close();"><B style="COLOR: lime; FONT-STYLE: normal; FONT-FAMILY: Tahoma; FONT-VARIANT: normal; TEXT-DECORATION: none">CHIUDI</B></A></TD>
										</TR>
									</TABLE>
									<asp:Button id="btnVR" style="Z-INDEX: 103; LEFT: 264px; POSITION: absolute; TOP: 132px" runat="server"
										Height="28px" Width="137px" Text="ALTRO" BackColor="Silver" BorderColor="Transparent" BorderStyle="None"
										ForeColor="White" Visible="False"></asp:Button>
									<asp:Button id="btnST" style="Z-INDEX: 102; LEFT: 132px; POSITION: absolute; TOP: 132px" runat="server"
										Height="28px" Width="132px" Text="STATISTICHE" BackColor="Silver" BorderColor="Transparent"
										BorderStyle="None" ForeColor="White" Visible="False"></asp:Button>&nbsp;
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
