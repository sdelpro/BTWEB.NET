<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZLista.aspx.vb" Inherits="BTWEB.NET.AZLista"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<meta content="False" name="vs_showGrid">
		<script type="text/javascript">
			<!--
			var stile = "top="+ screen.height-250 + ", left=" +  screen.width-200 + ", width=700, height=500, status=no, menubar=no, toolbar=no, scrollbars=yes";
				function Popup(apri) {
					window.open(apri, "", stile);
				}
			//-->
		</script>
		<LINK rel="stylesheet" type="text/css" href="../css/style.css">
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
						<asp:label id="lblLastLogin" style="Z-INDEX: 114" runat="server">Ultima connessione</asp:label>
					</div>
				</div> <!-- menu -->
			</div> <!-- riga-menu -->
			<div id="riga-pagina">
				<div id="pagina">
					<div id="interna">
						<div id="top">
							<span class="label-sinistra">
								<asp:label ID="lblTipoRicerca" Runat="server"></asp:label><img src="../Images/label-sinistra-fine.png" alt=""></span>
						</div>
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
								<!--<div class="risultati-ricerca-elenco">-->
								<asp:datagrid id="dtgAZIO" style="Z-INDEX: 101" runat="server" Width="100%" ShowFooter="True"
									AllowSorting="True" BorderColor="Silver" BorderStyle="None" BorderWidth="0" CellPadding="3"
									GridLines="Vertical" PageSize="40" AllowPaging="True" AutoGenerateColumns="False">
									<SelectedItemStyle Font-Bold="True" ForeColor="Black" BackColor="LemonChiffon"></SelectedItemStyle>
									<AlternatingItemStyle CssClass="altitem-style"></AlternatingItemStyle>
									<ItemStyle CssClass="item-style"></ItemStyle>
									<HeaderStyle CssClass="header-style" Font-Size="11px" Height="20px" Wrap="False" HorizontalAlign="Center"
										ForeColor="#ffffff" BackColor="#4DB1E2"></HeaderStyle>
									<FooterStyle ForeColor="White" BackColor="DarkGray"></FooterStyle>
									<PagerStyle CssClass="pager-style" NextPageText="&amp;gt; Avanti" PrevPageText="&amp;lt; Indietro"
										HorizontalAlign="Right" Position="Top" Mode="NumericPages"></PagerStyle>
								</asp:datagrid>
								<!--</div>-->
								<asp:label id="lblNoRecord" runat="server" Font-Size="Medium" Font-Names="Tahoma"
									Width="340px" BorderColor="Transparent" BackColor="Transparent" ForeColor="Red" Font-Bold="True"
									Height="23px" Visible="False">La ricerca non ha prodotto risultati</asp:label>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
