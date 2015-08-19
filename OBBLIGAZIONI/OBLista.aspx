<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBLista.aspx.vb" Inherits="BTWEB.NET.OBLista"%>
<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<meta content="False" name="vs_showGrid">
		<script type="text/javascript">
			<!--
			var stile = "top="+ screen.height-250 + ", left=" +  screen.width-200 + ", status=no, menubar=no, toolbar=no, scrollbars=yes";
				function Popup(apri) {
					window.open(apri, "", stile);
				}
			//-->
		</script>
		<LINK rel="stylesheet" type="text/css" href="../css/style.css">
		<link rel="stylesheet" href="../css/jquery-ui.css">
		<script src="../js//jquery-1.10.2.js"></script>
		<script src="../js/jquery-ui.js"></script>
		<script>$(function() {$.datepicker.setDefaults($.datepicker.regional['it']); $(".datepicker").datepicker(); $(".datepicker").datepicker("option", "dateFormat", "dd/mm/yy");	});	</script>
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
							<a href="../AZIONI/AZMenu.aspx">AZIONI</a>
						</li>
						<li class="selected">
							<a href="../OBBLIGAZIONI/OBMenu.aspx">OBBLIGAZIONI</a>
						</li>
						<li>
							<a href="../FindNews.aspx">INFORMAZIONI VARIE</a>
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
						<div style="align:center"><asp:label id="lblNoRecord" Font-Bold="true" runat="server" Visible="False">La ricerca non ha prodotto risultati</asp:label></div>
						<div id="top">
							<span class="label-sinistra">
								<asp:label ID="lblTipoRicerca" Runat="server"></asp:label><img src="../Images/label-sinistra-fine.png" alt=""></span>
						</div>
						<div id="contenuto">
							<div id="risultati-ricerca">
								<div id="risultati-ricerca-sopra">
									<div class="risultati-ricerca-numero">
										<div id="left">
											<span class="totale"><asp:label id="lblNumRecord" runat="server" /></span>
										</div>
										<div id="right">
											<span class="totale">
											<asp:linkbutton id="lblFirstPage" runat="server">First Page -</asp:linkbutton>
											<asp:linkbutton id="lblPrecPage" runat="server">Prev. Page -</asp:linkbutton>
											<asp:linkbutton id="lblSuccPage" runat="server">Next Page -</asp:linkbutton>
											<asp:linkbutton id="lblLastPage" runat="server">Last Page</asp:linkbutton>										
										</div>
									</div>
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
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
