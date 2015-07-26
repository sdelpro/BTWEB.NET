<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBFindScad.aspx.vb" Inherits="BTWEB.NET.OBFindScad"%>
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
			<asp:label id="Label10" style="Z-INDEX: 110; LEFT: 304px; POSITION: absolute; TOP: 304px" runat="server"
				Height="16px" Width="12px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">A</asp:label>
			<asp:label id="lbUpd" style="Z-INDEX: 134; LEFT: 320px; POSITION: absolute; TOP: 144px" runat="server"
				Font-Names="Tahoma" Font-Size="18px" Width="400px" Height="24px">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
			<asp:label id="lbHelp5" style="Z-INDEX: 132; LEFT: 16px; POSITION: absolute; TOP: 536px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px"
				Height="16px" Font-Italic="True">•Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata</asp:label>
			<asp:label id="lbHelp4" style="Z-INDEX: 129; LEFT: 16px; POSITION: absolute; TOP: 496px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px"
				Height="16px" Font-Italic="True">• Spuntando ‘RICERCA ANCHE NELLO STORICO’ si aggiungono automaticamente anche i Titoli storicizzati (non più attivi). Questa opzione può rallentare il lavoro.</asp:label>
			<asp:label id="lbHelp3" style="Z-INDEX: 126; LEFT: 16px; POSITION: absolute; TOP: 456px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px"
				Height="16px" Font-Italic="True">• Premendo il solo pulsante ‘Ricerca’ senza avere effettuato alcuna selezione si ottiene l’elenco di TUTTI i Titoli Obbligazionari attivi presenti.</asp:label>
			<asp:label id="lbHelp1" style="Z-INDEX: 104; LEFT: 16px; POSITION: absolute; TOP: 416px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px"
				Height="16px" Font-Italic="True">• La ricerca per  “DATA SCADENZA”  restituisce lo scadenziario mensile, mentre quella per  “DATA RIMBORSO ANTICIPATO”  trova gli eventuali call esercitati.</asp:label>
			<asp:CheckBox id="ckStor" style="Z-INDEX: 131; LEFT: 208px; POSITION: absolute; TOP: 344px" runat="server"
				Font-Names="Tahoma" Font-Size="8pt" Width="200px" Height="16px" Text="RICERCA ANCHE NELLO STORICO"
				tabIndex="7"></asp:CheckBox><asp:label id="lbHelpDate" style="Z-INDEX: 130; LEFT: 16px; POSITION: absolute; TOP: 184px"
				runat="server" Height="16px" Width="400px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="#0000C0"
				Font-Bold="True" Font-Italic="True">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</asp:label>
			<TABLE id="Table2" style="Z-INDEX: 128; LEFT: 4px; WIDTH: 962px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" TypeMenu="TopMenuOB" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:image id="Image1" style="Z-INDEX: 125; LEFT: 4px; POSITION: absolute; TOP: 32px" runat="server"
				Height="44px" Width="352px" ImageUrl="..\Images\Logo.gif"></asp:image><asp:label id="lblLastLogin" style="Z-INDEX: 124; LEFT: 8px; POSITION: absolute; TOP: 80px"
				runat="server" Height="16px" Width="360px" BackColor="Transparent" Font-Size="12px" Font-Names="Tahoma">Ultima connessione</asp:label>
			<TABLE id="Table1" style="Z-INDEX: 122; LEFT: 8px; POSITION: absolute; TOP: 104px" cellSpacing="0"
				cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" TypeMenu="RicercheObbligazioni" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:label id="Label15" style="Z-INDEX: 121; LEFT: 304px; POSITION: absolute; TOP: 259px" runat="server"
				Height="16px" Width="16px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">A</asp:label><asp:label id="Label14" style="Z-INDEX: 120; LEFT: 304px; POSITION: absolute; TOP: 211px" runat="server"
				Height="16px" Width="12px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">A</asp:label><asp:label id="Label13" style="Z-INDEX: 119; LEFT: 184px; POSITION: absolute; TOP: 259px" runat="server"
				Height="16px" Width="24px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">DA</asp:label><asp:label id="Label12" style="Z-INDEX: 118; LEFT: 184px; POSITION: absolute; TOP: 211px" runat="server"
				Height="16px" Width="16px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">DA</asp:label><asp:label id="Label11" style="Z-INDEX: 117; LEFT: 16px; POSITION: absolute; TOP: 259px" runat="server"
				Height="16px" Width="109px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">DATA RIMB. ANTICIP.</asp:label><asp:label id="Label2" style="Z-INDEX: 116; LEFT: 16px; POSITION: absolute; TOP: 211px" runat="server"
				Height="16px" Width="93px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">DATA SCADENZA</asp:label><asp:textbox id="txtDtRaA" style="Z-INDEX: 115; LEFT: 328px; POSITION: absolute; TOP: 256px"
				tabIndex="4" runat="server" Height="20px" Width="85px" BorderStyle="Groove"></asp:textbox><asp:textbox id="txtDtRaDa" style="Z-INDEX: 114; LEFT: 208px; POSITION: absolute; TOP: 256px"
				tabIndex="3" runat="server" Height="20px" Width="85px" BorderStyle="Groove"></asp:textbox><asp:textbox id="txtDtScA" style="Z-INDEX: 113; LEFT: 328px; POSITION: absolute; TOP: 208px"
				tabIndex="2" runat="server" Height="20px" Width="85px" BorderStyle="Groove"></asp:textbox><asp:textbox id="txtDtScDa" style="Z-INDEX: 112; LEFT: 208px; POSITION: absolute; TOP: 208px"
				runat="server" Height="20px" Width="85px" BorderStyle="Groove" tabIndex="1"></asp:textbox><asp:label id="Label9" style="Z-INDEX: 109; LEFT: 184px; POSITION: absolute; TOP: 304px" runat="server"
				Height="16px" Width="24px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">DA</asp:label><asp:textbox id="txtDtMA" style="Z-INDEX: 108; LEFT: 328px; POSITION: absolute; TOP: 304px" tabIndex="6"
				runat="server" Height="20px" Width="85px" BorderStyle="Groove"></asp:textbox><asp:textbox id="txtDtMDa" style="Z-INDEX: 107; LEFT: 208px; POSITION: absolute; TOP: 304px"
				tabIndex="5" runat="server" Height="20px" Width="85px" BorderStyle="Groove"></asp:textbox><asp:label id="Label8" style="Z-INDEX: 106; LEFT: 16px; POSITION: absolute; TOP: 304px" runat="server"
				Height="16px" Width="160px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">DATA MODIFICA/INSERIMENTO</asp:label><asp:label id="Label7" style="Z-INDEX: 102; LEFT: 168px; POSITION: absolute; TOP: 592px" runat="server"
				Height="16px" Width="24px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black" Visible="False">DA</asp:label><asp:label id="Label6" style="Z-INDEX: 103; LEFT: 288px; POSITION: absolute; TOP: 592px" runat="server"
				Height="16px" Width="16px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black" Visible="False">A</asp:label><asp:textbox id="txtDtInA" style="Z-INDEX: 105; LEFT: 312px; POSITION: absolute; TOP: 584px"
				tabIndex="7" runat="server" Height="20px" Width="85px" BorderStyle="Groove" Visible="False"></asp:textbox><asp:textbox id="txtDtInDa" style="Z-INDEX: 101; LEFT: 192px; POSITION: absolute; TOP: 584px"
				tabIndex="6" runat="server" Height="20px" Width="85px" BorderStyle="Groove" Visible="False"></asp:textbox><asp:label id="Label3" style="Z-INDEX: 100; LEFT: 40px; POSITION: absolute; TOP: 592px" runat="server"
				Height="16px" Width="108px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black" Visible="False">DATA INSERIMENTO</asp:label><asp:label id="Label1" style="Z-INDEX: 111; LEFT: 12px; POSITION: absolute; TOP: 144px" runat="server"
				Height="24px" Width="272px" Font-Size="18px" Font-Names="Verdana">OBBLIGAZIONI IN SCADENZA</asp:label><asp:button id="btnFind" style="Z-INDEX: 123; LEFT: 208px; POSITION: absolute; TOP: 376px" tabIndex="8"
				runat="server" Height="24px" Width="204px" BackColor="Gainsboro" BorderStyle="Groove" BorderColor="Transparent" Text="Ricerca"></asp:button></form>
	</body>
</HTML>
