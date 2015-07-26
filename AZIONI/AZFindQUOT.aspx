<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZFindQUOT.aspx.vb" Inherits="BTWEB.NET.AZFindQUOT"%>
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
		<FORM id="Form1" method="post" runat="server">
			<asp:label id="Label3" style="Z-INDEX: 107; LEFT: 48px; POSITION: absolute; TOP: 376px" runat="server"
				Visible="False" ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent"
				Width="92px" Height="16px">DATA MODIFICA</asp:label>
			<asp:label id="lbUpd" style="Z-INDEX: 127; LEFT: 320px; POSITION: absolute; TOP: 144px" runat="server"
				Height="24px" Width="400px" Font-Size="18px" Font-Names="Tahoma">Ultimo Aggiornamento: 01/01/2006 - 12:44</asp:label><asp:label id="lbHelp1" style="Z-INDEX: 105; LEFT: 16px; POSITION: absolute; TOP: 416px" runat="server"
				ForeColor="#0000C0" Font-Names="Tahoma" Font-Size="9pt" BackColor="Transparent" Width="456px" Height="16px" Font-Italic="True">• Definita una richiesta operando nei campi per “MESE” e/o per “ANNO verrà restituito l’elenco delle Azioni Quotate comprese nel periodo richiesto.</asp:label><asp:label id="Label7" style="Z-INDEX: 115; LEFT: 320px; POSITION: absolute; TOP: 267px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="32px" Height="16px">ANNO</asp:label><asp:label id="Label6" style="Z-INDEX: 108; LEFT: 24px; POSITION: absolute; TOP: 267px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="96px" Height="16px">MESE</asp:label><asp:dropdownlist id="cmbAnno" style="Z-INDEX: 124; LEFT: 360px; POSITION: absolute; TOP: 264px" tabIndex="4"
				runat="server" Width="152px" Height="16px"></asp:dropdownlist><asp:dropdownlist id="cmbMese" style="Z-INDEX: 112; LEFT: 160px; POSITION: absolute; TOP: 264px" tabIndex="3"
				runat="server" Width="152px" Height="16px">
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
			</asp:dropdownlist><asp:label id="lblUser" style="Z-INDEX: 123; LEFT: 24px; POSITION: absolute; TOP: 187px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="128px" Height="16px"> DESCRIZIONE</asp:label><asp:image id="Image1" style="Z-INDEX: 121; LEFT: 8px; POSITION: absolute; TOP: 32px" runat="server"
				Width="352px" Height="44px" ImageUrl="..\Images\Logo.gif"></asp:image><asp:label id="lblLastLogin" style="Z-INDEX: 119; LEFT: 8px; POSITION: absolute; TOP: 80px"
				runat="server" Font-Names="Tahoma" Font-Size="12px" BackColor="Transparent" Width="360px" Height="16px">Ultima connessione</asp:label>
			<TABLE id="Table1" style="Z-INDEX: 116; LEFT: 8px; POSITION: absolute; TOP: 104px" cellSpacing="0"
				cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" TypeMenu="RicercheAzioni" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<TABLE id="Table2" style="Z-INDEX: 120; LEFT: 4px; WIDTH: 962px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" TypeMenu="TopMenuAZ" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:label id="Label10" style="Z-INDEX: 113; LEFT: 288px; POSITION: absolute; TOP: 376px" runat="server"
				Visible="False" ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent"
				Width="4px" Height="16px">A</asp:label><asp:label id="Label9" style="Z-INDEX: 111; LEFT: 160px; POSITION: absolute; TOP: 376px" runat="server"
				Visible="False" ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="24px" Height="16px">DA</asp:label><asp:textbox id="txtDtMA" style="Z-INDEX: 110; LEFT: 312px; POSITION: absolute; TOP: 376px" runat="server"
				Visible="False" Width="85px" Height="20px" BorderStyle="Groove"></asp:textbox><asp:textbox id="txtDtMDa" style="Z-INDEX: 109; LEFT: 192px; POSITION: absolute; TOP: 376px"
				runat="server" Visible="False" Width="85px" Height="20px" BorderStyle="Groove"></asp:textbox><asp:label id="Label8" style="Z-INDEX: 106; LEFT: 48px; POSITION: absolute; TOP: 376px" runat="server"
				Visible="False" ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="92px" Height="16px">DATA MODIFICA</asp:label><asp:label id="Label2" style="Z-INDEX: 103; LEFT: 24px; POSITION: absolute; TOP: 227px" runat="server"
				ForeColor="Black" Font-Names="Tahoma" Font-Size="8pt" BackColor="Transparent" Width="136px" Height="16px">ISINCODE o UIC</asp:label><asp:dropdownlist id="cmbFind" style="Z-INDEX: 102; LEFT: 356px; POSITION: absolute; TOP: 184px" tabIndex="1"
				runat="server" Width="152px" Height="16px">
				<asp:ListItem Value="Contiene">Contiene</asp:ListItem>
				<asp:ListItem Value="Inizia per">Inizia per</asp:ListItem>
				<asp:ListItem Value="Termina per">Termina per</asp:ListItem>
			</asp:dropdownlist><asp:textbox id="txtFind" style="Z-INDEX: 100; LEFT: 160px; POSITION: absolute; TOP: 184px" runat="server"
				Width="192px" Height="20px" BorderStyle="Groove"></asp:textbox><asp:button id="btnFind" style="Z-INDEX: 101; LEFT: 160px; POSITION: absolute; TOP: 320px" tabIndex="5"
				runat="server" BackColor="Gainsboro" Width="197px" Height="24px" BorderStyle="Groove" BorderColor="Transparent" Text="Ricerca"></asp:button><asp:textbox id="txtIsincode" style="Z-INDEX: 104; LEFT: 160px; POSITION: absolute; TOP: 224px"
				tabIndex="2" runat="server" Width="84px" Height="20px" BorderStyle="Groove"></asp:textbox><asp:label id="Label1" style="Z-INDEX: 114; LEFT: 16px; POSITION: absolute; TOP: 144px" runat="server"
				Font-Names="Tahoma" Font-Size="18px" Width="264px" Height="24px">QUOTAZIONI</asp:label></FORM>
	</body>
</HTML>
