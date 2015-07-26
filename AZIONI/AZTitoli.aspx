<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZTitoli.aspx.vb" Inherits="BTWEB.NET.AZTitoli"%>
<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
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
			<asp:image id="Image1" style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 32px" runat="server"
				ImageUrl="..\Images\Logo.gif" Height="44px" Width="352px"></asp:image><asp:datagrid id="dtgAZIO" style="Z-INDEX: 106; LEFT: 0px; POSITION: absolute; TOP: 200px" runat="server"
				Width="100%" Font-Names="Tahoma" Font-Size="12px" BackColor="#FFFFFF" BorderStyle="None" ForeColor="#FFFFFF" AutoGenerateColumns="False" PageSize="40" CellPadding="1"
				BorderWidth="1px" BorderColor="Black" CellSpacing="3">
				<SelectedItemStyle Font-Bold="True" ForeColor="Black" BackColor="LemonChiffon"></SelectedItemStyle>
				<ItemStyle ForeColor="Black" BackColor="White"></ItemStyle>
				<HeaderStyle Font-Size="12px" Font-Names="Tahoma" Wrap="False" HorizontalAlign="Left" ForeColor="Black"
					BackColor="Gainsboro"></HeaderStyle>
				<FooterStyle ForeColor="White" BackColor="DarkGray"></FooterStyle>
				<PagerStyle NextPageText="&amp;gt; Avanti" Font-Size="12px" Font-Bold="True" PrevPageText="&amp;lt; Indietro"
					HorizontalAlign="Right" ForeColor="White" Position="Top" BackColor="#454582" Mode="NumericPages"></PagerStyle>
			</asp:datagrid>
			<TABLE id="Table2" style="Z-INDEX: 105; LEFT: 8px; POSITION: absolute; TOP: 0px; HEIGHT: 30px"
				cellSpacing="0" cols="2" cellPadding="0" width="98%" border="0">
				<TR>
					<TD style="HEIGHT: 30px" vAlign="middle"><ucmenu:dhtmlmenucontrol id=Dhtmlmenucontrol4 
       runat="server" TypeMenu="TopMenuAZ" 
      ImagePath="Images/" 
      Visible='<%# iif(Session("LOGIN_VALIDATE") = "ABILITATO_BT" ,"true","false") %>'></ucmenu:dhtmlmenucontrol></TD>
				</TR>
			</TABLE>
			<TABLE id="Table1" style="Z-INDEX: 104; LEFT: 1px; POSITION: absolute; TOP: 100px; HEIGHT: 30px"
				cellSpacing="0" cols="2" cellPadding="0" width="98%" border="0">
				<TR>
					<TD style="WIDTH: 231px"><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" TypeMenu="RicercheAzioni" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol><asp:label id="lblTitoloForm" runat="server" Height="16px" Width="128px" Font-Names="Tahoma"
							Font-Size="12px" BackColor="Transparent" ForeColor="Lime" Font-Bold="True">TITOLI SOCIETA'</asp:label></TD>
					<TD style="HEIGHT: 30px" align="right"><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol1" runat="server" TypeMenu="Titoli" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
				</TR>
			</TABLE>
			<asp:table id="tbCarPrinc" style="Z-INDEX: 103; LEFT: 0px; POSITION: absolute; TOP: 136px"
				runat="server" Height="57" Width="100%" Font-Names="Tahoma" Font-Size="14px">
				<asp:TableRow Width="100%" Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Width="25%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" ColumnSpan="6" Width="75%" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Width="100%" Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Gainsboro" Width="25%" BorderColor="Black"></asp:TableCell>
					<asp:TableCell BorderStyle="Solid" BorderWidth="1px" BackColor="Transparent" Width="75%" BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow Width="100%" Font-Size="12px" Font-Names="Tahoma">
					<asp:TableCell BorderColor="Black"></asp:TableCell>
				</asp:TableRow>
			</asp:table><asp:label id="lblLastLogin" style="Z-INDEX: 100; LEFT: 6px; POSITION: absolute; TOP: 80px"
				runat="server" Height="16px" Width="360px" Font-Names="Tahoma" Font-Size="12px" BackColor="Transparent">Ultima connessione</asp:label></form>
	</body>
</HTML>
