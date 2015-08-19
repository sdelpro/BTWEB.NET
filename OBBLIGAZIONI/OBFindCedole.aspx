<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBFindCedole.aspx.vb" Inherits="BTWEB.NET.OBFindCedole"%>
<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta name="vs_showGrid" content="True">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bgProperties="fixed" background="..\Images\sfHome.jpg" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:label id="Label10" style="Z-INDEX: 114; LEFT: 304px; POSITION: absolute; TOP: 323px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="12px"
				Height="16px">A</asp:label>
			<asp:label id="lbUpd" style="Z-INDEX: 136; LEFT: 320px; POSITION: absolute; TOP: 144px" runat="server"
				Height="24px" Width="400px" Font-Size="18px" Font-Names="Tahoma">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
			<asp:textbox id="txtIsincode" style="Z-INDEX: 135; LEFT: 200px; POSITION: absolute; TOP: 224px"
				tabIndex="3" runat="server" Height="20px" Width="112px" BorderStyle="Groove"></asp:textbox>
			<asp:label id="lbHelp5" style="Z-INDEX: 134; LEFT: 16px; POSITION: absolute; TOP: 544px" runat="server"
				Height="16px" Width="456px" BackColor="Transparent" Font-Size="9pt" Font-Names="Tahoma"
				ForeColor="#00547d" Font-Italic="True">•Per cambiare l’ordinamento (crescente/decrescente e di colonna) dell'elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata</asp:label>
			<asp:label id="lbHelp4" style="Z-INDEX: 129; LEFT: 16px; POSITION: absolute; TOP: 504px" runat="server"
				Height="16px" Width="456px" BackColor="Transparent" Font-Size="9pt" Font-Names="Tahoma"
				ForeColor="#00547d" Font-Italic="True">Spuntando ‘RICERCA ANCHE NELLO STORICO’ si aggiungono automaticamente anche i Titoli storicizzati (non più attivi). Questa opzione può rallentare il lavoro.</asp:label>
			<asp:label id="lbHelp3" style="Z-INDEX: 125; LEFT: 16px; POSITION: absolute; TOP: 464px" runat="server"
				Height="16px" Width="456px" BackColor="Transparent" Font-Size="9pt" Font-Names="Tahoma"
				ForeColor="#00547d" Font-Italic="True">Premendo il solo pulsante ‘Ricerca’ senza avere effettuato alcuna selezione si ottiene l’elenco di TUTTE le cedole presenti</asp:label>
			<asp:label id="lbHelp1" style="Z-INDEX: 103; LEFT: 16px; POSITION: absolute; TOP: 424px" runat="server"
				Height="16px" Width="456px" BackColor="Transparent" Font-Size="9pt" Font-Names="Tahoma"
				ForeColor="#00547d" Font-Italic="True">La ricerca può essere richiesta per descrizione (anche solo parte del nome), per codice ISIN o UIC, oppure all’interno del range temporale tra le due date.</asp:label>
			<asp:dropdownlist id="cmbTipoInd" style="Z-INDEX: 132; LEFT: 200px; POSITION: absolute; TOP: 264px"
				tabIndex="4" runat="server" Height="16px" Width="204px" Font-Size="X-Small" Font-Names="Tahoma">
				<asp:ListItem Value="-1">TUTTI</asp:ListItem>
				<asp:ListItem Value="1">Tasso Fisso</asp:ListItem>
				<asp:ListItem Value="2">Tasso Variabile</asp:ListItem>
				<asp:ListItem Value="3">Tasso Misto</asp:ListItem>
				<asp:ListItem Value="0">(Nessuno)</asp:ListItem>
			</asp:dropdownlist>
			<asp:label id="Label15" style="Z-INDEX: 131; LEFT: 16px; POSITION: absolute; TOP: 267px" runat="server"
				Height="16px" Width="188px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">TIPO CEDOLE</asp:label><asp:label id="lbHelpDate" style="Z-INDEX: 130; LEFT: 16px; POSITION: absolute; TOP: 296px"
				runat="server" ForeColor="#00547d" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="394px" Height="16px" Font-Bold="True"
				Font-Italic="True">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</asp:label>
			<TABLE id="Table2" style="Z-INDEX: 128; LEFT: 4px; WIDTH: 962px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" ImagePath="../Images/" TypeMenu="TopMenuOB"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:image id="Image1" style="Z-INDEX: 127; LEFT: 4px; POSITION: absolute; TOP: 32px" runat="server"
				Width="352px" Height="44px" ImageUrl="..\Images\Logo.gif"></asp:image><asp:label id="lblLastLogin" style="Z-INDEX: 124; LEFT: 8px; POSITION: absolute; TOP: 80px"
				runat="server" Font-Names="Tahoma" Font-Size="12px" BackColor="Transparent" Width="360px" Height="16px">Ultima connessione</asp:label><asp:label id="lblUser" style="Z-INDEX: 122; LEFT: 16px; POSITION: absolute; TOP: 188px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="84px" Height="16px"> DESCRIZIONE</asp:label><asp:label id="Label13" style="Z-INDEX: 107; LEFT: 16px; POSITION: absolute; TOP: 227px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="112px" Height="16px">ISINCODE o UIC</asp:label><asp:dropdownlist id="cmbFind" style="Z-INDEX: 105; LEFT: 96px; POSITION: absolute; TOP: 184px" runat="server"
				Width="96px" Height="16px" tabIndex="1" Font-Size="X-Small" Font-Names="Tahoma">
				<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
				<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
				<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
			</asp:dropdownlist><asp:textbox id="txtFind" CssClass="autcmpl" style="Z-INDEX: 102; LEFT: 200px; POSITION: absolute; TOP: 184px" tabIndex="2"
				runat="server" Width="204px" Height="20px" BorderStyle="Groove"></asp:textbox>
			<TABLE id="Table1" style="Z-INDEX: 121; LEFT: 8px; POSITION: absolute; TOP: 104px" cellSpacing="0"
				cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" ImagePath="../Images/" TypeMenu="RicercheObbligazioni"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:label id="Label14" style="Z-INDEX: 120; LEFT: 312px; POSITION: absolute; TOP: 616px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="12px"
				Height="16px" Visible="False">A</asp:label><asp:label id="Label12" style="Z-INDEX: 119; LEFT: 184px; POSITION: absolute; TOP: 616px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="16px" Height="16px" Visible="False">DA</asp:label><asp:label id="Label2" style="Z-INDEX: 118; LEFT: 16px; POSITION: absolute; TOP: 608px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="136px" Height="16px" Visible="False">DATA SCADENZA CEDOLE (GG/MM/AAAA)</asp:label><asp:textbox CssClass="datepicker"  id="txtDtScA" style="Z-INDEX: 117; LEFT: 328px; POSITION: absolute; TOP: 608px"
				tabIndex="5" runat="server" Width="85px" Height="20px" BorderStyle="Groove" Visible="False"></asp:textbox><asp:textbox CssClass="datepicker"  id="txtDtScDa" style="Z-INDEX: 116; LEFT: 208px; POSITION: absolute; TOP: 608px"
				tabIndex="4" runat="server" Width="85px" Height="20px" BorderStyle="Groove" Visible="False"></asp:textbox><asp:label id="Label9" style="Z-INDEX: 113; LEFT: 176px; POSITION: absolute; TOP: 323px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="24px" Height="16px">DA</asp:label><asp:textbox CssClass="datepicker"  id="txtDtMA" style="Z-INDEX: 112; LEFT: 320px; POSITION: absolute; TOP: 320px" tabIndex="6"
				runat="server" Width="85px" Height="20px" BorderStyle="Groove"></asp:textbox><asp:textbox CssClass="datepicker"  id="txtDtMDa" style="Z-INDEX: 111; LEFT: 200px; POSITION: absolute; TOP: 320px"
				tabIndex="5" runat="server" Width="85px" Height="20px" BorderStyle="Groove"></asp:textbox><asp:label id="Label8" style="Z-INDEX: 110; LEFT: 16px; POSITION: absolute; TOP: 323px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="160px" Height="16px">DATA MODIFICA/INSERIMENTO</asp:label><asp:label id="Label7" style="Z-INDEX: 106; LEFT: 184px; POSITION: absolute; TOP: 656px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="24px" Height="16px" Visible="False">DA</asp:label><asp:label id="Label6" style="Z-INDEX: 108; LEFT: 312px; POSITION: absolute; TOP: 656px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="12px" Height="16px" Visible="False">A</asp:label><asp:textbox CssClass="datepicker"  id="txtDtInA" style="Z-INDEX: 109; LEFT: 328px; POSITION: absolute; TOP: 656px"
				tabIndex="8" runat="server" Width="85px" Height="20px" BorderStyle="Groove" Visible="False"></asp:textbox><asp:textbox CssClass="datepicker"  id="txtDtInDa" style="Z-INDEX: 104; LEFT: 208px; POSITION: absolute; TOP: 656px"
				tabIndex="7" runat="server" Width="85px" Height="20px" BorderStyle="Groove" Visible="False"></asp:textbox><asp:label id="Label3" style="Z-INDEX: 101; LEFT: 24px; POSITION: absolute; TOP: 656px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="136px" Height="16px" Visible="False">DATA INSERIMENTO</asp:label><asp:button id="btnFind" style="Z-INDEX: 100; LEFT: 200px; POSITION: absolute; TOP: 384px" tabIndex="8"
				runat="server" BackColor="Gainsboro" Width="204px" Height="24px" BorderStyle="Groove" Text="Ricerca" BorderColor="Transparent"></asp:button><asp:label id="Label1" style="Z-INDEX: 115; LEFT: 12px; POSITION: absolute; TOP: 144px" runat="server"
				Font-Names="Verdana" Font-Size="18px" Width="264px" Height="24px">AGGIORNAMENTO CEDOLE</asp:label>
			<asp:CheckBox id="ckStor" style="Z-INDEX: 133; LEFT: 200px; POSITION: absolute; TOP: 352px" runat="server"
				Height="16px" Width="200px" Font-Size="8pt" Font-Names="Tahoma" Text="RICERCA ANCHE NELLO STORICO"
				tabIndex="7"></asp:CheckBox></form>
	</body>
</HTML>
