<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBFindRegol.aspx.vb" Inherits="BTWEB.NET.OBFindRegol"%>
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
	<body background="..\Images\sfHome.JPG" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:image id="Image1" style="Z-INDEX: 119; LEFT: 4px; POSITION: absolute; TOP: 32px" runat="server"
				Height="44px" Width="352px" ImageUrl="..\Images\Logo.gif"></asp:image>
			<asp:label id="Label4" style="Z-INDEX: 130; LEFT: 16px; POSITION: absolute; TOP: 264px" runat="server"
				Width="144px" Height="16px" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black" BackColor="Transparent">TESTO REGOLAMENTO</asp:label>
			<asp:textbox id="txtReg" style="Z-INDEX: 105; LEFT: 200px; POSITION: absolute; TOP: 256px" tabIndex="4"
				runat="server" Width="192px" Height="20px" BorderStyle="Groove"></asp:textbox>
			<asp:label id="lbUpd" style="Z-INDEX: 129; LEFT: 320px; POSITION: absolute; TOP: 144px" runat="server"
				Width="400px" Height="24px" Font-Names="Tahoma" Font-Size="18px">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
			<asp:label id="lbHelp1" style="Z-INDEX: 128; LEFT: 16px; POSITION: absolute; TOP: 440px" runat="server"
				Width="456px" Height="16px" Font-Size="9pt" Font-Names="Tahoma" Font-Italic="True" BackColor="Transparent"
				ForeColor="#0000C0">• La ricerca può essere richiesta per descrizione (anche solo parte del nome), per codice ISIN o UIC, per Testo del Regolamento e all’interno del range temporale tra due date; la ricerca per Testo del Regolamento rallenterà considerevolmente i tempi di risposta.</asp:label>
			<asp:label id="lbHelp2" style="Z-INDEX: 123; LEFT: 16px; POSITION: absolute; TOP: 504px" runat="server"
				Width="456px" Height="16px" Font-Size="9pt" Font-Names="Tahoma" Font-Italic="True" BackColor="Transparent"
				ForeColor="#0000C0">• Le NOVITÀ si cercano copiando nel campo “DATA MODIFICA/INSERIMENTO DA” la data di ”Ultima Connessione” riportata qui in alto, sotto il logo Brambilla Titoli. Si ricorda che sono presenti solo i regolamenti delle obbligazioni emesse a partire dal 1990, se disponibili.</asp:label>
			<asp:label id="lbHelp3" style="Z-INDEX: 124; LEFT: 16px; POSITION: absolute; TOP: 568px" runat="server"
				Width="456px" Height="16px" Font-Size="9pt" Font-Names="Tahoma" Font-Italic="True" BackColor="Transparent"
				ForeColor="#0000C0">• Spuntando ‘RICERCA ANCHE NELLO STORICO’ si aggiungono automaticamente anche i Titoli storicizzati (non più attivi). Questa opzione può rallentare il lavoro.</asp:label>
			<asp:label id="lbHelp4" style="Z-INDEX: 125; LEFT: 16px; POSITION: absolute; TOP: 608px" runat="server"
				Width="456px" Height="16px" Font-Size="9pt" Font-Names="Tahoma" Font-Italic="True" BackColor="Transparent"
				ForeColor="#0000C0">• Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata.</asp:label>
			<asp:CheckBox id="ckStor" style="Z-INDEX: 127; LEFT: 208px; POSITION: absolute; TOP: 360px" runat="server"
				Width="200px" Height="16px" Font-Names="Tahoma" Font-Size="8pt" Text="RICERCA ANCHE NELLO STORICO"
				tabIndex="7"></asp:CheckBox><asp:label id="lbHelpDate" style="Z-INDEX: 126; LEFT: 16px; POSITION: absolute; TOP: 288px"
				runat="server" Height="16px" Width="394px" Font-Bold="True" ForeColor="#0000C0" BackColor="Transparent" Font-Size="8pt"
				Font-Names="Tahoma" Font-Italic="True">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</asp:label>
			<TABLE id="Table2" style="Z-INDEX: 122; LEFT: 4px; WIDTH: 962px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" TypeMenu="TopMenuOB" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:label id="lblUser" style="Z-INDEX: 121; LEFT: 16px; POSITION: absolute; TOP: 188px" runat="server"
				Height="16px" Width="72px" ForeColor="Black" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"> DESCRIZIONE</asp:label><asp:label id="Label10" style="Z-INDEX: 116; LEFT: 304px; POSITION: absolute; TOP: 312px" runat="server"
				Height="16px" Width="4px" ForeColor="Black" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma">A</asp:label><asp:label id="Label9" style="Z-INDEX: 115; LEFT: 176px; POSITION: absolute; TOP: 312px" runat="server"
				Height="16px" Width="24px" ForeColor="Black" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma">DA</asp:label><asp:textbox id="txtDtMA" style="Z-INDEX: 114; LEFT: 320px; POSITION: absolute; TOP: 312px" tabIndex="6"
				runat="server" Height="20px" Width="85px" BorderStyle="Groove"></asp:textbox><asp:textbox id="txtDtMDa" style="Z-INDEX: 113; LEFT: 208px; POSITION: absolute; TOP: 312px"
				tabIndex="5" runat="server" Height="20px" Width="85px" BorderStyle="Groove"></asp:textbox><asp:label id="Label8" style="Z-INDEX: 112; LEFT: 16px; POSITION: absolute; TOP: 312px" runat="server"
				Height="16px" Width="160px" ForeColor="Black" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma">DATA MODIFICA/INSERIMENTO</asp:label><asp:label id="Label7" style="Z-INDEX: 109; LEFT: 184px; POSITION: absolute; TOP: 640px" runat="server"
				Height="16px" Width="24px" ForeColor="Black" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" Visible="False">DA</asp:label><asp:label id="Label6" style="Z-INDEX: 110; LEFT: 312px; POSITION: absolute; TOP: 640px" runat="server"
				Height="16px" Width="8px" ForeColor="Black" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" Visible="False">A</asp:label><asp:textbox id="txtDtInA" style="Z-INDEX: 111; LEFT: 328px; POSITION: absolute; TOP: 640px"
				tabIndex="3" runat="server" Height="20px" Width="85px" BorderStyle="Groove" Visible="False"></asp:textbox><asp:textbox id="txtDtInDa" style="Z-INDEX: 108; LEFT: 216px; POSITION: absolute; TOP: 640px"
				runat="server" Height="20px" Width="85px" BorderStyle="Groove" Visible="False"></asp:textbox><asp:label id="Label3" style="Z-INDEX: 107; LEFT: 24px; POSITION: absolute; TOP: 640px" runat="server"
				Height="16px" Width="104px" ForeColor="Black" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" Visible="False">DATA INSERIMENTO</asp:label><asp:label id="Label2" style="Z-INDEX: 104; LEFT: 16px; POSITION: absolute; TOP: 228px" runat="server"
				Height="16px" Width="144px" ForeColor="Black" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma">ISINCODE o UIC</asp:label><asp:dropdownlist id="cmbFind" style="Z-INDEX: 102; LEFT: 112px; POSITION: absolute; TOP: 184px" runat="server"
				Height="16px" Width="88px" tabIndex="1" Font-Names="Tahoma">
				<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
				<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
				<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
			</asp:dropdownlist><asp:textbox id="txtFind" style="Z-INDEX: 100; LEFT: 200px; POSITION: absolute; TOP: 184px" tabIndex="2"
				runat="server" Height="20px" Width="192px" BorderStyle="Groove"></asp:textbox><asp:button id="btnFind" style="Z-INDEX: 101; LEFT: 208px; POSITION: absolute; TOP: 400px" tabIndex="8"
				runat="server" Height="24px" Width="197px" BackColor="Gainsboro" BorderStyle="Groove" BorderColor="Transparent" Text="Ricerca"></asp:button><asp:textbox id="txtIsincode" style="Z-INDEX: 106; LEFT: 200px; POSITION: absolute; TOP: 225px"
				tabIndex="3" runat="server" Height="20px" Width="112px" BorderStyle="Groove"></asp:textbox><asp:label id="Label1" style="Z-INDEX: 117; LEFT: 16px; POSITION: absolute; TOP: 144px" runat="server"
				Height="24px" Width="264px" Font-Size="18px" Font-Names="Tahoma"> REGOLAMENTI</asp:label>
			<TABLE id="Table1" style="Z-INDEX: 120; LEFT: 8px; POSITION: absolute; TOP: 104px" cellSpacing="0"
				cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" TypeMenu="RicercheObbligazioni" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:label id="lblLastLogin" style="Z-INDEX: 118; LEFT: 4px; POSITION: absolute; TOP: 80px"
				runat="server" Height="16px" Width="360px" BackColor="Transparent" Font-Size="12px" Font-Names="Tahoma">Ultima connessione</asp:label></form>
	</body>
</HTML>
