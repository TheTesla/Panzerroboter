

b = 10;
l = 15;
h = 12;
ra = 4.7;
d = 3;
ri = 2.35;
lpl = 8;
rc = 2;
$fn=50;

difference(){
	cube([l,b,h]);
	translate([lpl,b/2,-1]) cylinder(r=ri,h=h+2);
	translate([lpl,b/2,d]) cylinder(r=ra,h=h+2);
	translate([-1,b,0])rotate([0,90,0])#cylinder(r=rc,h=l+2);
}

