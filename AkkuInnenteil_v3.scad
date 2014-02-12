

h = 4;
b = 17.5;
l = 108;
hr = 114;
dr = 0.7;

h2 = 4;
b2 = 2;


ba = 3;
la = 10;

a1 = 4;
a2 = a1 + 33;
a3 = a2 + 54;

translate([0,0,b])
rotate([-90,0,0])
difference(){
	union(){
		cube([l,b,h]);
		translate([0,b-b2,h]) cube([l,b2,h2]);
	}
	translate([a1,0,-h/2]) cube([la,ba,2*h]);
	translate([a2,0,-h/2]) cube([la,ba,2*h]);
	translate([a3,0,-h/2]) cube([la,ba,2*h]);

}

translate([0,0,0]) cube([l,hr,dr]);
translate([0,hr,0]) cube([l,dr,b]);
translate([-dr,0,0]) cube([dr,hr+dr,b]);
translate([l,0,0]) cube([dr,hr+dr,b]);
translate([l/2-dr/2,h*2,0]) cube([dr,hr+dr-2*h,b]);

