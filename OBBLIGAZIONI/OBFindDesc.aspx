<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBFindDesc.aspx.vb" Inherits="BTWEB.NET.OBFindDesc"%>
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
			<asp:label id="lblUser" style="Z-INDEX: 100; POSITION: absolute; TOP: 187px; LEFT: 16px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="80px"
				Height="16px"> DESCRIZIONE</asp:label>
			<asp:label id="Label9" style="Z-INDEX: 143; POSITION: absolute; TOP: 376px; LEFT: 16px" runat="server"
				Height="16px" Width="144px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">TESTO NOTE ASSOCIATE</asp:label>
			<asp:textbox id="txtNotaSpec" style="Z-INDEX: 132; POSITION: absolute; TOP: 373px; LEFT: 208px"
				tabIndex="9" runat="server" Height="20px" Width="192px" BorderStyle="Groove"></asp:textbox>
			<asp:label id="Label16" style="Z-INDEX: 142; POSITION: absolute; TOP: 346px; LEFT: 16px" runat="server"
				Height="16px" Width="156px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">CON MAGGIORAZIONE</asp:label>
			<asp:label id="Label15" style="Z-INDEX: 140; POSITION: absolute; TOP: 315px; LEFT: 16px" runat="server"
				Height="16px" Width="156px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">TIPO INDICIZZAZIONE</asp:label>
			<asp:dropdownlist id="cmbIndic" style="Z-INDEX: 139; POSITION: absolute; TOP: 312px; LEFT: 208px"
				tabIndex="7" runat="server" Height="16px" Width="160px" Font-Names="Tahoma">
				<asp:ListItem Value="Tutti">Tutti</asp:ListItem>
				<asp:ListItem Value="A Tasso Fisso">A Tasso Fisso</asp:ListItem>
				<asp:ListItem Value="A Tasso Variabile">A Tasso Variabile</asp:ListItem>
				<asp:ListItem Value="A Tasso Misto">A Tasso Misto</asp:ListItem>
				<asp:ListItem Value="Nessuno">Nessuno</asp:ListItem>
			</asp:dropdownlist>
			<asp:textbox id="txtPrEmA" style="Z-INDEX: 138; POSITION: absolute; TOP: 280px; LEFT: 312px"
				tabIndex="6" runat="server" Height="20px" Width="85px" BorderStyle="Groove"></asp:textbox>
			<asp:label id="Label14" style="Z-INDEX: 137; POSITION: absolute; TOP: 283px; LEFT: 296px" runat="server"
				Height="16px" Width="4px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">A</asp:label>
			<asp:textbox id="txtPrEmDa" style="Z-INDEX: 136; POSITION: absolute; TOP: 280px; LEFT: 208px"
				tabIndex="5" runat="server" Height="20px" Width="85px" BorderStyle="Groove"></asp:textbox>
			<asp:label id="Label13" style="Z-INDEX: 135; POSITION: absolute; TOP: 283px; LEFT: 184px" runat="server"
				Height="16px" Width="24px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">DA</asp:label>
			<asp:label id="Label12" style="Z-INDEX: 134; POSITION: absolute; TOP: 283px; LEFT: 16px" runat="server"
				Height="16px" Width="156px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">PREZZO DI EMISSIONE</asp:label>
			<asp:textbox id="Textbox4" style="Z-INDEX: 112; POSITION: absolute; TOP: 464px; LEFT: 208px"
				tabIndex="4" runat="server" Height="20px" Width="85px" BorderStyle="Groove"></asp:textbox>
			<asp:label id="Label11" style="Z-INDEX: 115; POSITION: absolute; TOP: 464px; LEFT: 184px" runat="server"
				Height="16px" Width="24px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">DA</asp:label>
			<asp:label id="Label5" style="Z-INDEX: 116; POSITION: absolute; TOP: 464px; LEFT: 296px" runat="server"
				Height="16px" Width="4px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">A</asp:label>
			<asp:textbox id="txtNota" style="Z-INDEX: 133; POSITION: absolute; TOP: 248px; LEFT: 208px" tabIndex="4"
				runat="server" Height="20px" Width="192px" BorderStyle="Groove"></asp:textbox>
			<asp:label id="Label4" style="Z-INDEX: 130; POSITION: absolute; TOP: 251px; LEFT: 16px" runat="server"
				Height="16px" Width="144px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">NOTA BREVE</asp:label>
			<asp:textbox id="Textbox1" Visible="False" style="Z-INDEX: 128; POSITION: absolute; TOP: 216px; LEFT: 328px"
				tabIndex="3" runat="server" Height="20px" Width="112px" BorderStyle="Groove"></asp:textbox>
			<asp:label id="lbUpd" style="Z-INDEX: 129; POSITION: absolute; TOP: 144px; LEFT: 320px" runat="server"
				Height="24px" Width="400px" Font-Size="18px" Font-Names="Tahoma">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label><asp:textbox id="txtIsincode" style="Z-INDEX: 127; POSITION: absolute; TOP: 216px; LEFT: 208px"
				tabIndex="3" runat="server" Width="112px" Height="20px" BorderStyle="Groove"></asp:textbox><asp:label id="lbHelp5" style="Z-INDEX: 126; POSITION: absolute; TOP: 720px; LEFT: 24px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px" Height="16px" Font-Italic="True">•Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata</asp:label><asp:label id="lbHelp4" style="Z-INDEX: 125; POSITION: absolute; TOP: 680px; LEFT: 24px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px" Height="16px" Font-Italic="True">• Spuntando ‘RICERCA ANCHE NELLO STORICO’ si aggiungono automaticamente anche i Titoli storicizzati (non più attivi). Questa opzione può rallentare il lavoro.</asp:label><asp:label id="lbHelp3" style="Z-INDEX: 124; POSITION: absolute; TOP: 640px; LEFT: 24px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px" Height="16px" Font-Italic="True">• Premendo il solo pulsante ‘Ricerca’ senza avere effettuato alcuna selezione si ottiene l’elenco di TUTTI i Titoli Obbligazionari attivi presenti.</asp:label><asp:checkbox id="ckStor" style="Z-INDEX: 123; POSITION: absolute; TOP: 504px; LEFT: 208px" tabIndex="14"
				runat="server" Font-Names="Tahoma" Font-Size="8pt" Width="200px" Height="16px" Text="RICERCA ANCHE NELLO STORICO"></asp:checkbox><asp:label id="lbHelpDate" style="Z-INDEX: 122; POSITION: absolute; TOP: 408px; LEFT: 16px"
				runat="server" ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="408px" Height="16px" Font-Italic="True" Font-Bold="True">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</asp:label>
			<TABLE id="Table2" style="Z-INDEX: 121; POSITION: absolute; HEIGHT: 8px; TOP: 0px; LEFT: 4px"
				cellSpacing="0" cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" TypeMenu="TopMenuOB" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:image id="Image1" style="Z-INDEX: 120; POSITION: absolute; TOP: 32px; LEFT: 4px" runat="server"
				Width="352px" Height="44px" ImageUrl="..\Images\Logo.gif"></asp:image><asp:label id="lblLastLogin" style="Z-INDEX: 119; POSITION: absolute; TOP: 80px; LEFT: 8px"
				runat="server" Font-Names="Tahoma" Font-Size="12px" BackColor="Transparent" Width="360px" Height="16px">Ultima connessione</asp:label>
			<TABLE id="Table1" style="Z-INDEX: 118; POSITION: absolute; TOP: 104px; LEFT: 8px" cellSpacing="0"
				cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" TypeMenu="RicercheObbligazioni" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:textbox id="txtDtMA" style="Z-INDEX: 114; POSITION: absolute; TOP: 464px; LEFT: 312px" tabIndex="13"
				runat="server" Width="85px" Height="20px" BorderStyle="Groove"></asp:textbox><asp:textbox id="txtDtMDa" style="Z-INDEX: 113; POSITION: absolute; TOP: 464px; LEFT: 208px"
				tabIndex="12" runat="server" Width="85px" Height="20px" BorderStyle="Groove"></asp:textbox><asp:label id="Label8" style="Z-INDEX: 111; POSITION: absolute; TOP: 472px; LEFT: 16px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="156px" Height="16px">DATA MODIFICA/INSERIMENTO</asp:label><asp:label id="Label7" style="Z-INDEX: 108; POSITION: absolute; TOP: 432px; LEFT: 184px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="24px" Height="16px">DA</asp:label><asp:label id="Label6" style="Z-INDEX: 109; POSITION: absolute; TOP: 432px; LEFT: 296px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="8px" Height="16px">A</asp:label><asp:textbox id="txtDtScadA" style="Z-INDEX: 110; POSITION: absolute; TOP: 432px; LEFT: 312px"
				tabIndex="11" runat="server" Width="85px" Height="20px" BorderStyle="Groove"></asp:textbox><asp:textbox id="txtDtScadDa" style="Z-INDEX: 107; POSITION: absolute; TOP: 432px; LEFT: 208px"
				tabIndex="10" runat="server" Width="85px" Height="20px" BorderStyle="Groove"></asp:textbox><asp:label id="Label3" style="Z-INDEX: 106; POSITION: absolute; TOP: 440px; LEFT: 16px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="104px" Height="16px">DATA SCADENZA</asp:label><asp:label id="Label2" style="Z-INDEX: 105; POSITION: absolute; TOP: 219px; LEFT: 16px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="144px" Height="16px">ISINCODE o UIC</asp:label><asp:label id="lbHelp1" style="Z-INDEX: 104; POSITION: absolute; TOP: 576px; LEFT: 24px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px" Height="16px" Font-Italic="True">• La ricerca può essere richiesta per descrizione (anche solo parte del nome), per codice ISIN o UIC, per testo Nota Breve, per testo Note Associate, per range di prezzo di emissione, per tipo indicizzazione, per maggiorazioni (se presenti), per data scadenza e per data modifica/inserimento.</asp:label><asp:dropdownlist id="cmbFind" style="Z-INDEX: 103; POSITION: absolute; TOP: 184px; LEFT: 112px" tabIndex="1"
				runat="server" Font-Names="Tahoma" Width="88px" Height="16px">
				<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
				<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
				<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
			</asp:dropdownlist><asp:textbox id="txtFind" style="Z-INDEX: 101; POSITION: absolute; TOP: 184px; LEFT: 208px" tabIndex="2"
				runat="server" Width="192px" Height="20px" BorderStyle="Groove"></asp:textbox><asp:button id="btnFind" style="Z-INDEX: 102; POSITION: absolute; TOP: 536px; LEFT: 208px" tabIndex="15"
				runat="server" BackColor="Gainsboro" Width="197px" Height="24px" BorderStyle="Groove" Text="Ricerca" BorderColor="Transparent"></asp:button><asp:label id="Label1" style="Z-INDEX: 117; POSITION: absolute; TOP: 144px; LEFT: 16px" runat="server"
				Font-Names="Tahoma" Font-Size="18px" Width="264px" Height="24px">CARATTERISTICHE PRINCIPALI</asp:label>
			<asp:CheckBox id="ckMaggiorazione" style="Z-INDEX: 141; POSITION: absolute; TOP: 344px; LEFT: 208px"
				runat="server" Height="16px" Width="24px" Font-Size="8pt" Font-Names="Tahoma" Text="  " TextAlign="Left"
				tabIndex="8"></asp:CheckBox></form>
	</body>
</HTML>
