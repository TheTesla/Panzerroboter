


$fn = 50;

hia = 30;
bia = 17.5;
lia = 109;

sp = 2;

d = 0.7;

h = 3;
b = bia + d + 2*sp;
l = lia + d + 2*sp;


ba = 7;
la = 10;

a1 = 4 + sp;
a2 = a1 + 33;
a3 = a2 + 54;

ro = 5;
ho = h-d;

lo = 75;

bk = 5;

bo = ba+bk/2+d;

rs = 2.7/2;

rotate([180,0,0])
difference(){
	cube([l+2*d,b+2*d,h+2*d]);
	translate([a1,d,-0.5*d]) cube([la,ba,2*h+3*d]);
	translate([a2,d,-0.5*d]) cube([la,ba,2*h+3*d]);
	translate([a3,d,-0.5*d]) cube([la,ba,2*h+3*d]);
	translate([lo,bo,-0.5*d]) cylinder(r = ro, h = ho+1.5*d);
	translate([a1,ba+d*0.995,-0.5*d]) cube([a3-a1+la,bk,ho+1.5*d]);
	translate([4,b+2*d-4,-0.5*d]) cylinder(r = rs, h = ho+1.5*d);
	translate([l+2*d-4,b+2*d-4,-0.5*d]) cylinder(r = rs, h = ho+1.5*d);
	translate([l+2*d-4,+4,-0.5*d]) cylinder(r = rs, h = ho+1.5*d);
	translate([l/4+2*d-4,+4,-0.5*d]) cylinder(r = rs, h = ho+1.5*d);

}