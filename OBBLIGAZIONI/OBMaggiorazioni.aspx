<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page CodeBehind="OBMaggiorazioni.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="BTWEB.NET.OBMaggiorazioni" %>
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta content="False" name="vs_snapToGrid">
		<meta content="False" name="vs_showGrid">
	</HEAD>
	<body bgColor="white" ms_positioning="GridLayout" bottomMargin="0" leftMargin="0" topMargin="0"
		rightMargin="0" background="..\Images\sfMenuidx.jpg">
		<asp:table id="tbCarPrinc" Width="100%" Height="57" Font-Names="Tahoma" Font-Size="14px" runat="server"
			style="Z-INDEX: 100; LEFT: 0px; POSITION: absolute; TOP: 136px">
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
				<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" ForeColor="Transparent"
					ColumnSpan="1" Width="12.5%" BorderColor="Black"></asp:TableCell>
				<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="1" Width="12.5%"
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
				<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" ColumnSpan="4" Width="50%"
					BorderColor="Black"></asp:TableCell>
			</asp:TableRow>
		</asp:table>
		<asp:label id="lblNoRecord" style="Z-INDEX: 106; LEFT: 14px; POSITION: absolute; TOP: 325px"
			runat="server" Font-Size="Medium" Font-Names="Tahoma" Height="23px" Width="360px" BackColor="Transparent"
			Font-Bold="True" ForeColor="Red" Visible="False" BorderColor="Transparent">Nessuna maggiorazione trovata</asp:label>
		<TABLE id="Table2" style="Z-INDEX: 105; LEFT: 4px; WIDTH: 962px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
			cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
			<TR>
				<TD>
					<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" TypeMenu="TopMenuOB" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
				<TD style="HEIGHT: 30px" align="right"></TD>
			</TR>
		</TABLE>
		<asp:image id="Image1" style="Z-INDEX: 104; LEFT: 4px; POSITION: absolute; TOP: 32px" runat="server"
			Height="44px" Width="352px" ImageUrl="..\Images\Logo.gif"></asp:image>
		<asp:Label id="lblLastLogin" style="Z-INDEX: 103; LEFT: 10px; POSITION: absolute; TOP: 79px"
			runat="server" Font-Size="12px" Font-Names="Tahoma" Height="16px" Width="360px" BackColor="Transparent">Ultima connessione</asp:Label>
		<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 99px" cellSpacing="0"
			cols="2" cellPadding="0" width="98%" border="0">
			<TR>
				<TD>
					<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" ImagePath="../Images/" TypeMenu="RicercheObbligazioni"></ucmenu:dhtmlmenucontrol>
					<asp:label id="lblTIPORICERCA" runat="server" Font-Size="12px" Font-Names="Tahoma" Height="16px"
						Width="288px" BackColor="Transparent" ForeColor="Lime" Font-Bold="True">TIPO RICERCA EFFETTUATA</asp:label></TD>
				<TD style="HEIGHT: 30px" align="right">
					<ucmenu:dhtmlmenucontrol id="DHTMLMenuControl1" runat="server" ImagePath="../Images/" TypeMenu="Obbligazioni"></ucmenu:dhtmlmenucontrol></TD>
			</TR>
		</TABLE>
	</body>
</HTML>
