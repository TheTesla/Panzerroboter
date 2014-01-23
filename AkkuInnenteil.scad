

h = 4;
b = 17.5;
l = 109;

h2 = 4;
b2 = 2;

d = -0.3;

ba = 3;
la = 10;

a1 = 4;
a2 = a1 + 33;
a3 = a2 + 54;
difference(){
	union(){
		cube([l+2*d,b+2*d,h+2*d]);
		translate([0,b-b2,h+2*d]) cube([l+2*d,b2+2*d,h2+2*d]);
	}
	translate([a1,d,-0.5*d-h/2]) cube([la,ba,2*d+2*h]);
	translate([a2,d,-0.5*d-h/2]) cube([la,ba,2*d+2*h]);
	translate([a3,d,-0.5*d-h/2]) cube([la,ba,2*d+2*h]);

}