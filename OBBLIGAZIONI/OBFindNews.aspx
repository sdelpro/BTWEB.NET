<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBFindNews.aspx.vb" Inherits="BTWEB.NET.OBFindNews" %>
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
			<asp:label id="lblUser" style="Z-INDEX: 100; LEFT: 16px; POSITION: absolute; TOP: 188px" runat="server"
				Height="16px" Width="72px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black"> DESCRIZIONE</asp:label>
			<asp:label id="Label5" style="Z-INDEX: 125; LEFT: 16px; POSITION: absolute; TOP: 264px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="72px"
				Height="16px">TESTO NEWS</asp:label>
			<asp:textbox id="txtNews" style="Z-INDEX: 124; LEFT: 200px; POSITION: absolute; TOP: 264px" tabIndex="4"
				runat="server" Width="192px" Height="20px" BorderStyle="Groove"></asp:textbox>
			<asp:label id="lbUpd" style="Z-INDEX: 123; LEFT: 320px; POSITION: absolute; TOP: 144px" runat="server"
				Font-Names="Tahoma" Font-Size="18px" Width="400px" Height="24px">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label><asp:textbox id="txtIsincode" style="Z-INDEX: 122; LEFT: 200px; POSITION: absolute; TOP: 224px"
				tabIndex="3" runat="server" Height="20px" Width="112px" BorderStyle="Groove"></asp:textbox><asp:label id="lbHelp1" style="Z-INDEX: 121; LEFT: 24px; POSITION: absolute; TOP: 400px" runat="server"
				Height="16px" Width="456px" BackColor="Transparent" Font-Size="9pt" Font-Names="Tahoma" ForeColor="#0000C0" Font-Italic="True">• La ricerca può essere richiesta per descrizione (anche solo parte del nome), per codice ISIN o UIC, per testo news oppure all’interno del range temporale tra due date.</asp:label><asp:label id="lbHelp3" style="Z-INDEX: 118; LEFT: 24px; POSITION: absolute; TOP: 448px" runat="server"
				Height="16px" Width="456px" BackColor="Transparent" Font-Size="9pt" Font-Names="Tahoma" ForeColor="#0000C0" Font-Italic="True">• Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata.</asp:label><asp:label id="lbHelp4" style="Z-INDEX: 119; LEFT: 24px; POSITION: absolute; TOP: 488px" runat="server"
				Height="16px" Width="456px" BackColor="Transparent" Font-Size="9pt" Font-Names="Tahoma" ForeColor="#0000C0" Font-Italic="True">• La ricerca delle NEWS è sempre estesa anche ai Titoli non più attivi.</asp:label><asp:checkbox id="ckStor" style="Z-INDEX: 120; LEFT: 152px; POSITION: absolute; TOP: 608px" runat="server"
				Height="16px" Width="200px" Font-Size="8pt" Font-Names="Tahoma" Text="RICERCA ANCHE NELLO STORICO" Visible="False"></asp:checkbox><asp:label id="lbHelpDate" style="Z-INDEX: 116; LEFT: 16px; POSITION: absolute; TOP: 296px"
				runat="server" Height="16px" Width="396px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="#0000C0" Font-Italic="True" Font-Bold="True">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</asp:label>
			<TABLE id="Table2" style="Z-INDEX: 115; LEFT: 4px; WIDTH: 962px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" ImagePath="../Images/" TypeMenu="TopMenuOB"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:image id="Image1" style="Z-INDEX: 114; LEFT: 4px; POSITION: absolute; TOP: 32px" runat="server"
				Height="44px" Width="352px" ImageUrl="..\Images\Logo.gif"></asp:image><asp:label id="lblLastLogin" style="Z-INDEX: 113; LEFT: 8px; POSITION: absolute; TOP: 80px"
				runat="server" Height="16px" Width="360px" BackColor="Transparent" Font-Size="12px" Font-Names="Tahoma">Ultima connessione</asp:label>
			<TABLE id="Table1" style="Z-INDEX: 112; LEFT: 8px; POSITION: absolute; TOP: 104px" cellSpacing="0"
				cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" ImagePath="../Images/" TypeMenu="RicercheObbligazioni"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:label id="Label6" style="Z-INDEX: 109; LEFT: 296px; POSITION: absolute; TOP: 320px" runat="server"
				Height="16px" Width="8px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">A</asp:label><asp:textbox id="txtDtInA" style="Z-INDEX: 110; LEFT: 312px; POSITION: absolute; TOP: 320px"
				tabIndex="6" runat="server" Height="20px" Width="85px" BorderStyle="Groove"></asp:textbox><asp:textbox id="txtDtInDa" style="Z-INDEX: 107; LEFT: 200px; POSITION: absolute; TOP: 320px"
				tabIndex="5" runat="server" Height="20px" Width="85px" BorderStyle="Groove"></asp:textbox><asp:label id="Label4" style="Z-INDEX: 108; LEFT: 160px; POSITION: absolute; TOP: 320px" runat="server"
				Height="16px" Width="24px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">DA</asp:label><asp:label id="Label3" style="Z-INDEX: 106; LEFT: 16px; POSITION: absolute; TOP: 320px" runat="server"
				Height="16px" Width="104px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black"> DATA NEWS</asp:label><asp:label id="Label2" style="Z-INDEX: 105; LEFT: 16px; POSITION: absolute; TOP: 232px" runat="server"
				Height="16px" Width="144px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">ISINCODE o UIC</asp:label><asp:dropdownlist id="cmbFind" style="Z-INDEX: 104; LEFT: 112px; POSITION: absolute; TOP: 184px" tabIndex="1"
				runat="server" Height="16px" Width="88px" Font-Names="Tahoma">
				<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
				<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
				<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
			</asp:dropdownlist><asp:textbox id="txtFind" style="Z-INDEX: 102; LEFT: 200px; POSITION: absolute; TOP: 184px" tabIndex="2"
				runat="server" Height="20px" Width="192px" BorderStyle="Groove"></asp:textbox><asp:button id="btnFind" style="Z-INDEX: 103; LEFT: 200px; POSITION: absolute; TOP: 352px" tabIndex="7"
				runat="server" Height="24px" Width="197px" BackColor="Gainsboro" BorderStyle="Groove" Text="Ricerca" BorderColor="Transparent"></asp:button><asp:label id="Label1" style="Z-INDEX: 111; LEFT: 16px; POSITION: absolute; TOP: 144px" runat="server"
				Height="24px" Width="264px" Font-Size="18px" Font-Names="Tahoma">NEWS</asp:label></form>
	</body>
</HTML>
