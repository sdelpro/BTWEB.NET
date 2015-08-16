<%@ Page CodeBehind="OBRegolamento.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="BTWEB.NET.OBRegolamento" %>
<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<meta content="False" name="vs_snapToGrid">
		<meta content="False" name="vs_showGrid">
	</HEAD>
	<body bottomMargin="0" bgColor="white" leftMargin="0" background="..\Images\sfMenuidx.jpg"
		topMargin="0" rightMargin="0" ms_positioning="GridLayout">
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
				<asp:TableCell BackColor="Transparent" ForeColor="#00547d" ColumnSpan="8" Width="100%" BorderColor="Black"></asp:TableCell>
			</asp:TableRow>
			<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
				<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="8" Width="100%"
					Font-Size="14px" Font-Names="Courier New" BorderColor="Black"></asp:TableCell>
			</asp:TableRow>
		</asp:table>
		<TABLE id="Table2" style="Z-INDEX: 105; LEFT: 4px; WIDTH: 962px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
			cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
			<TR>
				<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" ImagePath="../Images/" TypeMenu="TopMenuOB"></ucmenu:dhtmlmenucontrol></TD>
				<TD style="HEIGHT: 30px" align="right"></TD>
			</TR>
		</TABLE>
		<asp:image id="Image1" style="Z-INDEX: 104; LEFT: 4px; POSITION: absolute; TOP: 32px" runat="server"
			Height="44px" Width="352px" ImageUrl="..\Images\Logo.gif"></asp:image><asp:label id="lblLastLogin" style="Z-INDEX: 103; LEFT: 4px; POSITION: absolute; TOP: 80px"
			runat="server" Font-Size="12px" Font-Names="Tahoma" Height="16px" Width="360px" BackColor="Transparent">Ultima connessione</asp:label>
		<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 99px" cellSpacing="0"
			cols="2" cellPadding="0" width="100%" border="0">
			<TR>
				<TD style="HEIGHT: 30px"><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" ImagePath="../Images/" TypeMenu="RicercheObbligazioni"></ucmenu:dhtmlmenucontrol>
					<asp:label id="lblTIPORICERCA" Width="288px" Height="16px" Font-Names="Tahoma" Font-Size="12px"
						runat="server" BackColor="Transparent" ForeColor="Lime" Font-Bold="True">TIPO RICERCA EFFETTUATA</asp:label></TD>
				<TD style="HEIGHT: 30px" align="right"><ucmenu:dhtmlmenucontrol id="DHTMLMenuControl1" runat="server" ImagePath="../Images/" TypeMenu="Obbligazioni"></ucmenu:dhtmlmenucontrol></TD>
			</TR>
		</TABLE>
	</body>
</HTML>
