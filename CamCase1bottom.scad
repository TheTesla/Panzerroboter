

rc = 100/2;
rc2= 83/2;
rk = rc+6;
hpkv = 13.5;
hpkh = 34.5;
hk = 100;
angk = atan((hpkh - hpkv)/rc/2);
echo(angk);
hc = 44.5;
bb = 74;
hb = 34.5;
d = 5;

rma = 8;
rmi = 1.5;
nma = 5;
rkma = rc + d+0;
rkmi = rkma +3.5;
$fn = 100;

hu = 5;
rmui = 1.7;
lp = rc+d;
rui = rc -3;

dup = 10;
reup = 5;
drup = 3;
trup = 3;

nma2 = 4;
rma2 = 10;
echo(rc,d);
rkma2 = rc + 4+1;
rkmi2 = rkma2 +3.5;
rmui2 = 1.5;

module rundeecke(r,h,ang=0)
{
	rotate([0,0,ang]) translate([-r,-r,-0.01])
	difference(){
		cube([r+0.01,r+0.01,h+0.02]);
		cylinder(r=r,h=h+0.02);
	}
}


difference(){
	union(){
		translate([0,0,-hu]) cylinder(h=hu,r=rc+d);
		translate([0,-bb/2-dup,-hu]) cube([lp+dup,bb+2*dup,hu]);
	}
	translate([lp+dup,bb/2+dup,-hu]) rundeecke(reup,hu);
	translate([lp+dup,-bb/2-dup,-hu]) rundeecke(reup,hu,-90);
	translate([rkmi2,0,-hu]) cylinder(h=hu,r=rmui2);
	translate([0,0,-hu-1]) cylinder(h=hu+2,r=rui);

	difference(){
		translate([0,-bb/2-dup+drup,-trup]) cube([lp+dup-drup,bb+2*dup-2*drup,hu]);
		translate([lp+dup-drup,-bb/2-dup+drup,-trup]) rundeecke(reup,trup,-90);
		translate([lp+dup-drup,+bb/2+dup-drup,-trup]) rundeecke(reup,trup);

	}

}

for(i=[1:nma-1]){
	difference(){
		rotate([0,0,i/nma*360]) translate([rkma,0,-hu]) cylinder(h=hu,r=rma);
		rotate([0,0,i/nma*360]) translate([rkmi,0,-hu]) cylinder(h=hu,r=rmui);
	}
}

for(i=[1:nma2-1]){
	difference(){
		rotate([0,0,i/nma2*360]) translate([rkma2,0,-hu]) cylinder(h=hu,r=rma2);
		rotate([0,0,i/nma2*360]) translate([rkmi2,0,-hu]) cylinder(h=hu,r=rmui2);
	}
}

%difference(){
	union(){
		cylinder(h=hc,r=rc+d);
		for(i=[0:nma-1]){
			difference(){
				rotate([0,0,i/nma*360]) translate([rkma,0,0]) cylinder(h=hc,r=rma);
				rotate([0,0,i/nma*360]) translate([rkmi,0,0]) cylinder(h=hc,r=rmi);
			}
		}
	}
	hull(){
		translate([0,0,hc]) cylinder(r=rc2,h=0.1);
		translate([0,0,(hpkh+hpkv)/2-0.01]) rotate([0,-angk,0]) scale([1/cos(angk),1,1]) cylinder(r=rc,h=0.1);
	}
	translate([0,-bb/2,-1]) cube([rc+1+d+rkma+rc,bb,hb+1]);
	difference(){
		translate([0,0,-1]) cylinder(r=rc,h=hc+2);
		translate([0,0,(hpkh+hpkv)/2]) rotate([0,-angk,0]) cylinder(hk,rk/cos(angk),rk/cos(angk));
	}

}


echo(rkmi2);

