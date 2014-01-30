l = 5;
b = 20;
h = 30;
sh= 3.3;
df = 10;
rf = 16;

ang = 8;

ba = 110;

$fn = 50;

hs = 10;

module halbfeder(l,b,h,rf,df,sh)
{
	translate([0,-b,-h/2])
	difference(){
		union(){
			cube([l,b,h]);
			translate([0,b,h/2]) rotate([0,90,0]) cylinder(r=rf,h=l);
		}
		translate([-1,-1,h/2-sh/2]) #cube([l+2,b,h+rf]);
		translate([-1,b,h/2]) rotate([0,90,0]) cylinder(r=rf-df,h=l+2);
	}
}

module feder(l,b,h,rf,df,sh,ang)
{
	halbfeder(l,b,h,rf,df,sh);
	rotate([ang,0,0]) mirror([0,0,1]) halbfeder(l,b,h,rf,df,sh);
}

feder(l,b,h,rf,df,sh,ang);
translate([0,ba-b*2,0]) mirror([0,1,0]) feder(l,b,h,rf,df,sh,ang);
translate([0,b-b,-rf]) color([1,0,0])cube([l,ba-2*b,hs]);