<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZFindTitoli.aspx.vb" Inherits="BTWEB.NET.AZFindTitoli"%>
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
			<asp:label id="lblUser" style="Z-INDEX: 115; LEFT: 16px; POSITION: absolute; TOP: 187px" runat="server"
				Height="16px" Width="144px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black"> DESCRIZIONE</asp:label><asp:dropdownlist id="cmbSettore" style="Z-INDEX: 127; LEFT: 208px; POSITION: absolute; TOP: 304px"
				tabIndex="4" runat="server" Height="16px" Width="152px">
				<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
				<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
				<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
			</asp:dropdownlist><asp:label id="Label4" style="Z-INDEX: 126; LEFT: 16px; POSITION: absolute; TOP: 307px" runat="server"
				Height="16px" Width="160px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">INDICE</asp:label><asp:label id="Label3" style="Z-INDEX: 125; LEFT: 16px; POSITION: absolute; TOP: 267px" runat="server"
				Height="16px" Width="160px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">MERCATO</asp:label><asp:dropdownlist id="cmbMercato" style="Z-INDEX: 123; LEFT: 208px; POSITION: absolute; TOP: 264px"
				tabIndex="3" runat="server" Height="16px" Width="152px">
				<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
				<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
				<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
			</asp:dropdownlist><asp:label id="lbUpd" style="Z-INDEX: 122; LEFT: 320px; POSITION: absolute; TOP: 144px" runat="server"
				Height="24px" Width="400px" Font-Size="18px" Font-Names="Tahoma">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label><asp:label id="lbHelp2" style="Z-INDEX: 121; LEFT: 16px; POSITION: absolute; TOP: 496px" runat="server"
				Height="16px" Width="456px" BackColor="Transparent" Font-Size="9pt" Font-Names="Tahoma" ForeColor="#0000C0" Font-Italic="True">• I titoli storicizzati sono evidenziati in rosso.</asp:label><asp:label id="lbHelp5" style="Z-INDEX: 120; LEFT: 16px; POSITION: absolute; TOP: 600px" runat="server"
				Height="16px" Width="456px" BackColor="Transparent" Font-Size="9pt" Font-Names="Tahoma" ForeColor="#0000C0" Font-Italic="True">• Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata.   </asp:label><asp:label id="lbHelp4" style="Z-INDEX: 118; LEFT: 16px; POSITION: absolute; TOP: 560px" runat="server"
				Height="16px" Width="456px" BackColor="Transparent" Font-Size="9pt" Font-Names="Tahoma" ForeColor="#0000C0" Font-Italic="True">• Premendo il solo pulsante “Ricerca” senza avere effettuato alcuna selezione si ottiene l’elenco di TUTTI i Titoli presenti.</asp:label><asp:label id="lbHelp3" style="Z-INDEX: 119; LEFT: 16px; POSITION: absolute; TOP: 520px" runat="server"
				Height="16px" Width="456px" BackColor="Transparent" Font-Size="9pt" Font-Names="Tahoma" ForeColor="#0000C0" Font-Italic="True">• Le NOVITA’ si cercano copiando nel campo “DATA MODIFICA/INSERIMENTO DA” la data di “ultima connessione” riportata qui in alto sotto il logo Brambilla Titoli.</asp:label><asp:label id="lbHelp1" style="Z-INDEX: 105; LEFT: 16px; POSITION: absolute; TOP: 448px" runat="server"
				Height="40px" Width="456px" BackColor="Transparent" Font-Size="9pt" Font-Names="Tahoma" ForeColor="#0000C0" Font-Italic="True">• La ricerca può essere effettuata per descrizione (anche solo parte del nome), per codice ISIN o UIC, per mercato, per settore, per DATA MODIFICA/INSERIMENTO (range temporale tra due date).</asp:label><asp:label id="lbHelpDate" style="Z-INDEX: 117; LEFT: 16px; POSITION: absolute; TOP: 344px"
				runat="server" Height="16px" Width="392px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="#0000C0" Font-Italic="True" Font-Bold="True">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</asp:label>
			<TABLE id="Table2" style="Z-INDEX: 113; LEFT: 4px; WIDTH: 962px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" ImagePath="../Images/" TypeMenu="TopMenuAZ"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<TABLE id="Table1" style="Z-INDEX: 111; LEFT: 8px; POSITION: absolute; TOP: 104px" cellSpacing="0"
				cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" ImagePath="../Images/" TypeMenu="RicercheAzioni"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:label id="Label10" style="Z-INDEX: 116; LEFT: 304px; POSITION: absolute; TOP: 371px" runat="server"
				Height="16px" Width="4px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">A</asp:label><asp:label id="Label9" style="Z-INDEX: 109; LEFT: 184px; POSITION: absolute; TOP: 371px" runat="server"
				Height="16px" Width="24px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">DA</asp:label><asp:textbox id="txtDtMA" style="Z-INDEX: 108; LEFT: 320px; POSITION: absolute; TOP: 368px" tabIndex="6"
				runat="server" Height="20px" Width="85px" BorderStyle="Groove"></asp:textbox><asp:textbox id="txtDtMDa" style="Z-INDEX: 107; LEFT: 208px; POSITION: absolute; TOP: 368px"
				tabIndex="5" runat="server" Height="20px" Width="85px" BorderStyle="Groove"></asp:textbox><asp:label id="Label8" style="Z-INDEX: 106; LEFT: 16px; POSITION: absolute; TOP: 371px" runat="server"
				Height="16px" Width="160px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">DATA MODIFICA/INSERIMENTO</asp:label><asp:image id="Image1" style="Z-INDEX: 114; LEFT: 8px; POSITION: absolute; TOP: 32px" runat="server"
				Height="44px" Width="352px" ImageUrl="..\Images\Logo.gif"></asp:image><asp:label id="lblLastLogin" style="Z-INDEX: 112; LEFT: 8px; POSITION: absolute; TOP: 80px"
				runat="server" Height="16px" Width="360px" BackColor="Transparent" Font-Size="12px" Font-Names="Tahoma">Ultima connessione</asp:label><asp:label id="Label2" style="Z-INDEX: 103; LEFT: 16px; POSITION: absolute; TOP: 227px" runat="server"
				Height="16px" Width="144px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">ISINCODE o UIC</asp:label><asp:dropdownlist id="cmbFind" style="Z-INDEX: 101; LEFT: 400px; POSITION: absolute; TOP: 184px" tabIndex="1"
				runat="server" Height="16px" Width="152px">
				<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
				<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
				<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
			</asp:dropdownlist><asp:textbox id="txtFind" style="Z-INDEX: 100; LEFT: 208px; POSITION: absolute; TOP: 184px" runat="server"
				Height="20px" Width="192px" BorderStyle="Groove"></asp:textbox><asp:button id="btnFind" style="Z-INDEX: 102; LEFT: 208px; POSITION: absolute; TOP: 408px" tabIndex="7"
				runat="server" Height="24px" Width="197px" BackColor="Gainsboro" BorderStyle="Groove" Text="Ricerca" BorderColor="Transparent"></asp:button><asp:textbox id="txtIsincode" style="Z-INDEX: 104; LEFT: 208px; POSITION: absolute; TOP: 224px"
				tabIndex="2" runat="server" Height="20px" Width="84px" BorderStyle="Groove"></asp:textbox><asp:label id="Label1" style="Z-INDEX: 110; LEFT: 16px; POSITION: absolute; TOP: 144px" runat="server"
				Height="24px" Width="264px" Font-Size="18px" Font-Names="Tahoma">TITOLI SOCIETA'</asp:label></form>
	</body>
</HTML>
