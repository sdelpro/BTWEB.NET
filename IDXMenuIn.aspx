<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="IDXMenuIn.aspx.vb" Inherits="BTWEB.NET.IDXMenuIn" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
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
		<!--<script type="text/javascript">
			<!--
			var stile = "top="+ screen.height-250 + ", left=" +  screen.width-200 + ", width=400, height=500, status=no, menubar=no, toolbar=no, scrollbars=no";
				function Popup(apri) {
					window.open(apri, "", stile);
				}
			//
		</script>-->
		<LINK rel="stylesheet" type="text/css" href="css/style.css">
	</HEAD>
	<body>
		<!--<body bgProperties="fixed" background="Images\sfHome.jpg" MS_POSITIONING="GridLayout">-->
		<form id="Form1" method="post" runat="server">
			<div id="riga-header">
				<div id="header"><IMG id="logo" alt="" src="images/ImagesLogo.gif" width="352">
				</div>
			</div>
			<div id="riga-menu">
				<div id="menu">
					<ul>
						<li>
							<A href="IDXMenuIn.aspx">HOME</A>
						</li>
						<li>
							<asp:linkbutton id="lblAZIONI" Runat="server">AZIONI</asp:linkbutton></li>
						<li>
							<asp:linkbutton id="lblOBBLIGAZIONI" Runat="server">OBBLIGAZIONI</asp:linkbutton></li>
						<li>
							<asp:linkbutton id="lblINFOVARIE" Runat="server">INFORMAZIONI VARIE</asp:linkbutton></li>
						<li>
							<asp:linkbutton id="lbEstrazioni" Runat="server">ESTRAZIONI</asp:linkbutton></li>
						<li>
							<A href="Logout.aspx">LOGOUT</A>
						</li>
					</ul>
					<div id="ultima-connessione">
						<asp:label id="lblLastLogin" runat="server">Ultima connessione</asp:label>
					</div>
				</div>
			</div>
			
			<TABLE id="Table2" width="962" cols="2">
			</TABLE>
			<TABLE id="Table5" width="95%" align="center">
				<TR>
					<TD style="width="100%" align="center">
						<asp:label id="lbScarichi" runat="server" Visible="False">SCARICHI</asp:label>&nbsp;&nbsp;
						<asp:linkbutton id="lbScarA" runat="server" Visible="False">A</asp:linkbutton>
						<asp:linkbutton id="lbScarB" runat="server" Visible="False">B</asp:linkbutton></TD>
				<TR>
					<TD align="center">
						<asp:table id="tbComun" runat="server" Visible="False">
							<asp:TableRow HorizontalAlign="Center">
								<asp:TableCell style="font-weight:bold" Text="Comunicazioni agli Utenti"></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow VerticalAlign="Middle" HorizontalAlign="Justify">
								<asp:TableCell VerticalAlign="Middle" HorizontalAlign="Justify"
									Text="&lt;br&gt;   Nessuna Comunicazione&lt;br&gt;&lt;br&gt;"></asp:TableCell>
							</asp:TableRow>
						</asp:table></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 0px" align="center" width="100%">&nbsp;&nbsp;</TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 0px" align="center" width="100%">&nbsp;</TD>
				</TR>
			</TABLE>
			<asp:label id="lblError" style="Z-INDEX: 110; LEFT: 12px; POSITION: absolute; TOP: 136px" runat="server"
				BackColor="Transparent" Font-Size="12px" Font-Names="Tahoma" Height="20px" Width="524px" ForeColor="Red" Font-Bold="True" BorderColor="Transparent"></asp:label></form>
		</form>
	</body>
</HTML>
