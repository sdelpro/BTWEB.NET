<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBConvertibili.aspx.vb" Inherits="BTWEB.NET.OBConvertibili"%>
<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta name="vs_snapToGrid" content="False">
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" background="..\Images\sfMenuIdx.JPG">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="lblLastLogin" style="Z-INDEX: 102; LEFT: 4px; POSITION: absolute; TOP: 80px"
				runat="server" Font-Names="Tahoma" Font-Size="12px" BackColor="Transparent" Width="360px"
				Height="16px">Ultima connessione</asp:Label>
			<TABLE id="Table1" style="Z-INDEX: 103; LEFT: 4px; POSITION: absolute; TOP: 99px" cellSpacing="0"
				cols="2" cellPadding="0" width="98%" border="0">
				<TR>
					<TD>
						<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" ImagePath="../Images/" TypeMenu="RicercheObbligazioni"></ucmenu:dhtmlmenucontrol>
						<asp:label id="lblTIPORICERCA" runat="server" Height="16px" Width="288px" BackColor="Transparent"
							Font-Size="12px" Font-Names="Tahoma" ForeColor="Lime" Font-Bold="True">TIPO RICERCA EFFETTUATA</asp:label></TD>
					<TD style="HEIGHT: 30px" align="right">
						<ucmenu:dhtmlmenucontrol id="DHTMLMenuControl1" runat="server" ImagePath="../Images/" TypeMenu="Obbligazioni"></ucmenu:dhtmlmenucontrol></TD>
				</TR>
			</TABLE>
			<asp:image id="Image1" style="Z-INDEX: 101; LEFT: 4px; POSITION: absolute; TOP: 32px" runat="server"
				Width="352px" Height="44px" ImageUrl="..\Images\Logo.gif"></asp:image>
		</form>
		<asp:table id="tbCarPrinc" style="Z-INDEX: 100; LEFT: 0px; POSITION: absolute; TOP: 136px"
			runat="server" Font-Size="14px" Font-Names="Tahoma" Height="57" Width="100%">
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
		<asp:label id="lblNoRecord" style="Z-INDEX: 106; LEFT: 16px; POSITION: absolute; TOP: 360px"
			runat="server" Height="23px" Width="360px" BackColor="Transparent" Font-Size="Medium" Font-Names="Tahoma"
			Font-Bold="True" ForeColor="Red" Visible="False" BorderColor="Transparent">Nessun periodo trovato</asp:label>
		<TABLE id="Table2" style="Z-INDEX: 104; LEFT: 4px; WIDTH: 962px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
			cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
			<TR>
				<TD>
					<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" TypeMenu="TopMenuOB" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
				<TD style="HEIGHT: 30px" align="right"></TD>
			</TR>
		</TABLE>
	</body>
</HTML>
