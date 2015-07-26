<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBFindConv.aspx.vb" Inherits="BTWEB.NET.OBFindConv"%>
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
			<asp:image id="Image1" style="Z-INDEX: 108; LEFT: 8px; POSITION: absolute; TOP: 32px" runat="server"
				ImageUrl="..\Images\Logo.gif" Width="352px" Height="44px"></asp:image>
			<asp:label id="lbUpd" style="Z-INDEX: 127; LEFT: 320px; POSITION: absolute; TOP: 144px" runat="server"
				Height="24px" Width="400px" Font-Size="18px" Font-Names="Tahoma">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
			<asp:textbox id="txtIsincode" style="Z-INDEX: 117; LEFT: 192px; POSITION: absolute; TOP: 224px"
				tabIndex="3" runat="server" Height="20px" Width="112px" BorderStyle="Groove"></asp:textbox>
			<asp:label id="lbHelp1" style="Z-INDEX: 116; LEFT: 16px; POSITION: absolute; TOP: 336px" runat="server"
				Height="16px" Width="456px" Font-Names="Tahoma" Font-Size="9pt" Font-Italic="True" BackColor="Transparent"
				ForeColor="#0000C0">• Per ricercare un solo Titolo: inserirne la descrizione (anche solo parte del nome), o il codice ISIN o UIC; per ottenere l’elenco di TUTTE le Obbligazioni Convertibili basta premere il pulsante ‘Ricerca’ senza avere effettuato alcun’altra selezione.</asp:label>
			<asp:label id="lbHelp2" style="Z-INDEX: 112; LEFT: 16px; POSITION: absolute; TOP: 392px" runat="server"
				Height="16px" Width="456px" Font-Names="Tahoma" Font-Size="9pt" Font-Italic="True" BackColor="Transparent"
				ForeColor="#0000C0">• Selezionando l’obbligazione desiderata si accede alla consultazione della Tabella di Convertibilità e alla relativa Tabella di Parità teorica con le azioni.</asp:label>
			<asp:label id="lbHelp3" style="Z-INDEX: 113; LEFT: 16px; POSITION: absolute; TOP: 432px" runat="server"
				Height="16px" Width="456px" Font-Names="Tahoma" Font-Size="9pt" Font-Italic="True" BackColor="Transparent"
				ForeColor="#0000C0">• Spuntando ‘RICERCA ANCHE NELLO STORICO’ si aggiungono automaticamente anche i Titoli storicizzati (non più attivi). Questa opzione può rallentare il lavoro.</asp:label>
			<asp:label id="lbHelp4" style="Z-INDEX: 114; LEFT: 16px; POSITION: absolute; TOP: 472px" runat="server"
				Height="16px" Width="456px" Font-Names="Tahoma" Font-Size="9pt" Font-Italic="True" BackColor="Transparent"
				ForeColor="#0000C0">• Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata.</asp:label>
			<asp:CheckBox id="ckStor" style="Z-INDEX: 115; LEFT: 192px; POSITION: absolute; TOP: 256px" runat="server"
				Height="16px" Width="200px" Font-Size="8pt" Font-Names="Tahoma" Text="RICERCA ANCHE NELLO STORICO"
				tabIndex="4"></asp:CheckBox>
			<TABLE id="Table2" style="Z-INDEX: 111; LEFT: 4px; WIDTH: 962px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" ImagePath="../Images/" TypeMenu="TopMenuOB"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:label id="lblUser" style="Z-INDEX: 110; LEFT: 16px; POSITION: absolute; TOP: 187px" runat="server"
				Width="60px" Height="16px" ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent"> DESCRIZIONE</asp:label><asp:label id="Label13" style="Z-INDEX: 103; LEFT: 16px; POSITION: absolute; TOP: 227px" runat="server"
				Width="80px" Height="16px" ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent">ISINCODE o UIC</asp:label><asp:dropdownlist id="cmbFind" style="Z-INDEX: 102; LEFT: 96px; POSITION: absolute; TOP: 184px" runat="server"
				Width="96px" Height="16px" tabIndex="1" Font-Names="Tahoma">
				<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
				<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
				<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
			</asp:dropdownlist><asp:textbox id="txtFind" style="Z-INDEX: 101; LEFT: 192px; POSITION: absolute; TOP: 184px" tabIndex="2"
				runat="server" Width="204px" Height="20px" BorderStyle="Groove"></asp:textbox><asp:button id="btnFind" style="Z-INDEX: 100; LEFT: 192px; POSITION: absolute; TOP: 288px" tabIndex="5"
				runat="server" Width="210px" Height="26px" BackColor="Gainsboro" BorderStyle="Groove" BorderColor="Transparent" Text="Ricerca"></asp:button><asp:label id="Label1" style="Z-INDEX: 105; LEFT: 8px; POSITION: absolute; TOP: 144px" runat="server"
				Width="280px" Height="24px" Font-Names="Verdana" Font-Size="18px">OBBLIGAZIONI CONVERTIBILI</asp:label><asp:checkbox id="ckConv" style="Z-INDEX: 106; LEFT: 16px; POSITION: absolute; TOP: 560px" tabIndex="4"
				runat="server" Width="336px" Height="6px" Font-Names="Tahoma" Font-Size="12px" Text="VISUALIZZA ELENCO OBBLIGAZIONI CONVERTIBILI" Visible="False"></asp:checkbox>
			<TABLE id="Table1" style="Z-INDEX: 109; LEFT: 4px; POSITION: absolute; TOP: 104px" cellSpacing="0"
				cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" ImagePath="../Images/" TypeMenu="RicercheObbligazioni"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:label id="lblLastLogin" style="Z-INDEX: 107; LEFT: 8px; POSITION: absolute; TOP: 80px"
				runat="server" Width="360px" Height="16px" Font-Names="Tahoma" Font-Size="12px" BackColor="Transparent">Ultima connessione</asp:label></form>
	</body>
</HTML>
