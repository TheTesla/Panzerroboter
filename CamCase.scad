

rc = 100/2;
hc = 140;
bb = 74;
hb = 35;
d = 0.7;

$fn = 50;

difference(){
	cylinder(r=rc+d,h=hc);
	translate([0,0,-1]) cylinder(r=rc,h=hc+2);
	translate([0,-bb/2,-1])#cube([rc+1,bb,hb+1]);
}