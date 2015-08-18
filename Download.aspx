<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Download.aspx.vb" Inherits="BTWEB.NET.Download"%>
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
			var stile = "top="+ screen.height-250 + ", left=" +  screen.width-200 + ", status=no, menubar=no, toolbar=no, scrollbars=yes";
				function Popup(apri) {
					window.open(apri, "", stile);
				}
			//-->
		</script>
	</HEAD>
	<body bottomMargin="0" leftMargin="0" background="Images\sfMenuidx.jpg" topMargin="0"
		rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:image id="Image1" style="Z-INDEX: 101; LEFT: 4px; POSITION: absolute; TOP: 32px" runat="server"
				ImageUrl="Images\Logo.gif" Height="44px" Width="352px"></asp:image>
			<TABLE id="Table4" style="Z-INDEX: 104; LEFT: 8px; POSITION: absolute; TOP: 80px; HEIGHT: 8px"
				cellSpacing="0" cellPadding="0" width="99%" border="0">
				<TR>
					<TD><asp:label id="lblLastLogin" runat="server" Height="16px" Width="360px" BackColor="Transparent"
							Font-Names="Tahoma" Font-Size="12px">Ultima connessione</asp:label>
					<TD align="right"></TD>
					</TD></TR>
			</TABLE>
			<TABLE id="Table2" style="Z-INDEX: 103; LEFT: 0px; POSITION: absolute; TOP: 104px" cellSpacing="0"
				cols="2" cellPadding="0" width="99%" border="0">
				<TR>
					<TD style="FONT-SIZE: 10pt; WIDTH: 428px; COLOR: #ffffff; FONT-FAMILY: verdana" vAlign="middle"
						align="left" width="428"></TD>
					<TD align="right" width="60%" colSpan="1" rowSpan="1"></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<TABLE id="Table1" style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 0px; HEIGHT: 8px"
				cellSpacing="0" cols="2" cellPadding="0" width="100%" border="0">
				<TR>
					<TD vAlign="middle"><ucmenu:dhtmlmenucontrol 
      id=Dhtmlmenucontrol4 runat="server" 
      TypeMenu="TopMenu" ImagePath="Images/" 
      Visible='<%# iif(Session("LOGIN_VALIDATE") = "ABILITATO_BT" ,"true","false") %>'></ucmenu:dhtmlmenucontrol></TD>
					<TD style="HEIGHT: 30px" align="right"></TD>
				</TR>
			</TABLE>
			<TABLE id="Table3" style="Z-INDEX: 105; LEFT: 0px; WIDTH: 100%; BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; POSITION: absolute; TOP: 136px; HEIGHT: 32px; BORDER-BOTTOM-STYLE: none"
				cellSpacing="0" cellPadding="0" border="0">
				<tr>
					<td>
						<div style="POSITION: relative">
							<table cellSpacing="0" cellPadding="0" width="100%" border="0">
								<tr>
									<TD style="HEIGHT: 39px"></TD>
									<td style="HEIGHT: 39px">
										<asp:label id="lbDir" runat="server" Width="416px" Height="24px" Font-Size="18px" Font-Names="Tahoma">Directory</asp:label></td>
								</tr>
								<TR>
									<TD></TD>
									<TD><asp:datagrid id="dg1" runat="server" Width="98%" Font-Names="Verdana" Font-Size="10pt" AllowSorting="True">
											<HeaderStyle Font-Bold="True" BackColor="Gainsboro"></HeaderStyle>
											<Columns>
												<asp:ButtonColumn Text="Scarica File" ButtonType="PushButton" CommandName="Select"></asp:ButtonColumn>
											</Columns>
										</asp:datagrid></TD>
								</TR>
							</table>
						</div>
					</td>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
