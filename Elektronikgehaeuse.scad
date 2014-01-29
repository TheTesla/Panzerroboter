

l = 78.5;
bx = 9;
b = 55;
h = 33;
d = 1.5;
sh = 15;
sb = 2;
st = 50;

translate([d,d,d]){
	difference(){
		translate([-d,-d,-d]) cube([l+2*d,h+2*d,b+bx]);
		cube([l,h,b+bx]);
	}
	translate([0,-sb/2-d,0]){
		difference(){
			translate([0,sh,0]) cube([d,2*d+sb,b]);
			translate([0,sh+d,b-st]) cube([d+1,sb,st+1]);
		}
	}
	translate([l-d,-sb/2-d,0]){
		difference(){
			translate([0,sh,0]) cube([d,2*d+sb,b]);
			translate([-1,sh+d,b-st]) cube([d+1,sb,st+1]);
		}
	}
}