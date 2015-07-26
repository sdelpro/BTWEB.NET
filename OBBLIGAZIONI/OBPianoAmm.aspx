<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page CodeBehind="OBPianoAmm.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="BTWEB.NET.OBPianoAmm" %>
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<meta content="False" name="vs_snapToGrid">
		<meta content="False" name="vs_showGrid">
	</HEAD>
	<body bottomMargin="0" bgColor="white" leftMargin="0" topMargin="0" rightMargin="0" ms_positioning="GridLayout"
		background="..\Images\sfMenuidx.jpg">
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
				<asp:TableCell BackColor="Transparent" ForeColor="Transparent" ColumnSpan="8" Width="100%" BorderColor="Black"></asp:TableCell>
			</asp:TableRow>
			<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
				<asp:TableCell BackColor="Transparent" ForeColor="Navy" ColumnSpan="8" Width="100%" BorderColor="Black"></asp:TableCell>
			</asp:TableRow>
			<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
				<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" ColumnSpan="2" Width="25%"
					BorderColor="Black"></asp:TableCell>
				<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" ColumnSpan="2" Width="25%"
					BorderColor="Black"></asp:TableCell>
				<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" ColumnSpan="2" Width="25%"
					BorderColor="Black"></asp:TableCell>
			</asp:TableRow>
		</asp:table>
		<TABLE id="Table2" style="Z-INDEX: 105; LEFT: 4px; WIDTH: 962px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
			cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
			<TR>
				<TD>
					<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" TypeMenu="TopMenuOB" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
				<TD style="HEIGHT: 30px" align="right"></TD>
			</TR>
		</TABLE>
		<asp:image id="Image1" style="Z-INDEX: 104; LEFT: 4px; POSITION: absolute; TOP: 31px" Width="352px"
			Height="44px" runat="server" ImageUrl="..\Images\Logo.gif"></asp:image>
		<asp:Label id="lblLastLogin" style="Z-INDEX: 103; LEFT: 4px; POSITION: absolute; TOP: 80px"
			Width="360px" Height="16px" Font-Names="Tahoma" Font-Size="12px" runat="server" BackColor="Transparent">Ultima connessione</asp:Label>
		<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 6px; POSITION: absolute; TOP: 99px" cellSpacing="0"
			cols="2" cellPadding="0" width="100%" border="0">
			<TR>
				<TD>
					<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" ImagePath="../Images/" TypeMenu="RicercheObbligazioni"></ucmenu:dhtmlmenucontrol>
					<asp:label id="lblTIPORICERCA" Width="288px" Height="16px" Font-Names="Tahoma" Font-Size="12px"
						runat="server" BackColor="Transparent" ForeColor="Lime" Font-Bold="True">TIPO RICERCA EFFETTUATA</asp:label></TD>
				<TD style="HEIGHT: 30px" align="right">
					<ucmenu:dhtmlmenucontrol id="DHTMLMenuControl1" runat="server" ImagePath="../Images/" TypeMenu="Obbligazioni"></ucmenu:dhtmlmenucontrol></TD>
			</TR>
		</TABLE>
	</body>
</HTML>
