<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="IDXMenuIn.aspx.vb" Inherits="BTWEB.NET.IDXMenuIn" %>
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
			<TABLE id="Table1" style="Z-INDEX: 109; LEFT: 4px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="95%" border="0">
				<TR>
					<TD vAlign="middle"><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" TypeMenu="TopMenuHome" ImagePath="Images/"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<TABLE id="Table2" style="Z-INDEX: 108; LEFT: 0px; WIDTH: 962px; POSITION: absolute; TOP: 8px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
			</TABLE>
			<asp:label id="lblLastLogin" style="Z-INDEX: 106; LEFT: 8px; POSITION: absolute; TOP: 80px"
				runat="server" Visible="False" BackColor="Transparent" Font-Size="12px" Font-Names="Tahoma"
				Height="16px" Width="360px">Ultima connessione</asp:label>
			<TABLE id="Table5" style="Z-INDEX: 105; LEFT: 8px; POSITION: absolute; TOP: 160px; HEIGHT: 440px"
				cellSpacing="10" cellPadding="0" width="95%" align="center" border="0">
				<TR>
					<TD style="HEIGHT: 37px" align="center" width="100%"><asp:linkbutton id="lblAZIONI" runat="server" Visible="False" Font-Size="18px" Font-Names="Verdana"
							Height="16px" Width="123px" ForeColor="Navy"> AZIONI</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 37px" align="center" width="100%"><asp:linkbutton id="lblOBBLIGAZIONI" runat="server" Visible="False" Font-Size="18px" Font-Names="Verdana"
							Height="16px" Width="185px" ForeColor="Navy"> OBBLIGAZIONI</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 37px" align="center" width="100%"><asp:linkbutton id="lblINFOVARIE" runat="server" Visible="False" Font-Size="18px" Font-Names="Verdana"
							Height="16px" Width="245px" ForeColor="Navy"> INFORMAZIONI VARIE</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 37px" align="center" width="100%"><asp:linkbutton id="lbEstrazioni" runat="server" Visible="False" Font-Size="18px" Font-Names="Verdana"
							Height="16px" Width="245px" ForeColor="Navy"> ESTRAZIONI</asp:linkbutton>&nbsp;&nbsp;</TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 37px" align="center" width="100%"><asp:label id="lbScarichi" runat="server" Visible="False" Font-Size="18px" Font-Names="Verdana"
							ForeColor="Navy">SCARICHI</asp:label>&nbsp;&nbsp;
						<asp:linkbutton id="lbScarA" runat="server" Visible="False" Font-Size="18px" Font-Names="Verdana"
							Height="16px" Width="43px" ForeColor="Navy">A</asp:linkbutton><asp:linkbutton id="lbScarB" runat="server" Visible="False" Font-Size="18px" Font-Names="Verdana"
							Height="16px" Width="34px" ForeColor="Navy">B</asp:linkbutton></TD>
				<TR>
					<TD style="HEIGHT: 191px" align="center"><asp:table id="tbComun" runat="server" Visible="False" Font-Size="15px" Font-Names="Tahoma"
							Height="139px" Width="500px" Font-Bold="True">
							<asp:TableRow HorizontalAlign="Center" ForeColor="White" BackColor="Navy" Height="30px" Font-Bold="True">
								<asp:TableCell Text="Comunicazioni agli Utenti"></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow VerticalAlign="Middle" BorderWidth="1px" BorderColor="Navy" BorderStyle="Solid"
								HorizontalAlign="Justify">
								<asp:TableCell BorderStyle="Solid" BorderWidth="1px" VerticalAlign="Middle" ForeColor="Navy" HorizontalAlign="Justify"
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
			&nbsp;<asp:image id="Image1" style="Z-INDEX: 104; LEFT: 16px; POSITION: absolute; TOP: 32px" runat="server"
				Height="44px" Width="352px" ImageUrl="Images\Logo.gif"></asp:image><asp:label id="lblError" style="Z-INDEX: 110; LEFT: 12px; POSITION: absolute; TOP: 136px" runat="server"
				BackColor="Transparent" Font-Size="12px" Font-Names="Tahoma" Height="20px" Width="524px" ForeColor="Red" Font-Bold="True" BorderColor="Transparent"></asp:label></form>
	</body>
</HTML>
