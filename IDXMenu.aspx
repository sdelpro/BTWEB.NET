<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="IDXMenu.aspx.vb" Inherits="BTWEB.NET.IDXMenu" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<!------- Begin StatMentor code -------------
		//<script language="JavaScript"> 
		var now = new Date(); 
		var nIndex = now.getTime(); 
		document.write('<img height=1 width=1 border=0 src="');
		document.write('http://1.60.58.67//StatMentorNET/statmentorhit.aspx?p=aspcode.net&page=');
		document.write(escape(self.location.href));
		document.write('&referer=');
		document.write(escape(document.referrer));
		document.write('&ct=');
		document.write(nIndex);
		document.write('">');
		</script>
		<!------- End StatMentor code ------------->
		<script type="text/javascript">
			<!--
			var stile = "top="+ screen.height-250 + ", left=" +  screen.width-200 + ", width=400, height=500, status=no, menubar=no, toolbar=no, scrollbars=no";
				function Popup(apri) {
					window.open(apri, "", stile);
				}
			//-->
		</script>
	</HEAD>
	<body bgProperties="fixed" background="Images\sfHome.jpg" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:label id="lblUsername" style="Z-INDEX: 101; POSITION: absolute; TOP: 112px; LEFT: 16px"
				runat="server" BackColor="Transparent" ForeColor="White" Font-Size="12px" Font-Names="Tahoma"
				Height="12px" Width="33px">User</asp:label>
			<TABLE id="Table1" style="Z-INDEX: 110; POSITION: absolute; WIDTH: 760px; HEIGHT: 30px; TOP: 0px; LEFT: 4px"
				cellSpacing="0" cols="2" cellPadding="0" width="760" border="0">
				<TR>
					<TD vAlign="middle"><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" TypeMenu="TopMenuLogin" ImagePath="Images/"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="WIDTH: 3px; HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<TABLE id="Table2" style="Z-INDEX: 109; POSITION: absolute; WIDTH: 962px; HEIGHT: 8px; TOP: 8px; LEFT: 0px"
				cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
			</TABLE>
			<asp:button id="btnLogin" style="Z-INDEX: 108; POSITION: absolute; TOP: 108px; LEFT: 304px"
				tabIndex="3" runat="server" ForeColor="#404040" Font-Size="12px" Font-Names="Tahoma" Height="20px"
				Width="56px" Text="Login"></asp:button><asp:label id="lblLastLogin" style="Z-INDEX: 107; POSITION: absolute; TOP: 80px; LEFT: 8px"
				runat="server" BackColor="Transparent" Font-Size="12px" Font-Names="Tahoma" Height="16px" Width="360px" Visible="False">Ultima connessione</asp:label>
			<TABLE id="Table5" style="Z-INDEX: 106; POSITION: absolute; WIDTH: 915px; HEIGHT: 456px; TOP: 160px; LEFT: 8px"
				cellSpacing="10" cellPadding="0" width="915" align="center" border="0">
				<tr>
					<td align="center" width="100%">
						<div style="TEXT-ALIGN: center">
							<p style="FONT-FAMILY:Verdana; COLOR:red; FONT-SIZE:14pt; FONT-WEIGHT:bold">Nuova 
								Versione</p>
							<div style="TEXT-ALIGN: left; WIDTH: 600px; FONT-FAMILY: Verdana; COLOR: navy; FONT-SIZE: 9pt">
								<p>
									E’ on line la nuova versione di Tuttotitoli con nuove e importanti 
									implementazioni, tra le quali:
								</p>
								<p>
									&nbsp;•&nbsp;&nbsp;ricerca per <strong>TESTO</strong> negli archivi <strong>NEWS, 
										CONVOCAZIONI ASSEMBLEE, OPERAZIONI &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SUL CAPITALE</strong>
								</p>
								<p>
									&nbsp;•&nbsp;&nbsp;ricerca per tipo <strong>DIVIDENDO</strong> e tipo <strong>CDA</strong>
								</p>
								<p>
									&nbsp;•&nbsp;&nbsp;ricerca per <strong>NOTA BREVE, PREZZO DI EMISSIONE, TIPO 
										INDICIZZAZIONE, &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MAGGIORAZIONE, TESTO NOTE 
										ASSOCIATE</strong>, nell’archivio <strong>CARATTERISTICHE 
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PRINCIPALI OBBLIGAZIONI</strong>
								</p>
							</div>
						</div>
					</td>
				</tr>
				<TR>
					<TD style="HEIGHT: 29px" align="center" width="100%"><asp:imagebutton id="imgBtnInfo1" runat="server" ImageAlign="Middle" ImageUrl="Images\tv21.gif"></asp:imagebutton><asp:imagebutton id="imgBtnInfo2" runat="server" ImageAlign="Middle" ImageUrl="Images\tv22.gif"></asp:imagebutton></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 21px" align="center" width="100%">
						<P><asp:image id="imgBollettino" runat="server" Height="38px" Width="352px" ImageUrl="Images\bollettinoestrazioni.gif"></asp:image><asp:label id="lbDal" runat="server" BackColor="Transparent" Font-Size="12px" Font-Names="Tahoma"
								Height="16px" Width="100%">dal 1876</asp:label></P>
					</TD>
				</TR>
				<TR>
					<TD style="FONT-FAMILY: Tahoma; HEIGHT: 14px; FONT-SIZE: 12px" align="center" width="100%">Per 
						Informazioni Commerciali:<A style="FONT-FAMILY: Tahoma; FONT-SIZE: 12px" href="mailto:info@brambillatitoli.it">info@brambillatitoli.it</A></TD>
				</TR>
				<TR>
					<TD style="FONT-FAMILY: Tahoma; HEIGHT: 9px; FONT-SIZE: 12px" align="center" width="100%">Per 
						Problemi Tecnici:<A style="FONT-FAMILY: Tahoma; FONT-SIZE: 12px" href="mailto:staff@brambillatitoli.it">staff@brambillatitoli.it</A></TD>
				</TR>
			</TABLE>
			<asp:textbox id="txtPassword" style="Z-INDEX: 104; POSITION: absolute; TOP: 108px; LEFT: 208px"
				tabIndex="2" runat="server" Font-Size="12px" Font-Names="Tahoma" Height="20" Width="89px"
				TextMode="Password"></asp:textbox><asp:label id="lblPassword" style="Z-INDEX: 102; POSITION: absolute; TOP: 112px; LEFT: 152px"
				runat="server" BackColor="Transparent" ForeColor="White" Font-Size="12px" Font-Names="Tahoma" Height="12px" Width="40px">Password</asp:label>&nbsp;
			<asp:textbox id="txtUsername" style="Z-INDEX: 103; POSITION: absolute; TOP: 108px; LEFT: 56px"
				tabIndex="1" runat="server" Font-Size="12px" Font-Names="Tahoma" Height="20px" Width="89"></asp:textbox><asp:image id="Image1" style="Z-INDEX: 105; POSITION: absolute; TOP: 32px; LEFT: 16px" runat="server"
				Height="44px" Width="352px" ImageUrl="Images\Logo.gif"></asp:image><asp:label id="lblError" style="Z-INDEX: 111; POSITION: absolute; TOP: 136px; LEFT: 12px" runat="server"
				BackColor="Transparent" ForeColor="Red" Font-Size="12px" Font-Names="Tahoma" Height="20px" Width="524px" BorderColor="Transparent" Font-Bold="True"></asp:label><asp:label id="lbTuttotitoli" style="Z-INDEX: 113; POSITION: absolute; TOP: 110px; LEFT: 376px"
				runat="server" BackColor="Transparent" ForeColor="Lime" Font-Size="14px" Font-Names="Arial" Height="16px" Width="64px" Font-Bold="True">Tuttotitoli®</asp:label><asp:label id="Label2" style="Z-INDEX: 114; POSITION: absolute; TOP: 112px; LEFT: 456px" runat="server"
				BackColor="Transparent" ForeColor="Lime" Font-Size="9px" Font-Names="Arial" Height="8px" Width="528px">  -  Brambilla & C. Servizi Telematici Srl - Corso Buenos Aires, 64 -  20124 Milano - tel. 02.20.40.45.03 - fax 02.39.19.54.04 </asp:label></form>
	</body>
</HTML>
