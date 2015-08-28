<%@ Control Language="vb" AutoEventWireup="false" Codebehind="DynamicMenu.ascx.vb" Inherits="BTWEB.NET.DynamicMenu" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<!-- sub menu -->
<div id="riga-sub-menu">
	<div id="sub-menu-cnt">
		<div id="sub-menu">
			<asp:PlaceHolder ID="pnlRicercheObbligazioni" Runat="server">
				<UL>
					<LI>
						<A title="Ricerca per descrizione e isincode" href="OBFindDesc.aspx">Caratteristiche 
							Principali</A>
					<LI>
						<A title="Ricerca obbligazioni in scadenza" href="OBFindScad.aspx">Data Scadenza</A>
					<LI>
						<A title="Ricerca delle cedole per data aggiornamento" href="OBFindCedole.aspx">Aggiornamento 
							Cedole</A>
					<LI>
						<A title="Ricerca delle cedole per data scadenza" href="OBFindCedScad.aspx">Cedole 
							in Scadenza</A>
					<LI>
						<A title="Ricerca piani di ammortamento per data" href="OBFindPAmm.aspx">Piani 
							Ammortamento</A>
					<LI>
						<A title="Ricerca news obbligazioni" href="OBFindNews.aspx">News</A>
					<LI>
						<A title="Ricerca convertibili" href="OBFindConv.aspx">Convertibili</A>
					<LI>
						<A title="Ricerca regolamenti" href="OBFindRegol.aspx">Regolamenti</A>
					<LI>
						<A title="Ricerca maggiorazioni" href="OBFindMagg.aspx">Maggiorazioni</A>
					<LI>
						<A title="Ricerca quotazioni" href="OBFindQuot.aspx">Quotazioni</A>
					</LI>
				</UL>
			</asp:PlaceHolder>
			<asp:PlaceHolder id="pnlObbligazioni" runat="server">
				<UL>
					<LI>
						<A title="Visualizza Obbligazione" href="OBlista.aspx">Elenco Obbligazioni</A>
					<LI>
						<A title="Caratteristiche Principali" href="OBView.aspx">Caratteristiche Principali</A>
					<LI>
						<A title="Piano Ammortamento" href="OBPianoAmm.aspx">Piano Ammortamento</A>
					<LI>
						<A title="Maggiorazioni" href="OBMaggiorazioni.aspx">Maggiorazioni</A>
					<LI>
						<A title="Convertibili" href="OBConvertibili.aspx">Convertibili</A>
					<LI>
						<A title="Piano Cedole" href="OBPianoInd.aspx">Piano Cedole</A>
					<LI>
						<A title="Regolamento" href="OBRegolamento.aspx">Regolamento</A>
					<LI>
						<A title="Quotazioni" href="OBQuotazioni.aspx">Quotazioni</A>
					<LI>
						<A title="News" href="OBNews.aspx">News</A>
					</LI>
				</UL>
			</asp:PlaceHolder>
			<asp:PlaceHolder id="pnlRicercheAzioni" Visible="False" runat="server">
				<UL>
					<LI>
						<A title="Ricerca per descrizione e Isincode" href="AZFindSocieta.aspx">Anagrafica 
							Società</A>
					<LI>
						<A title="Ricerca Titoli di una Società" href="AZFindTitoli.aspx">Titoli Società</A>
					<LI>
						<A title="Ricerca delle assemblee per data" href="AZFindAssemblee.aspx">Convocazioni 
							Assemblee</A>
					<LI>
						<A title="Ricerca dei CDA per data" href="AZFindCDA.aspx">CDA</A>
					<LI>
						<A title="Ricerca dividendi per stato per data" href="AZFindDIV.aspx">Dividendi</A>
					<LI>
						<A title="Ricerca News Società" href="AZFindNEWS.aspx">News Azioni</A>
					<LI>
						<A title="Ricerca Op. sul Capitale" href="AZFindOPCAP.aspx">Operazioni sul Capitale</A> <!--<li>
						<a href="AZFindCONV.aspx" title="Ricerca Covertibili in Corso">Azioni Convertibili</a></li>
					<li>
						<a href="AZFindWARR.aspx" title="Ricerca warrant">Tabella Warrant in circolazione</a></li>
					<li>
						<a href="AZFindQuot.aspx" title="Ricerca quotazioni titolo">Quotazioni</a></li>--></LI></UL>
			</asp:PlaceHolder>
			<asp:PlaceHolder ID="pnlAzioni" Runat="server">
				<UL>
					<LI>
						<A title="Visualizza Titoli" href="AZLista.aspx">Risultati Ricerca</A>
					<LI>
						<A title="Titoli Associati" href="AZTitoli.aspx">Titoli Associati</A>
					<LI>
						<A title="Dividendi" href="AZDividendi.aspx">Dividendi</A> <!--<li>
						<a title="Quotazioni" href="AZQuotazioni.aspx">Quotazioni</a></li>-->
					<LI>
						<A title="Operazioni sul Capitale" href="AZOpCapitale.aspx">Operazioni sul Capitale</A>
					<LI>
						<A title="News" href="AZNews.aspx">News</A>
					<LI>
						<A title="Assemblee" href="AZAssemblee.aspx">Assemblee</A> <!--<li>
						<a title="Warrant" href="AZWarrant.aspx">Warrant</a></li>-->
					<LI>
						<A title="CDA" href="AZCda.aspx">CDA</A> <!--<li>
						<a title="Convertibili" href="AZConvertibili.aspx">Convertibili</a></li>--></LI></UL>
			</asp:PlaceHolder>
			<asp:PlaceHolder ID="pnlTitoli" Runat="server">
				<UL>
					<LI>
						<A title="Visualizza Titoli" href="AZLista.aspx">Risultati Ricerca</A>
					<LI>
						<A title="Visualizza Società" href="AZSocieta.aspx">Società</A>
					<LI>
						<A title="Visualizza Titoli Associati" href="AZTitoli.aspx">Titoli Associati</A>
					</LI>
				</UL>
			</asp:PlaceHolder>
		</div>
	</div>
</div>
