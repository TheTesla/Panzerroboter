



$fn = 50;

bia = 17.5;
lia = 109;

sp = 1.0;

d = 0.7;
du = 2.7;

h = 10.1;
b = bia + 0 + 2*sp;
l = lia + 0 + 2*sp;


ba = 7;
la = 10;

a1 = 4 +1.5 + sp+d;
a2 = a1 + 33;
a3 = a2 + 54;





hi = 10;

ang = 15;
rk = 3/2;
angu=ang;

sc =1.7;

rotate([180,0,0])
difference(){
	translate([0,-du+sc,0]) cube([l+2*du,b+2*du,h+2*d+hi+10*sc]);
	translate([a1+la/2,d+ba/2,-0.5*d]) cylinder(r=rk,h=2*h+3*d+10*sc);
	translate([a2+la/2,d+ba/2,-0.5*d]) cylinder(r=rk,h=2*h+3*d+10*sc);
	translate([a3+la/2,d+ba/2,-0.5*d]) cylinder(r=rk,h=2*h+3*d+10*sc);

	translate([du,0,h+2*d]) cube([l,b,h+2*hi+10*sc]);
	translate([du,0,h+2*d]) rotate([0,-ang,0]) cube([l,b,h+2*hi+10*sc]);
	translate([du+l,0,h+2*d]) rotate([0,ang,0]) translate([-l,0,0]) cube([l,b,h+2*hi+10*sc]);
	
	translate([0,b,h+2*d]) rotate([-ang,0,0]) translate([0,-b,0]){
		translate([du,0,0]) cube([l,b,h+2*hi+10*sc]);
		translate([du,0,0]) rotate([0,-ang,0]) cube([l,b,h+2*hi+10*sc]);
		translate([du+l,0,0]) rotate([0,ang,0]) translate([-l,0,0]) cube([l,b,h+2*hi+10*sc]);
	}

	translate([0,0,h+2*d]) rotate([angu,0,0]){
		translate([du,0,0]) cube([l,b,h+2*hi+10*sc]);
		translate([du,0,0]) rotate([0,-ang,0]) cube([l,b,h+2*hi+10*sc]);
		translate([du+l,0,0]) rotate([0,ang,0]) translate([-l,0,0]) cube([l,b,h+2*hi+10*sc]);
	}

}
