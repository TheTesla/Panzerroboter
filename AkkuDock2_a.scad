
$fn = 50;

ra = 20;
rv = 30;

hia = 30;
bia = 17.0;
lia = 108.5;

sp = 3;

d = 3;

h = 140;
b = bia + d + 2*sp;
l = lia + d + 2*sp;


ba = 7;
la = 10;

a1 = 4 + sp;
a2 = a1 + 33;
a3 = a2 + 54;

ang = 20;


spa = 2;
da = 0.7;

ro = 5;
bk = 5;
rs = 6/2;
rsb= 3.2/2;
lo = 75;

lls = 15;
angs = 8;

Wr = 8;


difference(){
	rotate([angs,0,0]){
		difference(){
			cube([l+2*d,b+2*d,h+2*d]);
			translate([d,d,d]) cube([l,b+2*d,h+2*d]);
			translate([d+lls,-d,d]) cube([l-lls*2,b+2*d,h+2*d]);

		}
	}

	translate([-d, 0, 0]) cube([l+4*d,b+4*d,h+4*d]);
}

difference(){
	cube([l+2*d,b+2*d,h+2*d]);
	translate([d,d,d]) cube([l,b,h+2*d]);
	translate([d+ra,-2*d,rv-0.5*d]) cube([l-2*ra,b+sp+4*d,h+2*d]);
	translate([0,0,h+2*d]) rotate([ang,0,0]) translate([-d,0,-(h+2*d)])cube([l+4*d,b+2*d,h+2*d]);
	minkowski(){
		translate([2*d+Wr,2*d+Wr,-d]) cube([l-2*d-2*Wr,b-2*d-2*Wr,h+2*d]);
		cylinder(r=Wr, h=1);
	}
}

