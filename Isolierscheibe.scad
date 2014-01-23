
$fn = 70;

rg = 2.7;
hg = 1;
rk = 1.8;
hk = 1.2;
ri = 1.4;


difference(){
	union(){
		cylinder(r = rg, h = hg);
		translate([0, 0, hg]) cylinder(r = rk, h = hk);
	}
	translate([0,0,-1])cylinder(r = ri, h = hg+ hk+2);
	
}