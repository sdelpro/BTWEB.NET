<%@ Register TagPrefix="btweb" TagName="DynamicMenu" Src="DynamicMenu.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="News.aspx.vb" Inherits="BTWEB.NET.News"%>
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
			var stile = "top="+ screen.height-250 + ", left=" +  screen.width-200 + ", status=no, menubar=no, toolbar=no, scrollbars=yes";
				function Popup(apri) {
					window.open(apri, "", stile);
				}
			//-->
		</script>
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
							<a runat="server" id="lblAZIONI" href="AZIONI/AZMenu.aspx">AZIONI</a>
						</li>
						<li>
							<a runat="server" id="lblOBBLIGAZIONI" href="OBBLIGAZIONI/OBMenu.aspx">OBBLIGAZIONI</a>
						</li>
						<li class="selected">
							<a runat="server" id="lblINFOVARIE" href="FindNews.aspx">INFORMAZIONI VARIE</a>
						</li>
						<li>
							<a runat="server" style="display:none" id="lbEstrazioni" href="Download.aspx?CD=3">ESTRAZIONI</a>
						</li>
						<li>
							<a href="Logout.aspx">LOGOUT</a>
						</li>
					</ul>
					<div id="ultima-connessione">
						<asp:label id="lblLastLogin" style="Z-INDEX: 114" runat="server">Ultima connessione</asp:label>
					</div>
				</div> <!-- menu -->
			</div> <!-- riga-menu -->
			<div id="riga-pagina">
				<div id="pagina">
					<div id="interna">
						<div id="top">
							<span class="label-sinistra">RICERCA<img src="Images/label-sinistra-fine.png" alt=""></span>
						</div>
						<div id="contenuto">
							<div id="risultati-ricerca">
								<div id="risultati-ricerca-sopra">
									<asp:Panel id="pnlRicerca" CssClass="risultati-ricerca-numero" runat="server">
										<div id="left">
											<span class="totale">
												<asp:label id="lblNumRecord" runat="server" /></span>
										</div>
										<div id="right">
											<span class="totale">
												<asp:linkbutton id="lblFirstPage" runat="server">First Page -</asp:linkbutton>
												<asp:linkbutton id="lblPrecPage" runat="server">Prev. Page -</asp:linkbutton>
												<asp:linkbutton id="lblSuccPage" runat="server">Next Page -</asp:linkbutton>
												<asp:linkbutton id="lblLastPage" runat="server">Last Page</asp:linkbutton></span>
										</div>
									</asp:Panel>
								</div>
								<asp:datagrid id="dtgOBB" runat="server" AllowSorting="True" Width="100%" ShowFooter="True" BorderWidth="0"
									CellPadding="3" GridLines="Vertical" PageSize="40" AllowPaging="True" AutoGenerateColumns="False">
									<SelectedItemStyle Font-Bold="True" ForeColor="Black" BackColor="LemonChiffon"></SelectedItemStyle>
									<AlternatingItemStyle CssClass="altitem-style"></AlternatingItemStyle>
									<ItemStyle CssClass="item-style"></ItemStyle>
									<HeaderStyle CssClass="header-style" Font-Size="11px" Height="20px" Wrap="False" HorizontalAlign="Center"
										ForeColor="#ffffff" BackColor="#4DB1E2"></HeaderStyle>
									<FooterStyle ForeColor="White" BackColor="DarkGray"></FooterStyle>
									<PagerStyle CssClass="pager-style" NextPageText="&amp;gt; Avanti" PrevPageText="&amp;lt; Indietro"
										HorizontalAlign="Right" Position="Top" Mode="NumericPages"></PagerStyle>
								</asp:datagrid>
								<asp:label id="lblNoRecord" runat="server" Font-Size="Medium" Font-Names="Tahoma" Width="340px"
									BorderColor="Transparent" BackColor="Transparent" ForeColor="Red" Font-Bold="True" Height="23px"
									Visible="False">La ricerca non ha prodotto risultati</asp:label>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
