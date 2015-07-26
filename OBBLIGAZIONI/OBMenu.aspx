<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBMenu.aspx.vb" Inherits="BTWEB.NET.OBMenu" errorPage="error.aspx"%>
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
	<body background="..\Images\sfHome.JPG" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table5" style="Z-INDEX: 103; LEFT: 8px; WIDTH: 100%; POSITION: absolute; TOP: 140px; HEIGHT: 88px"
				cellSpacing="10" cellPadding="0" width="100%" align="center" border="0">
				<TR>
					<TD align="center"><asp:linkbutton id="lbl1" runat="server" Height="16px" Width="298px" Font-Names="Verdana" ForeColor="Navy"
							Font-Size="18px">CARATTERISTICHE PRINCIPALI</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 20px" align="center"><asp:linkbutton id="lbl2" runat="server" Height="16px" Width="269px" Font-Names="Verdana" ForeColor="Navy"
							Font-Size="18px">OBBLIGAZIONI IN SCADENZA</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD align="center"><asp:linkbutton id="lbl3" runat="server" Height="16px" Width="252px" Font-Names="Verdana" ForeColor="Navy"
							Font-Size="18px">AGGIORNAMENTO CEDOLE</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD align="center"><asp:linkbutton id="lbl4" runat="server" Height="16px" Width="259px" Font-Names="Verdana" ForeColor="Navy"
							Font-Size="18px">CEDOLE IN SCADENZA</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD align="center">
						<asp:linkbutton id="lbl5" runat="server" Height="16px" Width="259px" Font-Names="Verdana" ForeColor="Navy"
							Font-Size="18px">PIANI DI AMMORTAMENTO</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD align="center"><asp:linkbutton id="lbl6" runat="server" Height="16px" Width="259px" Font-Names="Verdana" ForeColor="Navy"
							Font-Size="18px">NEWS</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD align="center"><asp:linkbutton id="lbl7" runat="server" Height="16px" Width="278px" Font-Names="Verdana" ForeColor="Navy"
							Font-Size="18px">OBBLIGAZIONI CONVERTIBILI</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD align="center">
						<asp:linkbutton id="lbl8" runat="server" Height="16px" Width="259px" Font-Names="Verdana" ForeColor="Navy"
							Font-Size="18px"> REGOLAMENTI</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD align="center">
						<asp:linkbutton id="lbl9" runat="server" Height="16px" Width="259px" Font-Names="Verdana" ForeColor="Navy"
							Font-Size="18px">MAGGIORAZIONI</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD align="center"><asp:linkbutton id="lbl10" runat="server" Height="16px" Width="259px" Font-Names="Verdana" ForeColor="Navy"
							Font-Size="18px"> QUOTAZIONI</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD align="center"><asp:linkbutton id="lbl11" runat="server" Height="16px" Width="259px" Font-Names="Verdana" ForeColor="Navy"
							Font-Size="18px" Visible="False">QUOTAZIONI</asp:linkbutton></TD>
				</TR>
				<TR>
					<TD align="center">
						<asp:linkbutton id="lbl12" runat="server" Height="16px" Width="259px" Font-Names="Verdana" ForeColor="Navy"
							Visible="False" Font-Size="18px"> OBBLIGAZIONI ESTRATTE</asp:linkbutton></TD>
				</TR>
			</TABLE>
			<TABLE id="Table1" style="Z-INDEX: 110; LEFT: 4px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD vAlign="middle">
						<ucmenu:dhtmlmenucontrol id=Dhtmlmenucontrol4 runat="server" Visible='<%# iif(Session("LOGIN_VALIDATE") = "ABILITATO_BT" ,"true","false") %>' TypeMenu="TopMenuOB" ImagePath="Images/">
						</ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:image id="Image1" style="Z-INDEX: 106; LEFT: 4px; POSITION: absolute; TOP: 32px" runat="server"
				Width="352px" Height="44px" ImageUrl="..\Images\Logo.gif"></asp:image>&nbsp;
			<TABLE id="Table3" style="Z-INDEX: 102; LEFT: 60px; WIDTH: 348px; POSITION: absolute; TOP: 364px; HEIGHT: 84px"
				cellSpacing="1" cellPadding="1" width="300" border="1">
				<TR>
				</TR>
			</TABLE>
			<asp:Label id="lblLastLogin" style="Z-INDEX: 104; LEFT: 8px; POSITION: absolute; TOP: 80px"
				runat="server" Font-Names="Tahoma" Width="360px" Height="16px" Font-Size="12px" BackColor="Transparent">Ultima connessione</asp:Label>
		</form>
	</body>
</HTML>
