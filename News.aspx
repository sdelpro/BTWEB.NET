<%@ Page Language="vb" AutoEventWireup="false" Codebehind="News.aspx.vb" Inherits="BTWEB.NET.News"%>
<%@ Register TagPrefix="ucMenu" NameSpace="BTWEB.DHTML.MenuControl" Assembly="BTWEB.DHTML.Menu"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script type="text/javascript">
			<!--
			var stile = "top="+ screen.height-250 + ", left=" +  screen.width-200 + ", width=600, height=500, status=no, menubar=no, toolbar=no, scrollbars=yes";
				function Popup(apri) {
					window.open(apri, "", stile);
				}
			//-->
		</script>
	</HEAD>
	<body bottomMargin="0" leftMargin="0" background="Images\sfMenuidx.jpg" topMargin="0"
		rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:image id="Image1" style="Z-INDEX: 102; LEFT: 4px; POSITION: absolute; TOP: 32px" runat="server"
				Width="352px" Height="44px" ImageUrl="Images\Logo.gif"></asp:image>
			<TABLE id="Table4" style="Z-INDEX: 105; LEFT: 8px; POSITION: absolute; TOP: 80px; HEIGHT: 8px"
				cellSpacing="0" cellPadding="0" width="99%" border="0">
				<TR>
					<TD><asp:label id="lblLastLogin" runat="server" Width="360px" Height="16px" BackColor="Transparent"
							Font-Names="Tahoma" Font-Size="12px">Ultima connessione</asp:label>
					<TD align="right"><asp:linkbutton id="lblFirstPage" runat="server" Width="67px" Height="16px" Font-Names="Tahoma"
							Font-Size="12px" Font-Bold="True" ForeColor="Black">Prima Pag.</asp:linkbutton><asp:linkbutton id="lblLastPage" runat="server" Width="76px" Height="16px" Font-Names="Tahoma" Font-Size="12px"
							Font-Bold="True" ForeColor="Black">Ultima Pag.</asp:linkbutton></TD>
					</TD></TR>
			</TABLE>
			<TABLE id="Table2" style="Z-INDEX: 104; LEFT: 0px; POSITION: absolute; TOP: 104px" cellSpacing="0"
				cols="2" cellPadding="0" width="99%" border="0">
				<TR>
					<TD style="WIDTH: 428px" vAlign="middle" align="left" width="428">
						<asp:linkbutton id="lblBackRicerche" runat="server" Height="16px" Width="128px" Font-Size="12px"
							Font-Names="Tahoma" ForeColor="White" Font-Bold="True" BackColor="Transparent">Torna a Ricerche</asp:linkbutton></TD>
					<TD align="right" width="60%" colSpan="1" rowSpan="1"><asp:label id="lblNumRecord" runat="server" Width="401px" Height="18px" BackColor="Transparent"
							Font-Names="Tahoma" Font-Size="12px" Font-Bold="True" ForeColor="White" BorderColor="Transparent">Obbligazioni trovate: </asp:label></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<TABLE id="Table1" style="Z-INDEX: 103; LEFT: 4px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD vAlign="middle"><ucmenu:dhtmlmenucontrol 
      id=Dhtmlmenucontrol4 runat="server" 
      Visible='<%# iif(Session("LOGIN_VALIDATE") = "ABILITATO_BT" ,"true","false") %>' 
      ImagePath="Images/" TypeMenu="TopMenu"></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<asp:datagrid id="dtgOBB" style="Z-INDEX: 101; LEFT: 0px; POSITION: absolute; TOP: 136px" runat="server"
				Width="100%" BackColor="#00547d" Font-Names="Tahoma" Font-Size="12px" ForeColor="#00547d"
				BorderColor="Silver" AutoGenerateColumns="False" AllowPaging="True" PageSize="40" GridLines="Vertical"
				CellPadding="0" BorderWidth="0px" BorderStyle="None" AllowSorting="True" ShowFooter="True">
				<FooterStyle ForeColor="White" BackColor="DarkGray"></FooterStyle>
				<SelectedItemStyle Font-Bold="True" ForeColor="Black" BackColor="LemonChiffon"></SelectedItemStyle>
				<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
				<ItemStyle Font-Size="12px" Font-Names="Tahoma" Height="20px" ForeColor="Black" BackColor="White"></ItemStyle>
				<HeaderStyle Font-Size="12px" Font-Names="Tahoma" Font-Bold="True" Wrap="False" HorizontalAlign="Left"
					ForeColor="White" BackColor="#00547d"></HeaderStyle>
				<PagerStyle NextPageText="&amp;gt; Avanti" Font-Size="12px" Font-Bold="True" PrevPageText="&amp;lt; Indietro"
					HorizontalAlign="Right" ForeColor="White" Position="Top" BackColor="#00547d" Mode="NumericPages"></PagerStyle>
			</asp:datagrid><asp:label id="lblNoRecord" style="Z-INDEX: 106; LEFT: 16px; POSITION: absolute; TOP: 192px"
				runat="server" Width="340px" Height="23px" BackColor="Transparent" Font-Names="Tahoma" Font-Size="Medium"
				Font-Bold="True" ForeColor="Red" BorderColor="Transparent" Visible="False">La ricerca non ha prodotto risultati</asp:label></form>
	</body>
</HTML>
