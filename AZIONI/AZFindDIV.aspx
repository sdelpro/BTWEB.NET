<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZFindDIV.aspx.vb" Inherits="BTWEB.NET.AZFindDIV"%>
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
			<asp:label id="Label7" style="Z-INDEX: 122; LEFT: 192px; POSITION: absolute; TOP: 475px" runat="server"
				Height="16px" Width="24px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">DA</asp:label>
			<asp:CheckBox id="CkDivNonConfr" style="Z-INDEX: 150; LEFT: 296px; POSITION: absolute; TOP: 256px"
				runat="server" Font-Names="Tahoma" Font-Size="8pt" Width="224px" Height="24px" Text="Dividendo Non Confrontabile"
				tabIndex="7"></asp:CheckBox>
			<asp:CheckBox id="CkDivAcc" style="Z-INDEX: 149; LEFT: 168px; POSITION: absolute; TOP: 256px"
				runat="server" Font-Names="Tahoma" Font-Size="8pt" Width="120px" Height="24px" Text="Acconto Dividendo"
				tabIndex="6"></asp:CheckBox>
			<asp:CheckBox id="CkDivOrd" style="Z-INDEX: 148; LEFT: 24px; POSITION: absolute; TOP: 256px" runat="server"
				Font-Names="Tahoma" Font-Size="8pt" Width="136px" Height="24px" Text="Dividendo Ordinario"
				tabIndex="5"></asp:CheckBox>
			<asp:CheckBox id="CkDivSaldo" style="Z-INDEX: 147; LEFT: 296px; POSITION: absolute; TOP: 232px"
				runat="server" Font-Names="Tahoma" Font-Size="8pt" Width="96px" Height="24px" Text="Saldo Dividendo"
				tabIndex="4"></asp:CheckBox>
			<asp:CheckBox id="CkDivNetto" style="Z-INDEX: 146; LEFT: 168px; POSITION: absolute; TOP: 232px"
				runat="server" Font-Names="Tahoma" Font-Size="8pt" Width="120px" Height="24px" Text="Dividendo Netto"
				tabIndex="3"></asp:CheckBox>
			<asp:CheckBox id="CkDivStr" style="Z-INDEX: 145; LEFT: 24px; POSITION: absolute; TOP: 232px" runat="server"
				Font-Names="Tahoma" Font-Size="8pt" Width="136px" Height="24px" Text="Dividendo Straordinario"
				tabIndex="2"></asp:CheckBox>
			<asp:CheckBox id="CkDivNonConfrD" style="Z-INDEX: 144; LEFT: 296px; POSITION: absolute; TOP: 568px"
				runat="server" Font-Names="Tahoma" Font-Size="8pt" Width="224px" Height="24px" Text="Dividendo Non Confrontabile"
				tabIndex="21"></asp:CheckBox>
			<asp:CheckBox id="CkDivSaldoD" style="Z-INDEX: 143; LEFT: 296px; POSITION: absolute; TOP: 544px"
				runat="server" Font-Names="Tahoma" Font-Size="8pt" Width="96px" Height="24px" Text="Saldo Dividendo"
				tabIndex="18"></asp:CheckBox>
			<asp:CheckBox id="CkDivAccD" style="Z-INDEX: 142; LEFT: 168px; POSITION: absolute; TOP: 568px"
				runat="server" Font-Names="Tahoma" Font-Size="8pt" Width="120px" Height="24px" Text="Acconto Dividendo"
				tabIndex="20"></asp:CheckBox>
			<asp:CheckBox id="CkDivNettoD" style="Z-INDEX: 141; LEFT: 168px; POSITION: absolute; TOP: 544px"
				runat="server" Font-Names="Tahoma" Font-Size="8pt" Width="120px" Height="24px" Text="Dividendo Netto"
				tabIndex="17"></asp:CheckBox>
			<asp:CheckBox id="CkDivOrdD" style="Z-INDEX: 140; LEFT: 24px; POSITION: absolute; TOP: 568px"
				runat="server" Font-Names="Tahoma" Font-Size="8pt" Width="136px" Height="24px" Text="Dividendo Ordinario"
				tabIndex="19"></asp:CheckBox>
			<asp:label id="lbUpd" style="Z-INDEX: 138; LEFT: 320px; POSITION: absolute; TOP: 144px" runat="server"
				Font-Names="Tahoma" Font-Size="18px" Width="400px" Height="24px">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
			<asp:label id="lbHelp6" style="Z-INDEX: 137; LEFT: 16px; POSITION: absolute; TOP: 872px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px"
				Height="16px" Font-Italic="True">• Le NOVITA’ si cercano copiando nel campo “DATA MODIFICA/INSERIMENTO DA” la data di “ultima connessione” riportata qui in alto sotto il logo Brambilla Titoli.</asp:label>
			<asp:label id="lbHelp5" style="Z-INDEX: 136; LEFT: 16px; POSITION: absolute; TOP: 808px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px"
				Height="16px" Font-Italic="True">• La ricerca per DIVIDENDI DELIBERATI può essere effettuata per descrizione (anche solo parte del nome), per codice ISIN o UIC, per DATA PAGAMENTO (range temporale tra due date) oppure per DATA MODIFICA/INSERIMENTO (range temporale tra due date), per tipo dividendo (porre il flag apposito).</asp:label>
			<asp:label id="lbHelp7" style="Z-INDEX: 135; LEFT: 24px; POSITION: absolute; TOP: 912px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px"
				Height="16px" Font-Italic="True">• Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata.</asp:label>
			<asp:label id="lbHelp4" style="Z-INDEX: 134; LEFT: 16px; POSITION: absolute; TOP: 768px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px"
				Height="16px" Font-Italic="True">• Per cambiare l’ordinamento (crescente/decrescente e di colonna) di ogni elenco restituito dalla ricerca bisogna cliccare sull’intestazione della colonna desiderata.</asp:label>
			<asp:label id="lbHelp3" style="Z-INDEX: 120; LEFT: 16px; POSITION: absolute; TOP: 728px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px"
				Height="16px" Font-Italic="True">• Premendo il solo pulsante “Ricerca” senza avere effettuato alcuna selezione si ottiene l’elenco di TUTTI I DIVIDENDI PREANNUNCIATI presenti.</asp:label>
			<asp:label id="lbHelp2" style="Z-INDEX: 124; LEFT: 16px; POSITION: absolute; TOP: 688px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px"
				Height="16px" Font-Italic="True">• Le NOVITÀ si cercano copiando nel campo “DATA MODIFICA/INSERIMENTO DA” la data di ”Ultima Connessione” riportata qui in alto, sotto il logo Brambilla Titoli.</asp:label>
			<asp:label id="lbHelp1" style="Z-INDEX: 107; LEFT: 16px; POSITION: absolute; TOP: 632px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px"
				Height="16px" Font-Italic="True">• La ricerca per DIVIDENDI PREANNUNCIATI può essere effettuata per DATA MODIFICA/INSERIMENTO (range temporale tra due date), per tipo dividendo (porre il flag apposito).</asp:label>
			<asp:label id="Label9" style="Z-INDEX: 133; LEFT: 24px; POSITION: absolute; TOP: 448px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="392px"
				Height="16px" Font-Italic="True" Font-Bold="True">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</asp:label>
			<asp:label id="lbHelpDate" style="Z-INDEX: 132; LEFT: 24px; POSITION: absolute; TOP: 176px"
				runat="server" ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent"
				Width="392px" Height="16px" Font-Italic="True" Font-Bold="True">Attenzione: le date devono essere inserite nella forma GG/MM/AAAA</asp:label>
			<asp:label id="Label13" style="Z-INDEX: 118; LEFT: 320px; POSITION: absolute; TOP: 203px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="4px"
				Height="16px">A</asp:label>
			<asp:label id="Label12" style="Z-INDEX: 114; LEFT: 200px; POSITION: absolute; TOP: 203px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="24px"
				Height="16px">DA</asp:label>
			<asp:textbox id="txtDtMAPre" style="Z-INDEX: 111; LEFT: 344px; POSITION: absolute; TOP: 200px"
				runat="server" Width="85px" Height="20px" BorderStyle="Groove" tabIndex="1"></asp:textbox>
			<asp:textbox id="txtDtMDaPre" style="Z-INDEX: 109; LEFT: 224px; POSITION: absolute; TOP: 200px"
				runat="server" Width="85px" Height="20px" BorderStyle="Groove"></asp:textbox>
			<asp:button id="btnFindDel" style="Z-INDEX: 131; LEFT: 224px; POSITION: absolute; TOP: 600px"
				runat="server" Height="24px" Width="206px" BackColor="Gainsboro" BorderStyle="Groove" Text="Ricerca"
				BorderColor="Transparent" tabIndex="22"></asp:button>
			<asp:label id="Label11" style="Z-INDEX: 130; LEFT: 24px; POSITION: absolute; TOP: 336px" runat="server"
				Height="24px" Width="264px" Font-Size="18px" Font-Names="Tahoma">DIVIDENDI DELIBERATI</asp:label>
			<asp:textbox id="txtDtPagA" style="Z-INDEX: 119; LEFT: 344px; POSITION: absolute; TOP: 472px"
				runat="server" Height="20px" Width="85px" BorderStyle="Groove" tabIndex="13"></asp:textbox>
			<asp:textbox id="txtDtPagDa" style="Z-INDEX: 116; LEFT: 224px; POSITION: absolute; TOP: 472px"
				runat="server" Height="20px" Width="85px" BorderStyle="Groove" tabIndex="12"></asp:textbox>
			<asp:label id="Label6" style="Z-INDEX: 115; LEFT: 24px; POSITION: absolute; TOP: 475px" runat="server"
				Height="16px" Width="92px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">DATA PAGAMENTO</asp:label>
			<asp:label id="Label5" style="Z-INDEX: 129; LEFT: 320px; POSITION: absolute; TOP: 475px" runat="server"
				Height="16px" Width="4px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">A</asp:label>
			<asp:label id="Label4" style="Z-INDEX: 113; LEFT: 192px; POSITION: absolute; TOP: 515px" runat="server"
				Height="16px" Width="24px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">DA</asp:label>
			<asp:label id="Label3" style="Z-INDEX: 108; LEFT: 24px; POSITION: absolute; TOP: 203px" runat="server"
				Height="16px" Width="168px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">DATA MODIFICA/INSERIMENTO</asp:label>
			<asp:label id="lblUser" style="Z-INDEX: 128; LEFT: 24px; POSITION: absolute; TOP: 379px" runat="server"
				Height="16px" Width="128px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black"> DESCRIZIONE</asp:label>
			<asp:image id="Image1" style="Z-INDEX: 127; LEFT: 8px; POSITION: absolute; TOP: 32px" runat="server"
				Height="44px" Width="352px" ImageUrl="..\Images\Logo.gif"></asp:image>
			<asp:Label id="lblLastLogin" style="Z-INDEX: 125; LEFT: 8px; POSITION: absolute; TOP: 80px"
				runat="server" Height="16px" Width="360px" BackColor="Transparent" Font-Size="12px" Font-Names="Tahoma">Ultima connessione</asp:Label>
			<TABLE id="Table1" style="Z-INDEX: 123; LEFT: 8px; POSITION: absolute; TOP: 104px" cellSpacing="0"
				cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD>
						<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" ImagePath="../Images/" TypeMenu="RicercheAzioni"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<TABLE id="Table2" style="Z-INDEX: 126; LEFT: 4px; WIDTH: 962px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
				<TR>
					<TD>
						<ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" ImagePath="../Images/" TypeMenu="TopMenuAZ"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:label id="Label10" style="Z-INDEX: 117; LEFT: 320px; POSITION: absolute; TOP: 515px" runat="server"
				Height="16px" Width="4px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black">A</asp:label>
			<asp:textbox id="txtDtMA" style="Z-INDEX: 112; LEFT: 344px; POSITION: absolute; TOP: 512px" runat="server"
				Height="20px" Width="85px" BorderStyle="Groove" tabIndex="15"></asp:textbox>
			<asp:textbox id="txtDtMDa" style="Z-INDEX: 110; LEFT: 224px; POSITION: absolute; TOP: 512px"
				runat="server" Height="20px" Width="85px" BorderStyle="Groove" tabIndex="14"></asp:textbox>
			<asp:label id="Label8" style="Z-INDEX: 106; LEFT: 24px; POSITION: absolute; TOP: 515px" runat="server"
				Height="16px" Width="160px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">DATA MODIFICA/INSERIMENTO</asp:label>
			<asp:label id="Label2" style="Z-INDEX: 104; LEFT: 24px; POSITION: absolute; TOP: 419px" runat="server"
				Height="16px" Width="144px" BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma"
				ForeColor="Black">ISINCODE o UIC</asp:label>
			<asp:dropdownlist id="cmbFind" style="Z-INDEX: 103; LEFT: 432px; POSITION: absolute; TOP: 376px" runat="server"
				Height="16px" Width="152px" tabIndex="10">
				<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
				<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
				<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
			</asp:dropdownlist>
			<asp:textbox id="txtFind" style="Z-INDEX: 100; LEFT: 224px; POSITION: absolute; TOP: 376px" runat="server"
				Height="20px" Width="200px" BorderStyle="Groove" tabIndex="9"></asp:textbox>
			<asp:button id="btnFindPre" style="Z-INDEX: 101; LEFT: 224px; POSITION: absolute; TOP: 296px"
				runat="server" Height="24px" Width="208px" BackColor="Gainsboro" BorderStyle="Groove" Text="Ricerca"
				BorderColor="Transparent" tabIndex="8"></asp:button>
			<asp:textbox id="txtIsincode" style="Z-INDEX: 105; LEFT: 224px; POSITION: absolute; TOP: 416px"
				runat="server" Height="20px" Width="84px" BorderStyle="Groove" tabIndex="11"></asp:textbox>
			<asp:label id="Label1" style="Z-INDEX: 121; LEFT: 16px; POSITION: absolute; TOP: 144px" runat="server"
				Height="24px" Width="264px" Font-Size="18px" Font-Names="Tahoma">DIVIDENDI PREANNUNCIATI</asp:label>
			<asp:CheckBox id="CkDivStrD" style="Z-INDEX: 139; LEFT: 24px; POSITION: absolute; TOP: 544px"
				runat="server" Font-Names="Tahoma" Font-Size="8pt" Width="136px" Height="24px" Text="Dividendo Straordinario"
				tabIndex="16"></asp:CheckBox></FORM>
	</body>
</HTML>
