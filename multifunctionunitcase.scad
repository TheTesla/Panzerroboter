
b = 55;
l = 65;
h = 15;

d = 0.7;

sb = 6;
sph = 13;
difference(){
	cube([l+2*d,b+2*d,h+2*d]);
	translate([d,d,d]) cube([l,b,h+2*d]);
	translate([-d,-sb/2+d+b/2,sph]) #cube([4*d+l,sb,2]);
	translate([-sb/2+d+l/2,-d,sph]) #cube([sb,4*d+b,2]);
	translate([-1,2,h/2]) #cube([3,3,h]);
}