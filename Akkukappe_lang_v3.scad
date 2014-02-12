

h = 116;
hi = 5;
b = 19.5;
bi =18.5;
l = 112;
li = 110;

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

difference(){
	cube([l+2*d,b+2*d,2*hi+2*d]);
	translate([d+(l-li)/2,d,-d]){
		cube([li,bi,2*hi+4*d]);
		translate([0,0,d*2]){
			translate([0,bi,hi]) rotate([-10,0,0]) translate([0,-2*bi,0]) cube([li,2*bi,2*hi+4*d]); 
			translate([0,0,hi]) rotate([0,-10,0]) translate([0,0,0]) cube([2*li,bi,2*hi+4*d]); 
			translate([0,bi,hi]) rotate([-10,-10,0]) translate([0,-2*bi,0]) cube([2*li,2*bi,2*hi+4*d]); 
			translate([li,0,hi]) rotate([0,10,0]) translate([-li,0,0]) cube([li,bi,2*hi+4*d]); 
			translate([li,bi,hi]) rotate([-10,10,0]) translate([-li,-2*bi,0]) cube([li,2*bi,2*hi+4*d]); 
		}
	}
}
