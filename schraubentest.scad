
h = 20;
hi = 5;
ri = 3.3;
ra = 8;

$fn = 50; 

bc = 45;
dc = 5;

difference(){
	union(){
		translate([0,0,h/2])cube([bc,dc,h],center=true);
		cylinder(h=h,r=ra);
		translate([bc/2,0,h/2]) rotate([90,0,0]) cylinder(h=dc,r=h/2,center=true);
		translate([-bc/2,0,h/2]) rotate([90,0,0]) cylinder(h=dc,r=h/2,center=true);
	}
	translate([0,0,hi]) cylinder(h=h,r=ri);
}

