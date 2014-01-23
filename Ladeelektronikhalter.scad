
$fn = 50;

xl = 95.5;
yl = 135.5;
d = 6;
r = 1.7;

br = 4;
lk = 67;
bk = 69;
//bk =10;

rk = 2;

dk1= 3;
dk2= 1.5;

xk = 20;
yk = 50;

difference(){
	cube([xl+2*br,yl+2*br,d]);
	translate([br,br,-1]) cylinder(r=r, h=d+2);
	translate([xl+br,br,-1]) cylinder(r=r, h=d+2);
	translate([br,yl+br,-1]) cylinder(r=r, h=d+2);
	translate([xl+br,yl+br,-1]) cylinder(r=r, h=d+2);
	translate([2*br,-1,-1]) cube([xl-2*br,yk+1-br-rk,d+2*d]);
	translate([2*br,yk+bk+br,-1]) cube([xl-2*br,yk+1-br,d+2*d]);
	translate([xk+br,yk+br,-1]) cube([bk-2*br,lk-2*br,d+2]);

}
difference(){
	translate([xk,yk,d]){
		translate([-1,-rk,0]) cube([1,lk+2*rk,dk1+dk2]);
		translate([bk,-rk,0]) cube([1,lk+2*rk,dk1+dk2]);
		cube([bk,lk,dk1]);
		translate([0,-rk,dk1]) cube([bk,lk+2*rk,dk2]);
	}
	translate([xk+br,yk+br,-1]) cube([bk-2*br,lk-2*br,d+dk1+dk2+2]);
}