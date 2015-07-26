<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Error.aspx.vb" Inherits="BTWEB.NET.PageError"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>...::: Brambilla Titoli - Tutto Titoli :::...</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" background="Images\sfHome.jpg">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" style="Z-INDEX: 101; LEFT: 12px; POSITION: absolute; TOP: 108px" runat="server"
				Width="416px" Height="18px" BackColor="Transparent" ForeColor="Lime" Font-Names="Tahoma"
				Font-Size="14px" BorderColor="Transparent" Font-Bold="True">ERRORE SISTEMA BTWEB.NET</asp:Label>
			<asp:image id="Image1" style="Z-INDEX: 103; LEFT: 4px; POSITION: absolute; TOP: 32px" runat="server"
				Height="44px" Width="352px" ImageUrl="Images\Logo.gif"></asp:image>
			<asp:Label id="lblError" style="Z-INDEX: 102; LEFT: 12px; POSITION: absolute; TOP: 144px" runat="server"
				Width="412px" Height="176px" BackColor="Transparent" ForeColor="Red" Font-Names="Tahoma"
				Font-Size="14px" BorderColor="Transparent" Font-Bold="True"></asp:Label>&nbsp;
			<asp:LinkButton id="lnbtn" style="Z-INDEX: 104; LEFT: 16px; POSITION: absolute; TOP: 328px" runat="server"
				Font-Size="12px" Font-Names="Tahoma" Height="16px" Width="168px" Font-Bold="True" Visible="False">Torna alla Pagina Principale</asp:LinkButton>
		</form>
	</body>
</HTML>
