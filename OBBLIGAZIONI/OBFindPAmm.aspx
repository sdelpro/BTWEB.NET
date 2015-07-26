<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBFindPAmm.aspx.vb" Inherits="BTWEB.NET.OBFindPAmm"%>
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
			<asp:label id="lblUser" style="Z-INDEX: 106; LEFT: 16px; POSITION: absolute; TOP: 187px" runat="server"
				Height="16px" Width="60px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black"> DESCRIZIONE</asp:label>
			<asp:label id="lbUpd" style="Z-INDEX: 127; LEFT: 320px; POSITION: absolute; TOP: 144px" runat="server"
				Font-Names="Tahoma" Font-Size="18px" Width="400px" Height="24px">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
			<asp:textbox id="txtIsincode" style="Z-INDEX: 124; LEFT: 200px; POSITION: absolute; TOP: 224px"
				tabIndex="3" runat="server" Width="112px" Height="20px" BorderStyle="Groove"></asp:textbox>
			<asp:label id="lbHelp1" style="Z-INDEX: 123; LEFT: 16px; POSITION: absolute; TOP: 536px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px"
				Height="16px" Font-Italic="True">• Spuntando ‘RICERCA ANCHE NELLO STORICO’ si aggiungono automaticamente anche i Titoli storicizzati (non più attivi). Questa opzione può rallentare il lavoro.</asp:label>
			<asp:label id="lbHelp2" style="Z-INDEX: 118; LEFT: 16px; POSITION: absolute; TOP: 448px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px"
				Height="40px" Font-Italic="True">• La ricerca può essere richiesta per descrizione (anche solo parte del nome), per codice ISIN o UIC, per tipo di ammortamento, oppure nel range temporale tra le due date.</asp:label>
			<asp:label id="lbHelp3" style="Z-INDEX: 119; LEFT: 16px; POSITION: absolute; TOP: 496px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px"
				Height="16px" Font-Italic="True">• Per ottenere l’elenco di TUTTI i Titoli con Piano Ammortamento basta premere il pulsante “Ricerca“ senza aver effettuato alcun’altra selezione.</asp:label>
			<asp:CheckBox id="ckStor" style="Z-INDEX: 122; LEFT: 192px; POSITION: absolute; TOP: 360px" runat="server"
				Font-Names="Tahoma" Font-Size="8pt" Width="200px" Height="16px" Text="RICERCA ANCHE NELLO STORICO"
				tabIndex="7"></asp:CheckBox><asp:dropdownlist id="cmbTipoAmm" style="Z-INDEX: 121; LEFT: 192px; POSITION: absolute; TOP: 320px"
				tabIndex="6" runat="server" Height="16px" Width="204px" Font-Size="X-Small" Font-Names="Tahoma"></asp:dropdownlist><asp:label id="Label15" style="Z-INDEX: 120; LEFT: 16px; POSITION: absolute; TOP: 320px" runat="server"
				Height="16px" Width="188px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">TIPO AMMORTAMENTO</asp:label><asp:label id="Label2" style="Z-INDEX: 117; LEFT: 16px; POSITION: absolute; TOP: 283px" runat="server"
				Height="16px" Width="96px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black"> DATA RATA</asp:label><asp:textbox id="txtDtScDa" style="Z-INDEX: 113; LEFT: 200px; POSITION: absolute; TOP: 280px"
				tabIndex="4" runat="server" Height="20px" Width="85px" BorderStyle="Groove"></asp:textbox><asp:label id="Label12" style="Z-INDEX: 115; LEFT: 176px; POSITION: absolute; TOP: 283px" runat="server"
				Height="16px" Width="16px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">DA</asp:label><asp:label id="Label14" style="Z-INDEX: 116; LEFT: 304px; POSITION: absolute; TOP: 283px" runat="server"
				Height="16px" Width="12px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">A</asp:label><asp:textbox id="txtDtScA" style="Z-INDEX: 114; LEFT: 320px; POSITION: absolute; TOP: 280px"
				tabIndex="5" runat="server" Height="20px" Width="85px" BorderStyle="Groove"></asp:textbox><asp:label id="lbHelpDate" style="Z-INDEX: 112; LEFT: 16px; POSITION: absolute; TOP: 264px"
				runat="server" Height="16px" Width="392px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="#0000C0" Font-Italic="True" Font-Bold="True">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</asp:label>
			<TABLE id="Table2" style="Z-INDEX: 111; LEFT: 4px; WIDTH: 962px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" TypeMenu="TopMenuOB" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:image id="Image1" style="Z-INDEX: 110; LEFT: 4px; POSITION: absolute; TOP: 32px" runat="server"
				Height="44px" Width="352px" ImageUrl="..\Images\Logo.gif"></asp:image><asp:label id="lblLastLogin" style="Z-INDEX: 109; LEFT: 8px; POSITION: absolute; TOP: 80px"
				runat="server" Height="16px" Width="360px" BackColor="Transparent" Font-Size="12px" Font-Names="Tahoma">Ultima connessione</asp:label>
			<TABLE id="Table1" style="Z-INDEX: 108; LEFT: 8px; POSITION: absolute; TOP: 104px" cellSpacing="0"
				cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" TypeMenu="RicercheObbligazioni" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:label id="Label13" style="Z-INDEX: 103; LEFT: 16px; POSITION: absolute; TOP: 224px" runat="server"
				Height="16px" Width="80px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">ISINCODE o UIC</asp:label><asp:dropdownlist id="cmbFind" style="Z-INDEX: 102; LEFT: 112px; POSITION: absolute; TOP: 184px" tabIndex="1"
				runat="server" Height="16px" Width="88px" Font-Names="Tahoma">
				<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
				<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
				<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
			</asp:dropdownlist><asp:textbox id="txtFind" style="Z-INDEX: 101; LEFT: 200px; POSITION: absolute; TOP: 184px" tabIndex="2"
				runat="server" Height="20px" Width="204px" BorderStyle="Groove"></asp:textbox><asp:button id="btnFind" style="Z-INDEX: 100; LEFT: 192px; POSITION: absolute; TOP: 392px" tabIndex="8"
				runat="server" Height="26px" Width="210px" BackColor="Gainsboro" BorderStyle="Groove" Text="Ricerca" BorderColor="Transparent"></asp:button><asp:label id="Label1" style="Z-INDEX: 105; LEFT: 8px; POSITION: absolute; TOP: 144px" runat="server"
				Font-Names="Verdana" Font-Size="18px" Width="264px" Height="24px"> PIANI AMMORTAMENTO</asp:label><asp:checkbox id="ckPiano" style="Z-INDEX: 107; LEFT: 16px; POSITION: absolute; TOP: 608px" tabIndex="4"
				runat="server" Font-Names="Tahoma" Font-Size="12px" Width="240px" Height="6px" Text="TITOLI CON PIANO AMMORTAMENTO" Visible="False"></asp:checkbox></form>
	</body>
</HTML>
