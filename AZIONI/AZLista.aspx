<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AZLista.aspx.vb" Inherits="BTWEB.NET.AZLista"%>
<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<meta content="False" name="vs_showGrid">
		<script type="text/javascript">
			<!--
			var stile = "top="+ screen.height-250 + ", left=" +  screen.width-200 + ", width=700, height=500, status=no, menubar=no, toolbar=no, scrollbars=yes";
				function Popup(apri) {
					window.open(apri, "", stile);
				}
			//-->
		</script>
	</HEAD>
	<body bottomMargin="0" leftMargin="0" background="..\Images\sfHome.JPG" topMargin="0"
		rightMargin="0" ms_positioning="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:datagrid id="dtgAZIO" style="Z-INDEX: 101; LEFT: 0px; POSITION: absolute; TOP: 128px" runat="server"
				Font-Size="12px" Font-Names="Tahoma" Width="100%" ShowFooter="True" AllowSorting="True" BorderColor="Silver"
				BorderStyle="None" BorderWidth="0px" BackColor="#454582" CellPadding="0" GridLines="Vertical"
				PageSize="40" AllowPaging="True" AutoGenerateColumns="False" ForeColor="#454582">
				<SelectedItemStyle Font-Bold="True" ForeColor="Black" BackColor="LemonChiffon"></SelectedItemStyle>
				<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
				<ItemStyle ForeColor="Black" BackColor="White"></ItemStyle>
				<HeaderStyle Font-Size="12px" Font-Names="Tahoma" Font-Bold="True" Wrap="False" HorizontalAlign="Left"
					ForeColor="White" BackColor="#454582"></HeaderStyle>
				<FooterStyle ForeColor="White" BackColor="DarkGray"></FooterStyle>
				<PagerStyle NextPageText="&amp;gt; Avanti" Font-Size="12px" Font-Bold="True" PrevPageText="&amp;lt; Indietro"
					HorizontalAlign="Right" ForeColor="White" Position="Top" BackColor="#454582" Mode="NumericPages"></PagerStyle>
			</asp:datagrid>
			<TABLE id="Table2" style="Z-INDEX: 104; LEFT: 4px; WIDTH: 962px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="962" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" TypeMenu="TopMenuAZ" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<TABLE id="Table1" style="Z-INDEX: 103; LEFT: 4px; POSITION: absolute; TOP: 100px" cellSpacing="0"
				cols="2" cellPadding="0" width="99%" border="0">
				<TR>
					<TD vAlign="top" align="left"><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" TypeMenu="RicercheAzioni" ImagePath="../Images/"></ucmenu:dhtmlmenucontrol><asp:label id="lblTIPORICERCA" runat="server" Font-Size="12px" Font-Names="Tahoma" Width="288px"
							BackColor="Transparent" ForeColor="Lime" Font-Bold="True" Height="16px">TIPO RICERCA EFFETTUATA</asp:label></TD>
					<TD align="right"><asp:label id="lblNumRecord" runat="server" Font-Size="12px" Font-Names="Tahoma" Width="401px"
							BorderColor="Transparent" BackColor="Transparent" ForeColor="White" Font-Bold="True" Height="18px">Azioni trovate: </asp:label></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:image id="Image1" style="Z-INDEX: 102; LEFT: 4px; POSITION: absolute; TOP: 32px" runat="server"
				Width="352px" Height="44px" ImageUrl="..\Images\Logo.gif"></asp:image><asp:label id="lblNoRecord" style="Z-INDEX: 105; LEFT: 8px; POSITION: absolute; TOP: 200px"
				runat="server" Font-Size="Medium" Font-Names="Tahoma" Width="340px" BorderColor="Transparent" BackColor="Transparent" ForeColor="Red" Font-Bold="True" Height="23px"
				Visible="False">La ricerca non ha prodotto risultati</asp:label>
			<TABLE id="Table3" style="Z-INDEX: 106; LEFT: 4px; WIDTH: 99%; POSITION: absolute; TOP: 80px; HEIGHT: 8px"
				cellSpacing="0" cellPadding="0" width="1087" border="0">
				<TR>
					<TD><asp:label id="lblLastLogin" runat="server" Font-Size="12px" Font-Names="Tahoma" Width="248px"
							BackColor="Transparent" Height="16px">Ultima connessione</asp:label>
					<TD align="right"><asp:linkbutton id="lblFirstPage" runat="server" Font-Size="12px" Font-Names="Tahoma" Width="67px"
							ForeColor="Black" Font-Bold="True" Height="16px">Prima Pag.</asp:linkbutton><asp:linkbutton id="lblLastPage" runat="server" Font-Size="12px" Font-Names="Tahoma" Width="76px"
							ForeColor="Black" Font-Bold="True" Height="16px">Ultima Pag.</asp:linkbutton></TD>
					</TD></TR>
			</TABLE>
		</form>
	</body>
</HTML>
