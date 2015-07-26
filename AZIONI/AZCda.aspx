<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZCda.aspx.vb" Inherits="BTWEB.NET.AZCda"%>
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
			<asp:image id="Image1" style="Z-INDEX: 110; LEFT: 8px; POSITION: absolute; TOP: 32px" runat="server"
				Width="352px" Height="44px" ImageUrl="..\Images\Logo.gif"></asp:image>
			<TABLE id="Table2" style="Z-INDEX: 105; LEFT: 8px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="98%" border="0">
				<TR>
					<TD vAlign="middle"><ucmenu:dhtmlmenucontrol 
      id=Dhtmlmenucontrol1 runat="server" 
      Visible='<%# iif(Session("LOGIN_VALIDATE") = "ABILITATO_BT" ,"true","false") %>' 
      ImagePath="Images/" TypeMenu="TopMenuAZ"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<TABLE id="Table1" style="Z-INDEX: 111; LEFT: 8px; POSITION: absolute; TOP: 100px; HEIGHT: 32px"
				cellSpacing="0" cols="2" cellPadding="0" width="98%" border="0">
				<TR>
					<TD></TD>
					<TD style="WIDTH: 234px"><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" ImagePath="../Images/" TypeMenu="RicercheAzioni"></ucmenu:dhtmlmenucontrol><asp:label id="lblTitoloForm" runat="server" Width="88px" Height="16px" Font-Bold="True" ForeColor="Lime"
							BackColor="Transparent" Font-Size="12px" Font-Names="Tahoma">CDA</asp:label></TD>
					<TD style="HEIGHT: 30px" align="right"><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" ImagePath="../Images/" TypeMenu="Azioni"></ucmenu:dhtmlmenucontrol></TD>
				</TR>
			</TABLE>
			<asp:label id="lblLastLogin" style="Z-INDEX: 107; LEFT: 8px; POSITION: absolute; TOP: 80px"
				runat="server" Width="360px" Height="16px" BackColor="Transparent" Font-Size="12px" Font-Names="Tahoma">Ultima connessione</asp:label><asp:table id="tbCda" style="Z-INDEX: 109; LEFT: 0px; POSITION: absolute; TOP: 144px" runat="server"
				Width="100%" Height="57" Font-Size="12px" Font-Names="Tahoma">
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" ColumnSpan="2" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" ColumnSpan="7" BorderColor="Black"></asp:TableCell>
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
			</asp:table></form>
	</body>
</HTML>
