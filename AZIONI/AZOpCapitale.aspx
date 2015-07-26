<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZOpCapitale.aspx.vb" Inherits="BTWEB.NET.AZOpCapitale"%>
<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
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
			<asp:image id="Image1" style="Z-INDEX: 110; LEFT: 0px; POSITION: absolute; TOP: 32px" runat="server"
				ImageUrl="..\Images\Logo.gif" Height="44px" Width="352px"></asp:image>
			<TABLE id="Table2" style="Z-INDEX: 112; LEFT: 8px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="98%" border="0">
				<TR>
					<TD vAlign="middle">
						<ucmenu:dhtmlmenucontrol id=Dhtmlmenucontrol4 runat="server" TypeMenu="TopMenuAZ" ImagePath="Images/" Visible='<%# iif(Session("LOGIN_VALIDATE") = "ABILITATO_BT" ,"true","false") %>'>
						</ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<TABLE id="Table1" style="Z-INDEX: 111; LEFT: 8px; POSITION: absolute; TOP: 100px; HEIGHT: 30px"
				cellSpacing="0" cols="2" cellPadding="0" width="98%" border="0">
				<TR>
					<TD style="WIDTH: 238px">
						<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" TypeMenu="RicercheAzioni" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol>
						<asp:label id="lblTitoloForm" runat="server" Width="168px" Height="16px" Font-Names="Tahoma"
							Font-Size="12px" BackColor="Transparent" ForeColor="Lime" Font-Bold="True">OPERAZIONI SUL CAPITALE</asp:label></TD>
					<TD style="HEIGHT: 30px" align="right">
						<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol1" runat="server" TypeMenu="Azioni" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
				</TR>
			</TABLE>
			<asp:label id="lblLastLogin" style="Z-INDEX: 107; LEFT: 6px; POSITION: absolute; TOP: 80px"
				runat="server" Height="16px" Width="360px" BackColor="Transparent" Font-Size="12px" Font-Names="Tahoma">Ultima connessione</asp:label>
			<asp:table id="tbOp" style="Z-INDEX: 109; LEFT: 0px; POSITION: absolute; TOP: 136px" runat="server"
				Height="57" Width="100%" Font-Size="12px" Font-Names="Tahoma">
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" ColumnSpan="7" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell></asp:TableCell>
					<asp:TableCell></asp:TableCell>
					<asp:TableCell></asp:TableCell>
					<asp:TableCell></asp:TableCell>
					<asp:TableCell></asp:TableCell>
					<asp:TableCell></asp:TableCell>
					<asp:TableCell></asp:TableCell>
					<asp:TableCell></asp:TableCell>
				</asp:TableRow>
			</asp:table>
		</form>
	</body>
</HTML>
