$fn=50;


d = 0;

Sr2 = 20/2+d;
Sr1 = 10/2+d;
ds = 74;




ang1a = 90-(180-(90-13))/2; 
ang1b = 5.14;
ang1c = 0;
ang2a = 13;
ang2b = 0;
ang2c = 0;


lc = 160;
bc = 50;
hc = 25;

rs = 3.0;
rsa = 3.3;
rst = 12;
dss = 15;
sb = 2;

llm = 140;
blm1 = 110;
bsm = 10;
hsx = 35;


rsm = 2;
hpsm = [40,40,25,25,10,10];
lpsm = [35,llm-35,35,llm-35,35,llm-35];
n = 6;

difference(){
	union(){
		translate([0,-blm1/2,0])cube([lc,bc+blm1,hc],center=true);
		translate([-llm/2,-blm1-bc/2,-hsx])cube([llm,bsm,+hsx],center=false);
	}
	translate([-llm/2,bsm-blm1-bc/2,-hc/2-1])cube([llm,blm1+1-bsm,hc+2],center=false);
	translate([-ds/2,0,0]) rotate([-ang1a,ang1b,ang1c]) cylinder(r=Sr1,h=3*hc+2,center=true);
	translate([ds/2,0,0]) rotate([-ang1a,-ang1b,ang1c]) cylinder(r=Sr1,h=3*hc+2,center=true);
	translate([0,-dss,0]) rotate([0,90,0]) cylinder(r=rs,h=lc+2,center=true);
	translate([0,dss,0]) rotate([0,90,0]) cylinder(r=rs,h=lc+2,center=true);
	translate([rst,dss,0]) rotate([0,90,0]) #cylinder(r=rsa,h=lc,center=true);
	translate([rst,-dss,0]) rotate([0,90,0]) #cylinder(r=rsa,h=lc,center=true);
	translate([ds/2,0,0]) cube([sb,bc+1,hc+1],center=true);
	translate([-ds/2,0,0]) cube([sb,bc+1,hc+1],center=true);
	for(i=[0:n-1]){
		translate([-llm/2+lpsm[i],-blm1-bc/2+bsm+1,-hsx+hpsm[i]]) rotate([90,0,0]) cylinder(h=bsm+2,r=rsm);
	}
}