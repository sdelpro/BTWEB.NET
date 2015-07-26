<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZFindCDA.aspx.vb" Inherits="BTWEB.NET.AZFindCDA"%>
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
			<asp:label id="Label7" style="Z-INDEX: 116; LEFT: 176px; POSITION: absolute; TOP: 283px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="24px"
				Height="16px">DA</asp:label>
			<asp:label id="Label4" style="Z-INDEX: 127; LEFT: 16px; POSITION: absolute; TOP: 355px" runat="server"
				Height="16px" Width="160px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">TIPO CDA</asp:label>
			<asp:dropdownlist id="cmbTipoCDA" style="Z-INDEX: 126; LEFT: 208px; POSITION: absolute; TOP: 352px"
				tabIndex="7" runat="server" Height="16px" Width="200px">
				<asp:ListItem Value="TUTTI">TUTTI</asp:ListItem>
				<asp:ListItem Value="BILANCIO">BILANCIO</asp:ListItem>
				<asp:ListItem Value="1&#176; TRIMESTRE">1&#176; TRIMESTRE</asp:ListItem>
				<asp:ListItem Value="2&#176; TRIMESTRE">2&#176; TRIMESTRE</asp:ListItem>
				<asp:ListItem Value="SEMESTRALE">SEMESTRALE</asp:ListItem>
				<asp:ListItem Value="3&#176; TRIMESTRE">3&#176; TRIMESTRE</asp:ListItem>
				<asp:ListItem Value="4&#176; TRIMESTRE">4&#176; TRIMESTRE</asp:ListItem>
				<asp:ListItem Value="ALTRO">ALTRO</asp:ListItem>
			</asp:dropdownlist>
			<asp:label id="lbUpd" style="Z-INDEX: 125; LEFT: 320px; POSITION: absolute; TOP: 144px" runat="server"
				Height="24px" Width="400px" Font-Size="18px" Font-Names="Tahoma">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
			<asp:label id="lbHelp2" style="Z-INDEX: 121; LEFT: 16px; POSITION: absolute; TOP: 480px" runat="server"
				Height="16px" Width="456px" BackColor="Transparent" Font-Size="9pt" Font-Names="Tahoma"
				ForeColor="#0000C0" Font-Italic="True">• Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata.   </asp:label>
			<asp:label id="lbHelp1" style="Z-INDEX: 105; LEFT: 16px; POSITION: absolute; TOP: 432px" runat="server"
				Height="16px" Width="456px" BackColor="Transparent" Font-Size="9pt" Font-Names="Tahoma"
				ForeColor="#0000C0" Font-Italic="True">• La ricerca può essere effettuata per descrizione (anche solo parte del nome), per codice ISIN o UIC, per Tipo CDA, per DATA CDA (range temporale tra due date) oppure per DATA MODIFICA/INSERIMENTO (range temporale tra due date).</asp:label>
			<asp:label id="lbHelpDate" style="Z-INDEX: 124; LEFT: 16px; POSITION: absolute; TOP: 256px"
				runat="server" Height="16px" Width="392px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="#0000C0" Font-Italic="True" Font-Bold="True">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</asp:label>
			<asp:textbox id="txtDtA" style="Z-INDEX: 114; LEFT: 328px; POSITION: absolute; TOP: 280px" runat="server"
				Width="85px" Height="20px" BorderStyle="Groove" tabIndex="4"></asp:textbox>
			<asp:textbox id="txtDtDa" style="Z-INDEX: 112; LEFT: 208px; POSITION: absolute; TOP: 280px" runat="server"
				Width="85px" Height="20px" BorderStyle="Groove" tabIndex="3"></asp:textbox>
			<asp:label id="Label6" style="Z-INDEX: 111; LEFT: 16px; POSITION: absolute; TOP: 283px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="92px"
				Height="16px">DATA CDA</asp:label>
			<asp:label id="Label5" style="Z-INDEX: 123; LEFT: 304px; POSITION: absolute; TOP: 283px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="4px"
				Height="16px">A</asp:label>
			<asp:label id="Label3" style="Z-INDEX: 107; LEFT: 16px; POSITION: absolute; TOP: 323px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="160px"
				Height="16px">DATA MODIFICA/INSERIMENTO</asp:label>
			<asp:label id="lblUser" style="Z-INDEX: 122; LEFT: 16px; POSITION: absolute; TOP: 187px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="128px"
				Height="16px"> DESCRIZIONE</asp:label>
			<asp:image id="Image1" style="Z-INDEX: 120; LEFT: 8px; POSITION: absolute; TOP: 32px" runat="server"
				Width="352px" Height="44px" ImageUrl="..\Images\Logo.gif"></asp:image>
			<asp:Label id="lblLastLogin" style="Z-INDEX: 118; LEFT: 8px; POSITION: absolute; TOP: 80px"
				runat="server" Font-Names="Tahoma" Font-Size="12px" BackColor="Transparent" Width="360px"
				Height="16px">Ultima connessione</asp:Label>
			<TABLE id="Table1" style="Z-INDEX: 117; LEFT: 8px; POSITION: absolute; TOP: 104px" cellSpacing="0"
				cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD>
						<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" TypeMenu="RicercheAzioni" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<TABLE id="Table2" style="Z-INDEX: 119; LEFT: 4px; WIDTH: 962px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
				<TR>
					<TD>
						<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" TypeMenu="TopMenuAZ" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:label id="Label10" style="Z-INDEX: 113; LEFT: 304px; POSITION: absolute; TOP: 323px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="4px"
				Height="16px">A</asp:label>
			<asp:label id="Label9" style="Z-INDEX: 110; LEFT: 176px; POSITION: absolute; TOP: 323px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="24px"
				Height="16px">DA</asp:label>
			<asp:textbox id="txtDtMA" style="Z-INDEX: 109; LEFT: 328px; POSITION: absolute; TOP: 320px" runat="server"
				Width="85px" Height="20px" BorderStyle="Groove" tabIndex="6"></asp:textbox>
			<asp:textbox id="txtDtMDa" style="Z-INDEX: 108; LEFT: 208px; POSITION: absolute; TOP: 320px"
				runat="server" Width="85px" Height="20px" BorderStyle="Groove" tabIndex="5"></asp:textbox>
			<asp:label id="Label2" style="Z-INDEX: 103; LEFT: 16px; POSITION: absolute; TOP: 227px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="144px"
				Height="16px">ISINCODE o UIC</asp:label>
			<asp:dropdownlist id="cmbFind" style="Z-INDEX: 102; LEFT: 400px; POSITION: absolute; TOP: 184px" runat="server"
				Width="152px" Height="16px" tabIndex="1">
				<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
				<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
				<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
			</asp:dropdownlist>
			<asp:textbox id="txtFind" style="Z-INDEX: 100; LEFT: 208px; POSITION: absolute; TOP: 184px" runat="server"
				Width="192px" Height="20px" BorderStyle="Groove"></asp:textbox>
			<asp:button id="btnFind" style="Z-INDEX: 101; LEFT: 208px; POSITION: absolute; TOP: 392px" runat="server"
				BackColor="Gainsboro" Width="208px" Height="24px" BorderStyle="Groove" BorderColor="Transparent"
				Text="Ricerca" tabIndex="8"></asp:button>
			<asp:textbox id="txtIsincode" style="Z-INDEX: 104; LEFT: 208px; POSITION: absolute; TOP: 224px"
				runat="server" Width="84px" Height="20px" BorderStyle="Groove" tabIndex="2"></asp:textbox>
			<asp:label id="Label1" style="Z-INDEX: 115; LEFT: 16px; POSITION: absolute; TOP: 144px" runat="server"
				Font-Names="Tahoma" Font-Size="18px" Width="264px" Height="24px">CDA</asp:label></FORM>
	</body>
</HTML>
