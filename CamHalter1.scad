h = 39.5;
b = 40;
l = 42;
d = 5;

rw = 9;
hw = 35;
rl1 = 1.5;
dl1 = 31;

$fn = 50;

rl2 = 7/2;
blk2 = 22;
llk2 = 26;
rmllk2 = 10;
bplk2 = 20;
lplk2 = 24;

difference(){
	cube([l,b,h]);
	translate([d,-1,d]) cube([l,b+2,h]);
	translate([-1,b/2,hw]) rotate([0,90,0])cylinder(r=rw,h=d+2);
	translate([-1,b/2-rw,hw]) #cube([d+2,rw*2,h-hw+1]);
	translate([-1,b/2+dl1/2,hw]) rotate([0,90,0])cylinder(r=rl1,h=d+2);
	translate([-1,b/2-dl1/2,hw]) rotate([0,90,0])cylinder(r=rl1,h=d+2);

	translate([lplk2+llk2/2,bplk2+blk2/2,-1]) #cylinder(r=rl2,h=d+2);
	translate([lplk2-llk2/2,bplk2+blk2/2,-1]) cylinder(r=rl2,h=d+2);
	translate([lplk2+llk2/2,bplk2-blk2/2,-1]) cylinder(r=rl2,h=d+2);
	translate([lplk2-llk2/2,bplk2-blk2/2,-1]) cylinder(r=rl2,h=d+2);
	translate([lplk2,bplk2,-1]) cylinder(r=rmllk2,h=d+2);

	translate([l/2,b/2-2.5,-1]) cube([l/2+1,5,d+2]);

}