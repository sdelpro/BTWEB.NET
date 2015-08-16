<%@ Page Language="vb" AutoEventWireup="false" Codebehind="IDXMenuIn.aspx.vb" Inherits="BTWEB.NET.IDXMenuIn" %>
<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
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
				</div> <!-- header --></div> <!-- riga-header -->
			<div id="riga-menu">
				<div id="menu">
					<ul>
						<li>							
							<a href="IDXMenuIn.aspx">HOME</a>
						</li>
						<li>							
							<asp:linkbutton id="lblAZIONI" Runat=server>AZIONI</asp:linkbutton>
						</li>
						<li>
							<asp:linkbutton id="lblOBBLIGAZIONI" Runat=server>OBBLIGAZIONI</asp:linkbutton>
						</li>
						<li>
							<asp:linkbutton id="lblINFOVARIE" Runat=server>INFORMAZIONI VARIE</asp:linkbutton>
						</li>
						<li>
							<asp:linkbutton id="lbEstrazioni" Runat=server>ESTRAZIONI</asp:linkbutton>
						</li>
												<li>							
							<a href="Logout.aspx">LOGOUT</a>
						</li>

					</ul>
					<div id="ultima-connessione">
						<asp:label id="lblLastLogin" runat="server" >Ultima connessione</asp:label>
					</div>
				</div> <!-- menu --></div> <!-- riga-menu -->
			<!--
			<TABLE style="Z-INDEX: 109; POSITION: absolute; HEIGHT: 8px; TOP: 0px; LEFT: 4px" id="Table1"
				border="0" cellSpacing="0" cellPadding="0" width="95%" cols="2">
				<TR>
					<TD vAlign="middle"><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" ImagePath="Images/" TypeMenu="TopMenuHome"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			-->
			<TABLE style="Z-INDEX: 108; POSITION: absolute; WIDTH: 962px; HEIGHT: 8px; TOP: 8px; LEFT: 0px"
				id="Table2" border="0" cellSpacing="0" cellPadding="0" width="962" cols="2">
			</TABLE>
			<TABLE style="Z-INDEX: 105; POSITION: absolute; HEIGHT: 440px; TOP: 160px; LEFT: 8px" id="Table5"
				border="0" cellSpacing="10" cellPadding="0" width="95%" align="center">
				<TR>
					<TD style="HEIGHT: 37px" width="100%" align="center"><asp:label id="lbScarichi" runat="server" Font-Names="Verdana" Font-Size="18px" Visible="False"
							ForeColor="#00547d">SCARICHI</asp:label>&nbsp;&nbsp;
						<asp:linkbutton id="lbScarA" runat="server" Width="43px" Height="16px" Font-Names="Verdana" Font-Size="18px"
							Visible="False" ForeColor="#00547d">A</asp:linkbutton>
							<asp:linkbutton id="lbScarB" runat="server" Width="34px" Height="16px" Font-Names="Verdana" Font-Size="18px"
							Visible="False" ForeColor="#00547d">B</asp:linkbutton></TD>
				<TR>
					<TD style="HEIGHT: 191px" align="center"><asp:table id="tbComun" runat="server" Width="500px" Height="139px" Font-Names="Tahoma" Font-Size="15px"
							Visible="False" Font-Bold="True">
							<asp:TableRow HorizontalAlign="Center" ForeColor="White" BackColor="#00547d" Height="30px" Font-Bold="True">
								<asp:TableCell Text="Comunicazioni agli Utenti"></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow VerticalAlign="Middle" BorderWidth="1px" BorderColor="#00547d" BorderStyle="Solid" 
 HorizontalAlign="Justify">
								<asp:TableCell BorderStyle="Solid" BorderWidth="1px" VerticalAlign="Middle" ForeColor="#00547d" HorizontalAlign="Justify" 
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
		</form>
	</body>
</HTML>
