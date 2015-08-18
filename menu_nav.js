stm_bm(["menu1641",400,"","blank.gif",0,"","",1,0,250,0,1000,1,0,0,""],this);
stm_bp("p0",[0,4,0,0,4,6,0,7,100,"",-2,"",-2,50,2,3,"#fffff7","transparent","",3,1,1,"#000000"]);
stm_ai("p0i0",[0,"Archivio","","",-1,-1,0,"","_self","","","","",0,0,0,"arrow_r.gif","arrow_r.gif",7,7,0,0,1,"#ffffff",0,"#dfdfdf",0,"","",3,3,1,1,"#ffffff","#666666","#333333","#333333","8pt Verdana","8pt Verdana",0,0]);
stm_bpx("p1","p0",[1,4,0,0,2,3,0,0,100,"progid:DXImageTransform.Microsoft.Fade(overlap=.5,enabled=0,Duration=0.60)",-2,"",-2,50,0,0]);
stm_aix("p1i0","p0i0",[0,"Azioni","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0]);
stm_aix("p1i1","p1i0",[0,"Obbligazioni"]);
stm_ep();
stm_aix("p0i1","p0i0",[0,"Ricerche"]);
stm_bpx("p2","p0",[1,4,0,0,2,3,0,0,100,"progid:DXImageTransform.Microsoft.Fade(overlap=.5,enabled=0,Duration=0.60)",-2,"",-2,50,0,0,"#fffff7","#fffff7"]);
stm_aix("p2i0","p1i0",[]);
stm_aix("p2i1","p1i1",[]);
stm_ep();
stm_aix("p0i2","p0i0",[0,"Strumenti"]);
stm_bpx("p3","p2",[]);
stm_aix("p3i0","p1i0",[0,"Cambia Password"]);
stm_ai("p3i1",[6,1,"#000000","",0,0,0]);
stm_aix("p3i2","p1i0",[0,"Logout"]);
stm_ep();
stm_aix("p0i3","p1i0",[0,"About","","",-1,-1,0,"about.aspx"]);
stm_ep();
stm_em();

with(st_ms[st_cm-1])
{
	mcff="MENU";
	mcfn=1;
	mcfd=0;
	mcfx=0;
	mcfy=0;
}
