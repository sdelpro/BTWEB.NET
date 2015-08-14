<%@ Page Language="vb" AutoEventWireup="false" Codebehind="OBLista.aspx.vb" Inherits="BTWEB.NET.OBLista"%>
<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<meta content="False" name="vs_showGrid">
		<script type="text/javascript">
			<!--
			var stile = "top="+ screen.height-250 + ", left=" +  screen.width-200 + ", width=400, height=500, status=no, menubar=no, toolbar=no, scrollbars=yes";
				function Popup(apri) {
					window.open(apri, "", stile);
				}
			//-->
		</script>
	</HEAD>
	<body bottomMargin="0" leftMargin="0" background="..\Images\sfHome.JPG" topMargin="0"
		rightMargin="0" ms_positioning="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:datagrid id="dtgOBB" style="Z-INDEX: 101; LEFT: 0px; POSITION: absolute; TOP: 128px" runat="server"
				ForeColor="#00547d" AutoGenerateColumns="False" AllowPaging="True" PageSize="40" GridLines="Vertical"
				CellPadding="0" BackColor="#00547d" BorderWidth="0px" BorderStyle="None" BorderColor="Silver"
				AllowSorting="True" ShowFooter="True" Width="100%" Font-Names="Tahoma" Font-Size="12px">
				<SelectedItemStyle Font-Bold="True" ForeColor="Black" BackColor="LemonChiffon"></SelectedItemStyle>
				<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
				<ItemStyle ForeColor="Black" BackColor="White"></ItemStyle>
				<HeaderStyle Font-Size="12px" Font-Names="Tahoma" Font-Bold="True" Wrap="False" HorizontalAlign="Left"
					ForeColor="White" BackColor="#00547d"></HeaderStyle>
				<FooterStyle ForeColor="White" BackColor="DarkGray"></FooterStyle>
				<PagerStyle NextPageText="&amp;gt; Avanti" Font-Size="12px" Font-Bold="True" PrevPageText="&amp;lt; Indietro"
					HorizontalAlign="Right" ForeColor="White" Position="Top" BackColor="#00547d" Mode="NumericPages"></PagerStyle>
			</asp:datagrid>
			<TABLE id="Table2" style="Z-INDEX: 104; LEFT: 4px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="99%" border="0">
				<TR>
					<TD><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol4" runat="server" ImagePath="../Images/" TypeMenu="TopMenuOB"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<TABLE id="Table1" style="Z-INDEX: 103; LEFT: 4px; POSITION: absolute; TOP: 100px" cellSpacing="0"
				cols="2" cellPadding="0" width="99%" border="0">
				<TR>
					<TD vAlign="top" align="left" width="428" style="WIDTH: 428px"><ucmenu:dhtmlmenucontrol id="Dhtmlmenucontrol3" runat="server" ImagePath="../Images/" TypeMenu="RicercheObbligazioni"></ucmenu:dhtmlmenucontrol>
						<asp:label id="lblTIPORICERCA" runat="server" ForeColor="Lime" BackColor="Transparent" Width="288px"
							Font-Names="Tahoma" Font-Size="12px" Height="16px" Font-Bold="True">TIPO RICERCA EFFETTUATA</asp:label></TD>
					<TD align="right" width="60%" colSpan="1" rowSpan="1"><asp:label id="lblNumRecord" runat="server" ForeColor="White" BackColor="Transparent" BorderColor="Transparent"
							Width="401px" Font-Names="Tahoma" Font-Size="12px" Height="18px" Font-Bold="True">Obbligazioni trovate: </asp:label></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:image id="Image1" style="Z-INDEX: 102; LEFT: 4px; POSITION: absolute; TOP: 32px" runat="server"
				Width="352px" Height="44px" ImageUrl="..\Images\Logo.gif"></asp:image><asp:label id="lblNoRecord" style="Z-INDEX: 105; LEFT: 8px; POSITION: absolute; TOP: 200px"
				runat="server" ForeColor="Red" BackColor="Transparent" BorderColor="Transparent" Width="340px" Font-Names="Tahoma" Font-Size="Medium" Height="23px" Font-Bold="True"
				Visible="False">La ricerca non ha prodotto risultati</asp:label>
			<TABLE id="Table3" style="Z-INDEX: 106; LEFT: 4px; POSITION: absolute; TOP: 80px; HEIGHT: 8px"
				cellSpacing="0" cellPadding="0" width="99%" border="0">
				<TR>
					<TD>
						<asp:label id="lblLastLogin" runat="server" BackColor="Transparent" Width="248px" Font-Names="Tahoma"
							Font-Size="12px" Height="16px">Ultima connessione</asp:label>
					<TD align="right">
						<asp:LinkButton id="lblFirstPage" runat="server" Font-Size="12px" Font-Names="Tahoma" Width="67px"
							ForeColor="Black" Height="16px" Font-Bold="True">Prima Pag.</asp:LinkButton>
						<asp:LinkButton id="lblLastPage" runat="server" Font-Size="12px" Font-Names="Tahoma" Width="76px"
							ForeColor="Black" Height="16px" Font-Bold="True">Ultima Pag.</asp:LinkButton></TD>
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
