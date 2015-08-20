<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Download.aspx.vb" Inherits="BTWEB.NET.Download"%>
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
							<a href="AZIONI/AZMenu.aspx">AZIONI</a>
						</li>
						<li>
							<a runat="server" id="lblOBBLIGAZIONI" href="OBBLIGAZIONI/OBMenu.aspx">OBBLIGAZIONI</a>
						</li>
						<li>
							<a runat="server" id="lblINFOVARIE" href="FindNews.aspx">INFORMAZIONI VARIE</a>
						</li>
						<li class="selected">
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
									<TABLE id="Table3" style="Z-INDEX: 105; LEFT: 0px; WIDTH: 100%; BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none;HEIGHT: 32px; BORDER-BOTTOM-STYLE: none"
										cellSpacing="0" cellPadding="0" border="0">
										<tr>
											<td>
												<div style="POSITION: relative">
													<table cellSpacing="0" cellPadding="0" width="100%" border="0">
														<tr>
															<TD style="HEIGHT: 39px"></TD>
															<td style="HEIGHT: 39px">
																<asp:label id="Label1" runat="server" Width="416px" Height="24px" Font-Size="18px" Font-Names="Tahoma">Directory</asp:label></td>
														</tr>
														<TR>
															<TD></TD>
															<TD><asp:datagrid id="dg1" runat="server" Width="98%" Font-Names="Verdana" Font-Size="10pt" AllowSorting="True">
																	<HeaderStyle CssClass="header-style" ForeColor="#ffffff" BackColor="#4DB1E2"></HeaderStyle>
																	<Columns>
																		<asp:ButtonColumn Text="Scarica File" ButtonType="PushButton" CommandName="Select"></asp:ButtonColumn>
																	</Columns>
																</asp:datagrid></TD>
														</TR>
													</table>
												</div>
											</td>
										</tr>
									</TABLE>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
