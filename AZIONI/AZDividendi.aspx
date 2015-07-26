<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZDividendi.aspx.vb" Inherits="BTWEB.NET.AZDividendi"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bottomMargin="0" leftMargin="0" background="..\Images\sfMenuidx.jpg" topMargin="0"
		rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:image id="Image1" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 32px" runat="server"
				Width="352px" Height="44px" ImageUrl="..\Images\Logo.gif"></asp:image><asp:table id="tbDiv" style="Z-INDEX: 109; LEFT: 0px; POSITION: absolute; TOP: 136px" runat="server"
				Width="100%" Height="64px" Font-Names="Tahoma" Font-Size="12px">
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" ColumnSpan="2" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" ColumnSpan="7" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" ColumnSpan="2" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell Width="12.5%"></asp:TableCell>
					<asp:TableCell Width="12.5%"></asp:TableCell>
					<asp:TableCell Width="12.5%"></asp:TableCell>
					<asp:TableCell Width="12.5%"></asp:TableCell>
					<asp:TableCell Width="12.5%"></asp:TableCell>
					<asp:TableCell Width="12.5%"></asp:TableCell>
					<asp:TableCell Width="12.5%"></asp:TableCell>
				</asp:TableRow>
			</asp:table><asp:table id="tbDiv2" style="Z-INDEX: 107; LEFT: 8px; POSITION: absolute; TOP: 248px" runat="server"
				Width="100%" Height="20px"></asp:table>
			<TABLE id="Table3" style="Z-INDEX: 106; LEFT: 8px; POSITION: absolute; TOP: 100px; HEIGHT: 32px"
				cellSpacing="0" cols="2" cellPadding="0" width="98%" border="0">
				<TR>
					<TD></TD>
					<TD style="WIDTH: 234px"><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" ImagePath="../Images/" TypeMenu="RicercheAzioni"></ucmenu:dhtmlmenucontrol><asp:label id="lblTitoloForm" runat="server" Width="88px" Height="16px" BackColor="Transparent"
							Font-Names="Tahoma" Font-Size="12px" Font-Bold="True" ForeColor="Lime">DIVIDENDI</asp:label></TD>
					<TD style="HEIGHT: 30px" align="right"><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" ImagePath="../Images/" TypeMenu="Azioni"></ucmenu:dhtmlmenucontrol></TD>
				</TR>
			</TABLE>
			<TABLE id="Table2" style="Z-INDEX: 100; LEFT: 8px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="98%" border="0">
				<TR>
					<TD vAlign="middle"><ucmenu:dhtmlmenucontrol 
      id=Dhtmlmenucontrol1 runat="server" 
      ImagePath="Images/" TypeMenu="TopMenuAZ" 
      Visible='<%# iif(Session("LOGIN_VALIDATE") = "ABILITATO_BT" ,"true","false") %>'></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:label id="lblLastLogin" style="Z-INDEX: 104; LEFT: 6px; POSITION: absolute; TOP: 80px"
				runat="server" Width="360px" Height="16px" BackColor="Transparent" Font-Names="Tahoma"
				Font-Size="12px">Ultima connessione</asp:label><asp:image id="Image2" style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 32px" runat="server"
				Width="352px" Height="44px" ImageUrl="..\Images\Logo.gif"></asp:image>
			<TABLE id="Table1" style="Z-INDEX: 105; LEFT: 8px; WIDTH: 100%; POSITION: absolute; TOP: 96px; HEIGHT: 36px"
				cellSpacing="1" cellPadding="1" width="100%" border="0">
				<TR>
					<TD><A class="NAV" href="JavaScript:window.close();"><B style="COLOR: lime; FONT-STYLE: normal; FONT-FAMILY: Tahoma; FONT-VARIANT: normal; TEXT-DECORATION: none">CHIUDI</B></A><A class="NAV" href="JavaScript:window.close();"><B style="COLOR: lime; FONT-STYLE: normal; FONT-FAMILY: Tahoma; FONT-VARIANT: normal; TEXT-DECORATION: none"></B></A></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
