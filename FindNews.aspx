<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="FindNews.aspx.vb" Inherits="BTWEB.NET.FindNews"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" background="Images\sfHome.JPG">
		<FORM id="Form1" method="post" runat="server">
			<TABLE id="Table4" style="Z-INDEX: 109; LEFT: 8px; POSITION: absolute; TOP: 80px; HEIGHT: 8px"
				cellSpacing="0" cellPadding="0" width="99%" border="0">
				<TR>
					<TD>
						<asp:label id="lblLastLogin" runat="server" Height="16px" Width="360px" Font-Size="12px" Font-Names="Tahoma"
							BackColor="Transparent">Ultima connessione</asp:label>
					<TD align="right"></TD>
					</TD></TR>
			</TABLE>
			<asp:label id="lbUpd" style="Z-INDEX: 139; LEFT: 320px; POSITION: absolute; TOP: 144px" runat="server"
				Font-Names="Tahoma" Font-Size="18px" Width="400px" Height="24px">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
			<asp:image id="Image1" style="Z-INDEX: 117; LEFT: 8px; POSITION: absolute; TOP: 32px" runat="server"
				Width="352px" Height="44px" ImageUrl="Images\Logo.gif"></asp:image>
			<asp:label id="lbHelpDate" style="Z-INDEX: 116; LEFT: 24px; POSITION: absolute; TOP: 256px"
				runat="server" Height="16px" Width="392px" Font-Size="8pt" Font-Names="Tahoma" BackColor="Transparent"
				ForeColor="#00547d" Font-Bold="True" Font-Italic="True">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</asp:label>
			<asp:label id="Label3" style="Z-INDEX: 107; LEFT: 24px; POSITION: absolute; TOP: 280px" runat="server"
				Height="16px" Width="92px" Font-Size="8pt" Font-Names="Tahoma" BackColor="Transparent"
				ForeColor="Black">DATA NEWS</asp:label>
			<asp:label id="lblUser" style="Z-INDEX: 115; LEFT: 24px; POSITION: absolute; TOP: 184px" runat="server"
				Height="16px" Width="128px" Font-Size="8pt" Font-Names="Tahoma" BackColor="Transparent"
				ForeColor="Black"> ARGOMENTO NEWS</asp:label>
			<asp:label id="Label10" style="Z-INDEX: 113; LEFT: 256px; POSITION: absolute; TOP: 280px" runat="server"
				Height="16px" Width="4px" Font-Size="8pt" Font-Names="Tahoma" BackColor="Transparent" ForeColor="Black">A</asp:label>
			<asp:label id="Label9" style="Z-INDEX: 112; LEFT: 128px; POSITION: absolute; TOP: 280px" runat="server"
				Height="16px" Width="24px" Font-Size="8pt" Font-Names="Tahoma" BackColor="Transparent"
				ForeColor="Black">DA</asp:label>
			<asp:textbox id="txtDtA" style="Z-INDEX: 110; LEFT: 280px; POSITION: absolute; TOP: 280px" runat="server"
				Height="20px" Width="85px" BorderStyle="Groove" tabIndex="3"></asp:textbox>
			<asp:textbox id="txtDtDa" style="Z-INDEX: 108; LEFT: 160px; POSITION: absolute; TOP: 280px" runat="server"
				Height="20px" Width="85px" BorderStyle="Groove" tabIndex="2"></asp:textbox>
			<asp:label id="Label2" style="Z-INDEX: 104; LEFT: 24px; POSITION: absolute; TOP: 228px" runat="server"
				Height="16px" Width="120px" Font-Size="8pt" Font-Names="Tahoma" BackColor="Transparent"
				ForeColor="Black"> TESTO NEWS</asp:label>
			<asp:dropdownlist id="cmbTipoNews" style="Z-INDEX: 103; LEFT: 160px; POSITION: absolute; TOP: 184px"
				runat="server" Height="16px" Width="256px"></asp:dropdownlist>
			<asp:button id="btnFind" style="Z-INDEX: 100; LEFT: 160px; POSITION: absolute; TOP: 328px" runat="server"
				Height="24px" Width="200px" BackColor="Gainsboro" BorderColor="Transparent" BorderStyle="Groove"
				Text="Ricerca" tabIndex="4"></asp:button>
			<asp:textbox id="txtTesto" style="Z-INDEX: 106; LEFT: 160px; POSITION: absolute; TOP: 224px"
				runat="server" Height="20px" Width="256px" BorderStyle="Groove" tabIndex="1"></asp:textbox>
			<asp:label id="lbHelp1" style="Z-INDEX: 111; LEFT: 16px; POSITION: absolute; TOP: 416px" runat="server"
				Height="16px" Width="456px" Font-Size="9pt" Font-Names="Tahoma" BackColor="Transparent"
				ForeColor="#00547d" Font-Italic="True">La ricerca può essere effettuata per argomento, per testo (anche solo parte del testo), per DATA NEWS (range temporale tra due date.</asp:label>
			<asp:label id="Label1" style="Z-INDEX: 114; LEFT: 16px; POSITION: absolute; TOP: 144px" runat="server"
				Height="24px" Width="272px" Font-Size="18px" Font-Names="Tahoma">INFORMAZIONI VARIE</asp:label>
			<TABLE id="Table2" style="Z-INDEX: 105; LEFT: 0px; POSITION: absolute; TOP: 104px" cellSpacing="0"
				cols="2" cellPadding="0" width="99%" border="0">
				<TR>
					<TD style="WIDTH: 428px" vAlign="top" align="left" width="428"></TD>
					<TD align="right" width="60%" colSpan="1" rowSpan="1"></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 4px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD vAlign="middle">
						<ucmenu:dhtmlmenucontrol id=Dhtmlmenucontrol4 runat="server" TypeMenu="TopMenu" ImagePath="Images/" Visible='<%# iif(Session("LOGIN_VALIDATE") = "ABILITATO_BT" ,"true","false") %>'>
						</ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
		</FORM>
	</body>
</HTML>
