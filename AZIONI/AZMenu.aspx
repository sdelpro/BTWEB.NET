<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZMenu.aspx.vb" Inherits="BTWEB.NET.AZMenu"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" background="..\Images\sfHome.JPG">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table5" style="Z-INDEX: 111; LEFT: 16px; WIDTH: 100%; POSITION: absolute; TOP: 136px; HEIGHT: 88px"
				cellSpacing="10" cellPadding="0" width="100%" align="center" border="0">
				<TR>
					<TD align="center">
						<asp:linkbutton id="lbl1" runat="server" Height="16px" Width="269px" Font-Names="Verdana" ForeColor="Navy"
							Font-Size="18px">ANAGRAFE SOCIETA'</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 20px" align="center">
						<asp:linkbutton id="lbl2" runat="server" Height="16px" Width="249px" Font-Names="Verdana" ForeColor="Navy"
							Font-Size="18px"> TITOLI SOCIETA'</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD align="center">
						<asp:linkbutton id="lbl3" runat="server" Height="16px" Width="260px" Font-Names="Verdana" ForeColor="Navy"
							Font-Size="18px">CONVOCAZIONI ASSEMBLEE</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD align="center">
						<asp:linkbutton id="lbl4" runat="server" Height="16px" Width="259px" Font-Names="Verdana" ForeColor="Navy"
							Font-Size="18px">CDA</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD align="center">
						<asp:linkbutton id="lbl5" runat="server" Height="16px" Width="259px" Font-Names="Verdana" ForeColor="Navy"
							Font-Size="18px">DIVIDENDI</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD align="center">
						<asp:linkbutton id="lbl6" runat="server" Height="16px" Width="259px" Font-Names="Verdana" ForeColor="Navy"
							Font-Size="18px">NEWS AZIONI</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD align="center">
						<asp:linkbutton id="lbl7" runat="server" Height="16px" Width="259px" Font-Names="Verdana" ForeColor="Navy"
							Font-Size="18px">AZIONI CONVERTIBILI</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD align="center">
						<asp:linkbutton id="lbl8" runat="server" Height="16px" Width="259px" Font-Names="Verdana" ForeColor="Navy"
							Font-Size="18px"> OPERAZIONI SUL CAPITALE</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD align="center">
						<asp:linkbutton id="lbl9" runat="server" Height="16px" Width="366px" Font-Names="Verdana" ForeColor="Navy"
							Font-Size="18px">TABELLA WARRANT IN CIRCOLAZIONE</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD align="center">
						<asp:linkbutton id="lbl10" runat="server" Height="16px" Width="259px" Font-Names="Verdana" ForeColor="Navy"
							Font-Size="18px">QUOTAZIONI</asp:linkbutton></TD>
				</TR>
			</TABLE>
			<TABLE id="Table1" style="Z-INDEX: 110; LEFT: 4px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD vAlign="middle">
						<ucmenu:dhtmlmenucontrol id=Dhtmlmenucontrol4 runat="server" Visible='<%# iif(Session("LOGIN_VALIDATE") = "ABILITATO_BT" ,"true","false") %>' TypeMenu="TopMenuAZ" ImagePath="Images/">
						</ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:image id="Image1" style="Z-INDEX: 106; LEFT: 4px; POSITION: absolute; TOP: 32px" runat="server"
				Height="44px" Width="352px" ImageUrl="..\Images\Logo.gif"></asp:image>
			<TABLE id="Table3" style="Z-INDEX: 102; LEFT: 60px; WIDTH: 348px; POSITION: absolute; TOP: 364px; HEIGHT: 84px"
				cellSpacing="1" cellPadding="1" width="300" border="1">
				<TR>
				</TR>
			</TABLE>
			<asp:Label id="lblLastLogin" style="Z-INDEX: 104; LEFT: 8px; POSITION: absolute; TOP: 80px"
				runat="server" Height="16px" Width="360px" Font-Names="Tahoma" Font-Size="12px" BackColor="Transparent">Ultima connessione</asp:Label>
		</form>
	</body>
</HTML>
