$fn=50;


d = 0;

Sr2 = 20/2+d;
Sr1 = 10/2+d;
ds = 50;




ang1a = 90-(180-(90-13))/2; 
ang1b = 5.14;
ang1c = 0;
ang2a = 13;
ang2b = 0;
ang2c = 0;


lc = 80;
bc = 70;
hc = 20;

rs = 3.0;
rsa = 3.3;
rst = 12;
dss = 25;
sb = 2;

difference(){
	cube([lc,bc,hc],center=true);
	rotate([ang2a,ang2b,ang2c]) cylinder(r=Sr2,h=3*hc+2,center=true);
	translate([-ds/2,0,0]) rotate([-ang1a,ang1b,ang1c]) cylinder(r=Sr1,h=3*hc+2,center=true);
	translate([ds/2,0,0]) rotate([-ang1a,-ang1b,ang1c]) cylinder(r=Sr1,h=3*hc+2,center=true);
	translate([0,-dss,0]) rotate([0,90,0]) cylinder(r=rs,h=lc+2,center=true);
	translate([0,dss,0]) rotate([0,90,0]) cylinder(r=rs,h=lc+2,center=true);
	translate([rst,dss,0]) rotate([0,90,0]) #cylinder(r=rsa,h=lc,center=true);
	translate([rst,-dss,0]) rotate([0,90,0]) #cylinder(r=rsa,h=lc,center=true);
	cube([sb,bc+1,hc+1],center=true);
	translate([ds/2,0,0]) cube([sb,bc+1,hc+1],center=true);
	translate([-ds/2,0,0]) cube([sb,bc+1,hc+1],center=true);
}