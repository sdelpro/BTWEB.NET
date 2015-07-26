<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ControlPanel.aspx.vb" Inherits="BTWEB.NET.ControlPanel"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" background="Images\sfMenu.JPG">
		<form id="Form1" method="post" runat="server">
			<asp:Button id="btnGU" style="Z-INDEX: 100; LEFT: 0px; POSITION: absolute; TOP: 132px" runat="server"
				Text="GESTIONE UTENTI" Width="132px" Height="28px" BackColor="Red" BorderColor="Transparent"
				BorderStyle="None" ForeColor="White" Visible="False"></asp:Button>
			<asp:datagrid id="dtgOBB" style="Z-INDEX: 107; LEFT: 0px; POSITION: absolute; TOP: 160px" runat="server"
				ForeColor="#454582" BorderStyle="None" BorderColor="Silver" BackColor="#454582" Width="400px"
				Font-Size="12px" Font-Names="Tahoma" ShowFooter="True" AllowSorting="True" BorderWidth="0px"
				CellPadding="0" GridLines="Vertical" AllowPaging="True" AutoGenerateColumns="False">
				<SelectedItemStyle Font-Bold="True" ForeColor="Black" BackColor="LemonChiffon"></SelectedItemStyle>
				<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
				<ItemStyle ForeColor="Black" BackColor="White"></ItemStyle>
				<HeaderStyle Font-Size="12px" Font-Names="Tahoma" Font-Bold="True" Wrap="False" HorizontalAlign="Left"
					ForeColor="White" BackColor="#454582"></HeaderStyle>
				<FooterStyle ForeColor="White" BackColor="White"></FooterStyle>
				<PagerStyle NextPageText="&amp;gt; Avanti" Font-Size="12px" Font-Bold="True" PrevPageText="&amp;lt; Indietro"
					HorizontalAlign="Right" ForeColor="White" Position="Top" Mode="NumericPages"></PagerStyle>
			</asp:datagrid>
			<asp:image id="Image1" style="Z-INDEX: 105; LEFT: 4px; POSITION: absolute; TOP: 32px" runat="server"
				Height="44px" Width="352px" ImageUrl="Images\Logo.gif"></asp:image>
			<TABLE id="Table1" style="Z-INDEX: 104; LEFT: 4px; WIDTH: 719px; POSITION: absolute; TOP: 104px; HEIGHT: 16px"
				cellSpacing="1" cellPadding="1" width="719" border="0">
				<TR>
					<TD><A class="NAV" href="JavaScript:window.close();"><B style="COLOR: lime; FONT-STYLE: normal; FONT-FAMILY: Tahoma; FONT-VARIANT: normal; TEXT-DECORATION: none">CHIUDI</B></A></TD>
				</TR>
			</TABLE>
			<asp:Button id="btnVR" style="Z-INDEX: 103; LEFT: 264px; POSITION: absolute; TOP: 132px" runat="server"
				Height="28px" Width="137px" Text="ALTRO" BackColor="Silver" BorderColor="Transparent" BorderStyle="None"
				ForeColor="White" Visible="False"></asp:Button>
			<asp:Button id="btnST" style="Z-INDEX: 102; LEFT: 132px; POSITION: absolute; TOP: 132px" runat="server"
				Height="28px" Width="132px" Text="STATISTICHE" BackColor="Silver" BorderColor="Transparent"
				BorderStyle="None" ForeColor="White" Visible="False"></asp:Button>&nbsp;
		</form>
	</body>
</HTML>
