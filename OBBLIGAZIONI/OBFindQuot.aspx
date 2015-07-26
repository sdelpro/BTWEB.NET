<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBFindQuot.aspx.vb" Inherits="BTWEB.NET.OBFindQuot"%>
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
		<FORM id="Form1" method="post" runat="server">
			<TABLE id="Table2" style="Z-INDEX: 111; LEFT: 4px; WIDTH: 962px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" TypeMenu="TopMenuOB" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:label id="lbUpd" style="Z-INDEX: 127; LEFT: 320px; POSITION: absolute; TOP: 144px" runat="server"
				Width="400px" Height="24px" Font-Names="Tahoma" Font-Size="18px">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label>
			<asp:label id="lblUser" style="Z-INDEX: 117; LEFT: 24px; POSITION: absolute; TOP: 184px" runat="server"
				Font-Size="8pt" Font-Names="Tahoma" Height="16px" Width="128px" ForeColor="Black" BackColor="Transparent"> DESCRIZIONE</asp:label>
			<asp:label id="Label2" style="Z-INDEX: 103; LEFT: 24px; POSITION: absolute; TOP: 228px" runat="server"
				Font-Size="8pt" Font-Names="Tahoma" Height="16px" Width="136px" ForeColor="Black" BackColor="Transparent">ISINCODE o UIC</asp:label>
			<asp:dropdownlist id="cmbFind" style="Z-INDEX: 102; LEFT: 356px; POSITION: absolute; TOP: 184px" tabIndex="1"
				runat="server" Height="16px" Width="152px">
				<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
				<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
				<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
			</asp:dropdownlist>
			<asp:textbox id="txtFind" style="Z-INDEX: 100; LEFT: 160px; POSITION: absolute; TOP: 184px" runat="server"
				Height="20px" Width="192px" BorderStyle="Groove"></asp:textbox>
			<asp:textbox id="txtIsincode" style="Z-INDEX: 105; LEFT: 160px; POSITION: absolute; TOP: 224px"
				tabIndex="2" runat="server" Height="20px" Width="96px" BorderStyle="Groove"></asp:textbox>
			<asp:CheckBox id="ckStor" style="Z-INDEX: 116; LEFT: 152px; POSITION: absolute; TOP: 312px" runat="server"
				Width="200px" Height="16px" Font-Names="Tahoma" Font-Size="8pt" Text="RICERCA ANCHE NELLO STORICO"
				tabIndex="5"></asp:CheckBox><asp:dropdownlist id="cmbAnno" style="Z-INDEX: 114; LEFT: 368px; POSITION: absolute; TOP: 264px" tabIndex="4"
				runat="server" Height="16px" Width="152px"></asp:dropdownlist><asp:label id="Label4" style="Z-INDEX: 113; LEFT: 328px; POSITION: absolute; TOP: 267px" runat="server"
				BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black" Height="16px" Width="32px">ANNO</asp:label><asp:dropdownlist id="cmbMese" style="Z-INDEX: 112; LEFT: 160px; POSITION: absolute; TOP: 264px" runat="server"
				Height="16px" Width="152px" tabIndex="3">
				<asp:ListItem Value="GENNAIO">GENNAIO</asp:ListItem>
				<asp:ListItem Value="FEBBRAIO">FEBBRAIO</asp:ListItem>
				<asp:ListItem Value="MARZO">MARZO</asp:ListItem>
				<asp:ListItem Value="APRILE">APRILE</asp:ListItem>
				<asp:ListItem Value="MAGGIO">MAGGIO</asp:ListItem>
				<asp:ListItem Value="GIUGNO">GIUGNO</asp:ListItem>
				<asp:ListItem Value="LUGLIO">LUGLIO</asp:ListItem>
				<asp:ListItem Value="AGOSTO">AGOSTO</asp:ListItem>
				<asp:ListItem Value="SETTEMBRE">SETTEMBRE</asp:ListItem>
				<asp:ListItem Value="OTTOBRE">OTTOBRE</asp:ListItem>
				<asp:ListItem Value="NOVEMBRE">NOVEMBRE</asp:ListItem>
				<asp:ListItem Value="DICEMBRE">DICEMBRE</asp:ListItem>
			</asp:dropdownlist><asp:image id="Image1" style="Z-INDEX: 110; LEFT: 4px; POSITION: absolute; TOP: 32px" runat="server"
				Height="44px" Width="352px" ImageUrl="..\Images\Logo.gif"></asp:image><asp:label id="lblLastLogin" style="Z-INDEX: 109; LEFT: 8px; POSITION: absolute; TOP: 80px"
				runat="server" BackColor="Transparent" Font-Size="12px" Font-Names="Tahoma" Height="16px" Width="360px">Ultima connessione</asp:label>
			<TABLE id="Table1" style="Z-INDEX: 108; LEFT: 8px; POSITION: absolute; TOP: 104px" cellSpacing="0"
				cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" TypeMenu="RicercheObbligazioni" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:label id="Label3" style="Z-INDEX: 106; LEFT: 24px; POSITION: absolute; TOP: 267px" runat="server"
				BackColor="Transparent" Font-Size="8pt" Font-Names="Tahoma" ForeColor="Black" Height="16px"
				Width="32px">MESE</asp:label><asp:label id="lbHelp" style="Z-INDEX: 104; LEFT: 24px; POSITION: absolute; TOP: 424px" runat="server"
				Font-Italic="True" BackColor="Transparent" Font-Size="9pt" Font-Names="Tahoma" ForeColor="#0000C0" Height="32px" Width="456px">• Definita una richiesta operando nei campi per  “MESE”  e/o per  “ANNO” verrà restituito l’elenco delle Obbligazioni Quotate comprese nel periodo richiesto.</asp:label><asp:button id="btnFind" style="Z-INDEX: 101; LEFT: 160px; POSITION: absolute; TOP: 360px" tabIndex="6"
				runat="server" BackColor="Gainsboro" Height="24px" Width="197px" BorderColor="Transparent" Text="Ricerca" BorderStyle="Groove"></asp:button><asp:label id="Label1" style="Z-INDEX: 107; LEFT: 16px; POSITION: absolute; TOP: 144px" runat="server"
				Font-Size="18px" Font-Names="Tahoma" Height="24px" Width="264px">QUOTAZIONI</asp:label></FORM>
	</body>
</HTML>
