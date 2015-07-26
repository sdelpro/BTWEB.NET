<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZFindCONV.aspx.vb" Inherits="BTWEB.NET.AZFindCONV"%>
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
	<body MS_POSITIONING="GridLayout" background="..\Images\sfHome.JPG">
		<FORM id="Form1" method="post" runat="server">
			<asp:label id="lblUser" style="Z-INDEX: 114; LEFT: 24px; POSITION: absolute; TOP: 184px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="128px"
				Height="16px"> DESCRIZIONE</asp:label>
			<asp:label id="lbUpd" style="Z-INDEX: 127; LEFT: 320px; POSITION: absolute; TOP: 144px" runat="server"
				Height="24px" Width="400px" Font-Size="18px" Font-Names="Tahoma">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
			<asp:label id="lbHelp3" style="Z-INDEX: 107; LEFT: 16px; POSITION: absolute; TOP: 512px" runat="server"
				Font-Italic="True" Height="16px" Width="456px" BackColor="Transparent" Font-Size="9pt"
				Font-Names="Tahoma" ForeColor="#0000C0">• Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata</asp:label>
			<asp:label id="lbHelp2" style="Z-INDEX: 112; LEFT: 16px; POSITION: absolute; TOP: 472px" runat="server"
				Font-Italic="True" Height="16px" Width="456px" BackColor="Transparent" Font-Size="9pt"
				Font-Names="Tahoma" ForeColor="#0000C0">• Selezionando l’azione convertibile desiderata si accede alla consultazione della Tabella di Convertibilità.</asp:label>
			<asp:label id="lbHelp1" style="Z-INDEX: 105; LEFT: 16px; POSITION: absolute; TOP: 408px" runat="server"
				Font-Italic="True" Height="16px" Width="456px" BackColor="Transparent" Font-Size="9pt"
				Font-Names="Tahoma" ForeColor="#0000C0">• Per ricercare una sola azione convertibile; inserire la descrizione (anche solo parte del nome), o il codice ISIN o UIC; per ottenere l’elenco di TUTTE le azioni convertibili basta premere il pulsante “Ricerca” senza avere effettuato alcun’altra selezione.</asp:label>
			<asp:image id="Image1" style="Z-INDEX: 113; LEFT: 8px; POSITION: absolute; TOP: 32px" runat="server"
				Width="352px" Height="44px" ImageUrl="..\Images\Logo.gif"></asp:image>
			<asp:label id="lblLastLogin" style="Z-INDEX: 110; LEFT: 8px; POSITION: absolute; TOP: 80px"
				runat="server" Font-Names="Tahoma" Font-Size="12px" BackColor="Transparent" Width="360px"
				Height="16px">Ultima connessione</asp:label>
			<TABLE id="Table1" style="Z-INDEX: 108; LEFT: 8px; POSITION: absolute; TOP: 104px" cellSpacing="0"
				cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD>
						<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" TypeMenu="RicercheAzioni" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<TABLE id="Table2" style="Z-INDEX: 111; LEFT: 4px; WIDTH: 962px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
				<TR>
					<TD>
						<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" TypeMenu="TopMenuAZ" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:label id="Label2" style="Z-INDEX: 103; LEFT: 24px; POSITION: absolute; TOP: 228px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="128px"
				Height="16px">ISINCODE o UIC</asp:label>
			<asp:dropdownlist id="cmbFind" style="Z-INDEX: 102; LEFT: 356px; POSITION: absolute; TOP: 184px" runat="server"
				Width="152px" Height="16px" tabIndex="1">
				<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
				<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
				<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
			</asp:dropdownlist>
			<asp:textbox id="txtFind" style="Z-INDEX: 100; LEFT: 160px; POSITION: absolute; TOP: 184px" runat="server"
				Width="192px" Height="20px" BorderStyle="Groove"></asp:textbox>
			<asp:button id="btnFind" style="Z-INDEX: 101; LEFT: 160px; POSITION: absolute; TOP: 272px" runat="server"
				BackColor="Gainsboro" Width="197px" Height="24px" BorderStyle="Groove" BorderColor="Transparent"
				Text="Ricerca" tabIndex="3"></asp:button>
			<asp:textbox id="txtIsincode" style="Z-INDEX: 104; LEFT: 160px; POSITION: absolute; TOP: 224px"
				runat="server" Width="84px" Height="20px" BorderStyle="Groove" tabIndex="2"></asp:textbox>
			<asp:label id="Label1" style="Z-INDEX: 106; LEFT: 16px; POSITION: absolute; TOP: 144px" runat="server"
				Font-Names="Tahoma" Font-Size="18px" Width="264px" Height="24px">AZIONI CONVERTIBILI</asp:label></FORM>
	</body>
</HTML>
