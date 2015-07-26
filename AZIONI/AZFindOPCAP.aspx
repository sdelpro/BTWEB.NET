<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZFindOPCAP.aspx.vb" Inherits="BTWEB.NET.AZFindOPCAP"%>
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
		<FORM id="Form1" method="post" runat="server">
			<asp:label id="lblUser" style="Z-INDEX: 119; LEFT: 24px; POSITION: absolute; TOP: 403px" runat="server"
				Height="16px" Width="128px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black"> DESCRIZIONE</asp:label>
			<asp:textbox id="txtTestoStor" style="Z-INDEX: 144; LEFT: 232px; POSITION: absolute; TOP: 520px"
				tabIndex="10" runat="server" Width="208px" Height="20px" BorderStyle="Groove"></asp:textbox>
			<asp:label id="Label7" style="Z-INDEX: 143; LEFT: 24px; POSITION: absolute; TOP: 528px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="160px"
				Height="16px">TESTO OPERAZIONE</asp:label>
			<asp:textbox id="txtTesto" style="Z-INDEX: 140; LEFT: 232px; POSITION: absolute; TOP: 272px"
				tabIndex="3" runat="server" Width="192px" Height="20px" BorderStyle="Groove"></asp:textbox>
			<asp:label id="Label4" style="Z-INDEX: 139; LEFT: 24px; POSITION: absolute; TOP: 275px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="160px"
				Height="16px">TESTO OPERAZIONE</asp:label>
			<asp:label id="lbUpd" style="Z-INDEX: 138; LEFT: 320px; POSITION: absolute; TOP: 144px" runat="server"
				Font-Names="Tahoma" Font-Size="18px" Width="400px" Height="24px">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
			<asp:label id="Label18" style="Z-INDEX: 137; LEFT: 208px; POSITION: absolute; TOP: 243px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="24px"
				Height="16px">DA</asp:label>
			<asp:label id="Label17" style="Z-INDEX: 109; LEFT: 24px; POSITION: absolute; TOP: 243px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="160px"
				Height="16px">DATA MODIFICA/INSERIMENTO</asp:label>
			<asp:label id="Label16" style="Z-INDEX: 125; LEFT: 328px; POSITION: absolute; TOP: 491px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="4px"
				Height="16px">A</asp:label>
			<asp:label id="Label15" style="Z-INDEX: 120; LEFT: 200px; POSITION: absolute; TOP: 491px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="24px"
				Height="16px">DA</asp:label>
			<asp:textbox id="txtDtM1A" style="Z-INDEX: 117; LEFT: 344px; POSITION: absolute; TOP: 240px"
				runat="server" Width="85px" Height="20px" BorderStyle="Groove" tabIndex="2"></asp:textbox>
			<asp:textbox id="txtDtM1Da" style="Z-INDEX: 113; LEFT: 232px; POSITION: absolute; TOP: 240px"
				runat="server" Width="85px" Height="20px" BorderStyle="Groove" tabIndex="1"></asp:textbox>
			<asp:label id="Label13" style="Z-INDEX: 136; LEFT: 24px; POSITION: absolute; TOP: 216px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="392px"
				Height="16px" Font-Italic="True" Font-Bold="True">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</asp:label>
			<asp:label id="lbHelp5" style="Z-INDEX: 135; LEFT: 24px; POSITION: absolute; TOP: 784px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="464px"
				Height="16px" Font-Italic="True">• La ricerca per STORICIZZATE può essere effettuata per descrizione (anche solo parte del nome), per testo dell'operazione, per codice ISIN o UIC oppure per DATA MODIFICA/INSERIMENTO (range temporale tra due date).</asp:label>
			<asp:label id="lbHelp4" style="Z-INDEX: 134; LEFT: 24px; POSITION: absolute; TOP: 752px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px"
				Height="16px" Font-Italic="True">• Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata.   </asp:label>
			<asp:label id="lbHelp3" style="Z-INDEX: 123; LEFT: 24px; POSITION: absolute; TOP: 704px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px"
				Height="16px" Font-Italic="True">• Ricercando per STATO e premendo il pulsante “Ricerca” si ottiene l’elenco di TUTTE LE OPERAZIONI presenti nello STATO prescelto. Inoltre si può ricercare per testo dell'operazione.</asp:label>
			<asp:label id="lbHelp2" style="Z-INDEX: 127; LEFT: 24px; POSITION: absolute; TOP: 664px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px"
				Height="16px" Font-Italic="True">• Le NOVITA’ si cercano copiando nel campo “DATA MODIFICA/INSERIMENTO DA” la data di “ultima connessione” riportata qui in alto sotto il logo Brambilla Titoli.</asp:label>
			<asp:label id="lbHelp1" style="Z-INDEX: 107; LEFT: 24px; POSITION: absolute; TOP: 608px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px"
				Height="16px" Font-Italic="True">• La ricerca per STATO (PREANNUNCIATO, APPROVATO, IN CORSO, TUTTI) può essere effettuata per DATA MODIFICA/INSERIMENTO (range temporale tra due date), per testo dell'operazione.</asp:label>
			<asp:label id="lbHelpDate" style="Z-INDEX: 133; LEFT: 24px; POSITION: absolute; TOP: 464px"
				runat="server" ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent"
				Width="392px" Height="16px" Font-Italic="True" Font-Bold="True">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</asp:label>
			<asp:label id="Label12" style="Z-INDEX: 132; LEFT: 16px; POSITION: absolute; TOP: 352px" runat="server"
				Height="24px" Width="548px" Font-Size="18px" Font-Names="Tahoma">OPERAZIONI SUL CAPITALE STORICIZZATE</asp:label>
			<asp:label id="Label11" style="Z-INDEX: 131; LEFT: 24px; POSITION: absolute; TOP: 187px" runat="server"
				Height="16px" Width="121px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">PER STATO</asp:label>
			<asp:dropdownlist id="cmbStato" style="Z-INDEX: 130; LEFT: 232px; POSITION: absolute; TOP: 184px"
				runat="server" Height="16px" Width="200px">
				<asp:ListItem Value="PREANNUNCIATO">Preannunciato</asp:ListItem>
				<asp:ListItem Value="APPROVATO">Approvato</asp:ListItem>
				<asp:ListItem Value="IN CORSO DA">In Corso</asp:ListItem>
				<asp:ListItem Value="Tutti">Tutti</asp:ListItem>
			</asp:dropdownlist>
			<asp:textbox id="txtDtStoA" style="Z-INDEX: 128; LEFT: 592px; POSITION: absolute; TOP: 520px"
				runat="server" Height="20px" Width="85px" BorderStyle="Groove" Visible="False"></asp:textbox>
			<asp:textbox id="txtDtStoDa" style="Z-INDEX: 124; LEFT: 480px; POSITION: absolute; TOP: 520px"
				runat="server" Height="20px" Width="85px" BorderStyle="Groove" Visible="False"></asp:textbox>
			<asp:label id="Label6" style="Z-INDEX: 122; LEFT: 480px; POSITION: absolute; TOP: 496px" runat="server"
				Height="16px" Width="128px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black" Visible="False">DATA STORICIZZAZIONE</asp:label>
			<asp:label id="Label5" style="Z-INDEX: 129; LEFT: 576px; POSITION: absolute; TOP: 528px" runat="server"
				Height="16px" Width="4px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black"
				Visible="False">A</asp:label>
			<asp:label id="Label3" style="Z-INDEX: 108; LEFT: 24px; POSITION: absolute; TOP: 491px" runat="server"
				Height="16px" Width="160px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">DATA MODIFICA/INSERIMENTO</asp:label>
			<asp:label id="Label10" style="Z-INDEX: 126; LEFT: 328px; POSITION: absolute; TOP: 243px" runat="server"
				Height="16px" Width="4px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">A</asp:label>
			<asp:textbox id="txtDtMA" style="Z-INDEX: 116; LEFT: 344px; POSITION: absolute; TOP: 488px" runat="server"
				Height="20px" Width="85px" BorderStyle="Groove" tabIndex="9"></asp:textbox>
			<asp:textbox id="txtDtMDa" style="Z-INDEX: 112; LEFT: 232px; POSITION: absolute; TOP: 488px"
				runat="server" Height="20px" Width="85px" BorderStyle="Groove" tabIndex="8"></asp:textbox>
			<asp:button id="btnFindStor" style="Z-INDEX: 121; LEFT: 232px; POSITION: absolute; TOP: 560px"
				runat="server" Height="24px" Width="208px" BackColor="Gainsboro" BorderStyle="Groove" Text="Ricerca"
				BorderColor="Transparent" tabIndex="11"></asp:button>
			<asp:image id="Image1" style="Z-INDEX: 118; LEFT: 8px; POSITION: absolute; TOP: 32px" runat="server"
				Height="44px" Width="352px" ImageUrl="..\Images\Logo.gif"></asp:image>
			<asp:label id="lblLastLogin" style="Z-INDEX: 114; LEFT: 8px; POSITION: absolute; TOP: 80px"
				runat="server" Height="16px" Width="360px" BackColor="Transparent" Font-Size="12px" Font-Names="Tahoma">Ultima connessione</asp:label>
			<TABLE id="Table1" style="Z-INDEX: 111; LEFT: 8px; POSITION: absolute; TOP: 104px" cellSpacing="0"
				cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD>
						<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" ImagePath="../Images/" TypeMenu="RicercheAzioni"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<TABLE id="Table2" style="Z-INDEX: 115; LEFT: 4px; WIDTH: 962px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
				<TR>
					<TD>
						<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" ImagePath="../Images/" TypeMenu="TopMenuAZ"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:label id="Label2" style="Z-INDEX: 103; LEFT: 24px; POSITION: absolute; TOP: 435px" runat="server"
				Height="16px" Width="128px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">ISINCODE o UIC</asp:label>
			<asp:dropdownlist id="cmbFind" style="Z-INDEX: 102; LEFT: 432px; POSITION: absolute; TOP: 400px" runat="server"
				Height="16px" Width="152px" tabIndex="6">
				<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
				<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
				<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
			</asp:dropdownlist>
			<asp:textbox id="txtFind" style="Z-INDEX: 100; LEFT: 232px; POSITION: absolute; TOP: 400px" runat="server"
				Height="20px" Width="192px" BorderStyle="Groove" tabIndex="5"></asp:textbox>
			<asp:button id="btnFind" style="Z-INDEX: 101; LEFT: 232px; POSITION: absolute; TOP: 304px" runat="server"
				Height="24px" Width="192px" BackColor="Gainsboro" BorderStyle="Groove" Text="Ricerca" BorderColor="Transparent"
				tabIndex="4"></asp:button>
			<asp:textbox id="txtIsincode" style="Z-INDEX: 106; LEFT: 232px; POSITION: absolute; TOP: 432px"
				runat="server" Height="20px" Width="84px" BorderStyle="Groove" tabIndex="7"></asp:textbox>
			<asp:label id="Label1" style="Z-INDEX: 110; LEFT: 16px; POSITION: absolute; TOP: 144px" runat="server"
				Height="24px" Width="264px" Font-Size="18px" Font-Names="Tahoma">OPERAZIONI SUL CAPITALE</asp:label></FORM>
	</body>
</HTML>
