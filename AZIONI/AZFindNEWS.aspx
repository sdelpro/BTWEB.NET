<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZFindNEWS.aspx.vb" Inherits="BTWEB.NET.AZFindNEWS"%>
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
			<asp:label id="Label4" style="Z-INDEX: 110; LEFT: 128px; POSITION: absolute; TOP: 280px" runat="server"
				Height="16px" Width="24px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">DA</asp:label>
			<asp:textbox id="txtNews" style="Z-INDEX: 124; LEFT: 160px; POSITION: absolute; TOP: 312px" runat="server"
				Width="200px" Height="20px" BorderStyle="Groove" tabIndex="5"></asp:textbox>
			<asp:label id="Label5" style="Z-INDEX: 123; LEFT: 24px; POSITION: absolute; TOP: 312px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="112px"
				Height="16px">TESTO NEWS</asp:label>
			<asp:label id="lbUpd" style="Z-INDEX: 122; LEFT: 320px; POSITION: absolute; TOP: 144px" runat="server"
				Font-Names="Tahoma" Font-Size="18px" Width="400px" Height="24px">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
			<asp:label id="lbHelp3" style="Z-INDEX: 120; LEFT: 16px; POSITION: absolute; TOP: 504px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px"
				Height="16px" Font-Italic="True">• Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata.</asp:label>
			<asp:label id="lbHelp2" style="Z-INDEX: 121; LEFT: 16px; POSITION: absolute; TOP: 464px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px"
				Height="16px" Font-Italic="True">• Le NOVITA’ si cercano copiando nel campo “DATA NEWS DA” la data di “ultima connessione” riportata qui in alto sotto il logo Brambilla Titoli.</asp:label>
			<asp:label id="lbHelp1" style="Z-INDEX: 107; LEFT: 16px; POSITION: absolute; TOP: 416px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px"
				Height="16px" Font-Italic="True">• La ricerca può essere effettuata per descrizione (anche solo parte del nome), per codice ISIN o UIC, per DATA NEWS (range temporale tra due date) o per testo della news.</asp:label>
			<asp:label id="lbHelpDate" style="Z-INDEX: 119; LEFT: 24px; POSITION: absolute; TOP: 256px"
				runat="server" ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent"
				Width="392px" Height="16px" Font-Italic="True" Font-Bold="True">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</asp:label>
			<asp:label id="Label3" style="Z-INDEX: 106; LEFT: 24px; POSITION: absolute; TOP: 280px" runat="server"
				Height="16px" Width="92px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">DATA NEWS</asp:label>
			<asp:label id="lblUser" style="Z-INDEX: 118; LEFT: 24px; POSITION: absolute; TOP: 184px" runat="server"
				Height="16px" Width="128px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black"> DESCRIZIONE</asp:label>
			<asp:image id="Image1" style="Z-INDEX: 117; LEFT: 8px; POSITION: absolute; TOP: 32px" runat="server"
				Height="44px" Width="352px" ImageUrl="..\Images\Logo.gif"></asp:image>
			<asp:label id="lblLastLogin" style="Z-INDEX: 115; LEFT: 8px; POSITION: absolute; TOP: 80px"
				runat="server" Height="16px" Width="360px" BackColor="Transparent" Font-Size="12px" Font-Names="Tahoma">Ultima connessione</asp:label>
			<TABLE id="Table1" style="Z-INDEX: 114; LEFT: 8px; POSITION: absolute; TOP: 104px" cellSpacing="0"
				cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD>
						<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" ImagePath="../Images/" TypeMenu="RicercheAzioni"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<TABLE id="Table2" style="Z-INDEX: 116; LEFT: 4px; WIDTH: 962px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
				<TR>
					<TD>
						<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" ImagePath="../Images/" TypeMenu="TopMenuAZ"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:label id="Label10" style="Z-INDEX: 112; LEFT: 256px; POSITION: absolute; TOP: 280px" runat="server"
				Height="16px" Width="4px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">A</asp:label>
			<asp:label id="Label9" style="Z-INDEX: 111; LEFT: 128px; POSITION: absolute; TOP: 280px" runat="server"
				Height="16px" Width="24px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">DA</asp:label>
			<asp:textbox id="txtDtA" style="Z-INDEX: 109; LEFT: 280px; POSITION: absolute; TOP: 280px" runat="server"
				Height="20px" Width="85px" BorderStyle="Groove" tabIndex="4"></asp:textbox>
			<asp:textbox id="txtDtDa" style="Z-INDEX: 108; LEFT: 160px; POSITION: absolute; TOP: 280px" runat="server"
				Height="20px" Width="85px" BorderStyle="Groove" tabIndex="3"></asp:textbox>
			<asp:label id="Label2" style="Z-INDEX: 104; LEFT: 24px; POSITION: absolute; TOP: 228px" runat="server"
				Height="16px" Width="120px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">ISINCODE o UIC</asp:label>
			<asp:dropdownlist id="cmbFind" style="Z-INDEX: 103; LEFT: 356px; POSITION: absolute; TOP: 184px" runat="server"
				Height="16px" Width="152px" tabIndex="1">
				<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
				<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
				<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
			</asp:dropdownlist>
			<asp:textbox id="txtFind" style="Z-INDEX: 100; LEFT: 160px; POSITION: absolute; TOP: 184px" runat="server"
				Height="20px" Width="192px" BorderStyle="Groove"></asp:textbox>
			<asp:button id="btnFind" style="Z-INDEX: 102; LEFT: 160px; POSITION: absolute; TOP: 360px" runat="server"
				Height="24px" Width="208px" BackColor="Gainsboro" BorderStyle="Groove" Text="Ricerca" BorderColor="Transparent"
				tabIndex="6"></asp:button>
			<asp:textbox id="txtIsincode" style="Z-INDEX: 105; LEFT: 160px; POSITION: absolute; TOP: 224px"
				runat="server" Height="20px" Width="84px" BorderStyle="Groove" tabIndex="2"></asp:textbox>
			<asp:label id="Label1" style="Z-INDEX: 113; LEFT: 16px; POSITION: absolute; TOP: 144px" runat="server"
				Height="24px" Width="264px" Font-Size="18px" Font-Names="Tahoma">NEWS AZIONI</asp:label></FORM>
	</body>
</HTML>
