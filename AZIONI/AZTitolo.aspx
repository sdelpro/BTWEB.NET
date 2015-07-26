<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZTitolo.aspx.vb" Inherits="BTWEB.NET.AZTitolo" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" background="..\Images\sfMenuidx.jpg" bottomMargin="0"
		leftMargin="0" topMargin="0" rightMargin="0">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table2" style="Z-INDEX: 112; LEFT: 8px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="98%" border="0">
				<TR>
					<TD vAlign="middle">
						<ucmenu:dhtmlmenucontrol id=Dhtmlmenucontrol4 runat="server" TypeMenu="TopMenuAZ" ImagePath="Images/" Visible='<%# iif(Session("LOGIN_VALIDATE") = "ABILITATO_BT" ,"true","false") %>'>
						</ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:table id="tbTitolo" style="Z-INDEX: 113; LEFT: 0px; POSITION: absolute; TOP: 136px" runat="server"
				Width="100%" Height="80px">
				<asp:TableRow Width="100%" BorderWidth="1px" Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" ColumnSpan="1" Font-Size="12px"
						Font-Names="Tahoma" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="2" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" ColumnSpan="1" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="4" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Width="100%" Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" ColumnSpan="1" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="2" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" ColumnSpan="1" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="1" BorderColor="Black"></asp:TableCell>
					<asp:TableCell></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" ColumnSpan="2" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Double" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
					<asp:TableCell></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Double" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Double" BorderWidth="1px" BackColor="Transparent" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Double" BorderWidth="1px" BackColor="Transparent" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Double" BorderWidth="1px" BackColor="Transparent" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell Width="12.5%"></asp:TableCell>
					<asp:TableCell Width="12.5%"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Double" BorderWidth="1px" BackColor="Transparent" ColumnSpan="2" Width="12.5%"
						BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Width="12.5%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Double" BorderWidth="1px" BackColor="Transparent" ColumnSpan="2" Width="12.5%"
						BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
			</asp:table>
			<TABLE id="Table1" style="Z-INDEX: 111; LEFT: 8px; POSITION: absolute; TOP: 100px" cellSpacing="0"
				cols="2" cellPadding="0" width="98%" border="0">
				<TR>
					<TD style="WIDTH: 232px">
						<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" TypeMenu="RicercheAzioni" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol>
						<asp:label id="lblTitoloForm" runat="server" Height="16px" Width="128px" BackColor="Transparent"
							Font-Names="Tahoma" Font-Size="12px" Font-Bold="True" ForeColor="Lime">ANAGRAFICA TITOLI</asp:label></TD>
					<TD style="HEIGHT: 30px" align="right">
						<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol1" runat="server" TypeMenu="Azioni" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
				</TR>
			</TABLE>
			<asp:image id="Image1" style="Z-INDEX: 110; LEFT: 16px; POSITION: absolute; TOP: 32px" runat="server"
				Height="44px" Width="352px" ImageUrl="..\Images\Logo.gif"></asp:image>
			<asp:label id="lblLastLogin" style="Z-INDEX: 107; LEFT: 6px; POSITION: absolute; TOP: 80px"
				runat="server" Font-Size="12px" Font-Names="Tahoma" Height="16px" Width="360px" BackColor="Transparent">Ultima connessione</asp:label>
		</form>
	</body>
</HTML>
