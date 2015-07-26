<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZWarrant.aspx.vb" Inherits="BTWEB.NET.AZWarrant"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" background="..\Images\sfMenuIdx.JPG" bottomMargin="0"
		leftMargin="0" topMargin="0" rightMargin="0">
		<form id="Form1" method="post" runat="server">
			<asp:image id="Image1" style="Z-INDEX: 112; LEFT: 8px; POSITION: absolute; TOP: 32px" runat="server"
				ImageUrl="..\Images\Logo.gif" Width="352px" Height="44px"></asp:image>
			<TABLE id="Table2" style="Z-INDEX: 105; LEFT: 8px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="98%" border="0">
				<TR>
					<TD vAlign="middle">
						<ucmenu:dhtmlmenucontrol id=Dhtmlmenucontrol1 runat="server" ImagePath="Images/" TypeMenu="TopMenuAZ" Visible='<%# iif(Session("LOGIN_VALIDATE") = "ABILITATO_BT" ,"true","false") %>'>
						</ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:Label id="lblLastLogin" style="Z-INDEX: 102; LEFT: 4px; POSITION: absolute; TOP: 80px"
				runat="server" Width="360px" Height="16px" Font-Names="Tahoma" Font-Size="12px" BackColor="Transparent">Ultima connessione</asp:Label>
			<TABLE id="Table1" style="Z-INDEX: 111; LEFT: 0px; POSITION: absolute; TOP: 100px" cellSpacing="0"
				cols="2" cellPadding="0" width="98%" border="0">
				<TR>
					<TD style="WIDTH: 252px">
						<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" TypeMenu="RicercheAzioni" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol>
						<asp:label id="lblTitoloForm" runat="server" Height="16px" Width="216px" BackColor="Transparent"
							Font-Size="12px" Font-Names="Tahoma" Font-Bold="True" ForeColor="Lime">WARRANT IN CIRCOLAZIONE</asp:label></TD>
					<TD style="HEIGHT: 30px" align="right">
						<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" TypeMenu="Azioni" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
				</TR>
			</TABLE>
			<asp:table id="tbCarPrinc" style="Z-INDEX: 100; LEFT: 8px; POSITION: absolute; TOP: 136px"
				runat="server" Width="100%" Height="57" Font-Names="Tahoma" Font-Size="14px">
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BackColor="Transparent" ColumnSpan="1" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BackColor="Transparent" ColumnSpan="1" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BackColor="Transparent" ColumnSpan="1" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BackColor="Transparent" ColumnSpan="1" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BackColor="Transparent" ColumnSpan="1" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BackColor="Transparent" ColumnSpan="1" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BackColor="Transparent" ColumnSpan="1" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BackColor="Transparent" ColumnSpan="1" Width="12.5%" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="2" Width="25%"
						BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="7" Width="87.5%"
						BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="7" Width="87.5%"
						BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BackColor="Transparent" ForeColor="Transparent" ColumnSpan="8" Width="100%" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BackColor="Transparent" ForeColor="Navy" ColumnSpan="8" Width="100%" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="8" Width="100%"
						BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BackColor="Transparent" ForeColor="Navy" ColumnSpan="8" Width="100%" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BackColor="Transparent" ForeColor="Transparent" ColumnSpan="8" Width="100%" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BackColor="Transparent" ForeColor="Navy" ColumnSpan="8" Width="100%" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ForeColor="Transparent"
						ColumnSpan="8" Width="100%" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
			</asp:table>
		</form>
	</body>
</HTML>
