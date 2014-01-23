

h = 30;
b = 17.5;
l = 109;

d = 0.7;

ba = 7;
la = 10;

a1 = 4;
a2 = a1 + 33;
a3 = a2 + 54;
difference(){
	cube([l+2*d,b+2*d,h+2*d]);
	translate([d,d,d]) cube([l,b,h+2*d]);
	translate([a1,d,-0.5*d]) cube([la,ba,2*d]);
	translate([a2,d,-0.5*d]) cube([la,ba,2*d]);
	translate([a3,d,-0.5*d]) cube([la,ba,2*d]);

}