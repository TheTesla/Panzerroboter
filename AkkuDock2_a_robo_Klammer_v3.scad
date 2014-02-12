
$fn = 50;

ra = 20;
rv = 30;

hia = 30;
bia = 17.0;
lia = 108.5;

sp = 3;

d = 3;

h = 150;
hl = 140;
b = bia + d + 2*sp;
l = lia + d + 2*sp;


ba = 7;
la = 10;

a1 = 4 + sp;
a2 = a1 + 33;
a3 = a2 + 54;

ang = 14;


spa = 2;
da = 0.7;

ro = 5;
bk = 5;
rs = 6/2;
rsb= 3.2/2;
lo = 75;

lls = 15;
angs = 8;

Wr = 8;

rla = 10;
rli = 1.7;
rlisd = 3;

rhla = 15;

anglh = 20;

%difference(){
	
	union(){
		rotate([angs,0,0]){
			difference(){
				cube([l+2*d,b+2*d,h+2*d]);
	
				translate([d,d,d]) cube([l,b+2*d,h+2*d]);
				translate([d+lls,-d,d]) cube([l-lls*2,b+2*d,h+2*d]);
	
			}
		}
		translate([0,-rla,rla]) rotate([0,90,0]) cylinder(r=rla,h=d);
		translate([0,-rla,0]) cube([d,rla,2*rla]);
		translate([lia+sp*2+d*2,-rla,rla]) rotate([0,90,0]) cylinder(r=rla,h=d);
		translate([lia+sp*2+d*2,-rla,0]) cube([d,rla,2*rla]);
		translate([0,-rhla,+h-d]) rotate([0,90,0]) cylinder(r=rhla,h=d);
		translate([0,-rhla,+h-d]) rotate([anglh+180,0,0])cube([d,rhla,3*rhla]);
		translate([lia+sp*2+d*2,-rhla,+h-d]) rotate([0,90,0]) cylinder(r=rhla,h=d);
		translate([lia+sp*2+d*2,-rhla,+h-d]) rotate([anglh+180,0,0])cube([d,rhla,3*rhla]);

	}
	translate([-1,-rla,rla]) rotate([0,90,0]) cylinder(r=rli,h=lia+sp*2+d*3+2);
	translate([-1,-rhla,h-d]) rotate([0,90,0]) cylinder(r=rli,h=lia+sp*2+d*3+2);
	translate([d,-rhla,+h-d]) rotate([0,90,0]) cylinder(r=rhla,h=lia+sp*3);

	translate([ra/2+d,-1,hl]) rotate([90,0,0]) cylinder(r=rlisd,h=h+d+2);
	translate([lia+sp*2+d*2-ra/2,-1,hl]) rotate([90,0,0]) cylinder(r=rlisd,h=h+d+2);

	translate([-d, 0, 0]) cube([l+4*d,b+4*d,h+4*d]);
}

%difference(){
	cube([l+2*d,b+2*d,h+2*d]);
	translate([d,d,d]) cube([l,b,h+2*d]);
	translate([d+ra,-2*d,rv-0.5*d]) cube([l-2*ra,b+sp+4*d,h+2*d]);
	translate([0,0,h+2*d]) rotate([ang,0,0]) translate([-d,0,-(h+2*d)])cube([l+4*d,b+2*d,h+2*d]);
	translate([ra/2+d,d+1,hl]) rotate([90,0,0]) cylinder(r=rli,h=d+2);
	translate([lia+sp*2+d*2-ra/2,d+1,hl]) rotate([90,0,0]) cylinder(r=rli,h=d+2);

	minkowski(){
		translate([2*d+Wr,2*d+Wr,-d]) cube([l-2*d-2*Wr,b-2*d-2*Wr,h+2*d]);
		cylinder(r=Wr, h=1);
	}
}

kd = 5;
kh = 19.5;
kkd = 2;
kkb = 1.5;
krl = 1.5;
color([1,0,0]){
	difference(){
		union(){
			translate([sp+d*1.5,d,140-kd/2]) cube([lia,kh,kd]);
			translate([sp+d*1.5,d+kh,140-kd/2-kkb]) cube([lia,kkd,kd+kkb]);
		}
		translate([ra/2+d,d+kh+1+kkd,140]) rotate([90,0,0]) #cylinder(r=krl,h=kh+2+kkd);
		translate([lia+sp*2+d*2-ra/2,d+kh+1+kkd,140]) rotate([90,0,0]) #cylinder(r=krl,h=kh+2+kkd);
	}
}
