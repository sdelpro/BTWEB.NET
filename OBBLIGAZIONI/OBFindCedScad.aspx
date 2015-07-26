<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBFindCedScad.aspx.vb" Inherits="BTWEB.NET.OBFindCedScad"%>
<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="..\Images\sfHome.jpg" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:image id="Image1" style="Z-INDEX: 112; LEFT: 4px; POSITION: absolute; TOP: 32px" runat="server"
				ImageUrl="..\Images\Logo.gif" Height="44px" Width="352px"></asp:image><asp:label id="lbUpd" style="Z-INDEX: 130; LEFT: 320px; POSITION: absolute; TOP: 144px" runat="server"
				Height="24px" Width="400px" Font-Names="Tahoma" Font-Size="18px">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label><asp:textbox id="txtIsincode" style="Z-INDEX: 129; LEFT: 200px; POSITION: absolute; TOP: 224px"
				tabIndex="3" runat="server" Height="20px" Width="120px" BorderStyle="Groove"></asp:textbox><asp:label id="lbHelp5" style="Z-INDEX: 128; LEFT: 16px; POSITION: absolute; TOP: 600px" runat="server"
				Height="16px" Width="456px" Font-Names="Tahoma" Font-Size="9pt" Font-Italic="True" ForeColor="#0000C0" BackColor="Transparent">• Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata.</asp:label><asp:label id="lbHelp4" style="Z-INDEX: 126; LEFT: 16px; POSITION: absolute; TOP: 560px" runat="server"
				Height="16px" Width="456px" Font-Names="Tahoma" Font-Size="9pt" Font-Italic="True" ForeColor="#0000C0" BackColor="Transparent">• Spuntando ‘RICERCA ANCHE NELLO STORICO’ si aggiungono automaticamente anche i Titoli storicizzati (non più attivi). Questa opzione può rallentare il lavoro.</asp:label><asp:label id="lbHelp3" style="Z-INDEX: 124; LEFT: 16px; POSITION: absolute; TOP: 520px" runat="server"
				Height="16px" Width="456px" Font-Names="Tahoma" Font-Size="9pt" Font-Italic="True" ForeColor="#0000C0" BackColor="Transparent">• Premendo il solo pulsante ‘Ricerca’ senza avere effettuato alcuna selezione si ottiene l’elenco di TUTTE le Cedole presenti.</asp:label><asp:label id="lbHelp2" style="Z-INDEX: 123; LEFT: 16px; POSITION: absolute; TOP: 480px" runat="server"
				Height="16px" Width="456px" Font-Names="Tahoma" Font-Size="9pt" Font-Italic="True" ForeColor="#0000C0" BackColor="Transparent">• La ricerca di cedole Pro Rata si esegue spuntando “RICERCA SOLO PRO RATA” e/o riempiendo i campi “DATA PRO RATA” per ottenere il periodo in cui cercarle.</asp:label><asp:label id="lbHelp1" style="Z-INDEX: 103; LEFT: 16px; POSITION: absolute; TOP: 440px" runat="server"
				Height="16px" Width="456px" Font-Names="Tahoma" Font-Size="9pt" Font-Italic="True" ForeColor="#0000C0" BackColor="Transparent">• La ricerca può essere richiesta per descrizione (anche solo parte del nome), per codice ISIN o UIC, oppure all’interno del range temporale tra le due date.</asp:label><asp:checkbox id="ckPro" style="Z-INDEX: 125; LEFT: 192px; POSITION: absolute; TOP: 360px" tabIndex="7"
				runat="server" Height="16px" Width="200px" Font-Names="Tahoma" Font-Size="8pt" Text="RICERCA SOLO CEDOLE PRO RATA"></asp:checkbox><asp:checkbox id="ckStor" style="Z-INDEX: 122; LEFT: 192px; POSITION: absolute; TOP: 328px" tabIndex="6"
				runat="server" Height="16px" Width="200px" Font-Names="Tahoma" Font-Size="8pt" Text="RICERCA ANCHE NELLO STORICO"></asp:checkbox><asp:label id="lbHelpDate" style="Z-INDEX: 121; LEFT: 16px; POSITION: absolute; TOP: 264px"
				runat="server" Height="16px" Width="394px" Font-Names="Tahoma" Font-Size="8pt" Font-Italic="True" ForeColor="#0000C0" BackColor="Transparent" Font-Bold="True">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</asp:label>
			<TABLE id="Table2" style="Z-INDEX: 120; LEFT: 4px; WIDTH: 962px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" TypeMenu="TopMenuOB" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:label id="lblLastLogin" style="Z-INDEX: 119; LEFT: 8px; POSITION: absolute; TOP: 80px"
				runat="server" Height="16px" Width="360px" Font-Names="Tahoma" Font-Size="12px" BackColor="Transparent">Ultima connessione</asp:label><asp:label id="lblUser" style="Z-INDEX: 118; LEFT: 12px; POSITION: absolute; TOP: 188px" runat="server"
				Height="16px" Width="80px" Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" BackColor="Transparent"> DESCRIZIONE</asp:label><asp:label id="Label3" style="Z-INDEX: 106; LEFT: 12px; POSITION: absolute; TOP: 228px" runat="server"
				Height="16px" Width="144px" Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" BackColor="Transparent">ISINCODE o UIC</asp:label><asp:dropdownlist id="cmbFind" style="Z-INDEX: 105; LEFT: 96px; POSITION: absolute; TOP: 184px" tabIndex="1"
				runat="server" Height="16px" Width="96px" Font-Names="Tahoma">
				<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
				<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
				<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
			</asp:dropdownlist><asp:textbox id="txtFind" style="Z-INDEX: 102; LEFT: 200px; POSITION: absolute; TOP: 184px" tabIndex="2"
				runat="server" Height="20px" Width="200px" BorderStyle="Groove"></asp:textbox><asp:label id="Label14" style="Z-INDEX: 117; LEFT: 298px; POSITION: absolute; TOP: 291px" runat="server"
				Height="16px" Width="12px" Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" BackColor="Transparent">A</asp:label><asp:label id="Label12" style="Z-INDEX: 116; LEFT: 167px; POSITION: absolute; TOP: 291px" runat="server"
				Height="16px" Width="16px" Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" BackColor="Transparent">DA</asp:label><asp:label id="Label2" style="Z-INDEX: 115; LEFT: 16px; POSITION: absolute; TOP: 291px" runat="server"
				Height="16px" Width="136px" Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" BackColor="Transparent">DATA SCADENZA CEDOLE</asp:label><asp:textbox id="txtDtScA" style="Z-INDEX: 114; LEFT: 328px; POSITION: absolute; TOP: 288px"
				tabIndex="5" runat="server" Height="20px" Width="85px" BorderStyle="Groove"></asp:textbox><asp:textbox id="txtDtScDa" style="Z-INDEX: 113; LEFT: 198px; POSITION: absolute; TOP: 288px"
				tabIndex="4" runat="server" Height="20px" Width="85px" BorderStyle="Groove"></asp:textbox>
			<TABLE id="Table1" style="Z-INDEX: 111; LEFT: 8px; POSITION: absolute; TOP: 104px" cellSpacing="0"
				cols="2" cellPadding="0" width="100%" border="0" DESIGNTIMEDRAGDROP="35">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" TypeMenu="RicercheObbligazioni" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:textbox id="txtDtPRA" style="Z-INDEX: 110; LEFT: 352px; POSITION: absolute; TOP: 680px"
				tabIndex="7" runat="server" Height="20px" Width="85px" BorderStyle="Groove" Visible="False"></asp:textbox><asp:label id="Label11" style="Z-INDEX: 109; LEFT: 328px; POSITION: absolute; TOP: 680px" runat="server"
				Height="16px" Width="24px" Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" BackColor="Transparent" Visible="False">A</asp:label><asp:textbox id="txtDtPRDa" style="Z-INDEX: 108; LEFT: 232px; POSITION: absolute; TOP: 680px"
				tabIndex="6" runat="server" Height="20px" Width="85px" BorderStyle="Groove" Visible="False"></asp:textbox><asp:label id="Label5" style="Z-INDEX: 107; LEFT: 208px; POSITION: absolute; TOP: 680px" runat="server"
				Height="16px" Width="24px" Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" BackColor="Transparent" Visible="False">DA</asp:label><asp:label id="Label4" style="Z-INDEX: 104; LEFT: 40px; POSITION: absolute; TOP: 680px" runat="server"
				Height="16px" Width="105px" Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" BackColor="Transparent" Visible="False"> DATA PRO RATA</asp:label><asp:button id="btnFind" style="Z-INDEX: 100; LEFT: 200px; POSITION: absolute; TOP: 400px" tabIndex="8"
				runat="server" Height="24px" Width="213px" BorderStyle="Groove" BackColor="Gainsboro" Text="Ricerca" BorderColor="Transparent"></asp:button><asp:label id="Label1" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 144px" runat="server"
				Height="24px" Width="264px" Font-Names="Verdana" Font-Size="18px">CEDOLE IN SCADENZA</asp:label></form>
	</body>
</HTML>
