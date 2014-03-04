

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
rkma2 = rc + d+1;
rkmi2 = rkma2 +3.5;
rmui2 = 1.5;

angsl = 13;
lh = rc+d+10;
hh = 15;
bh = 20;

rmmi = 1.7;

h = 40;
Kr = 7/2;

b = 20;

anggap1 = 85;

d = 4;
d2 = d+4;

Sr = 20/2+d;

rl = 2;
rls = 5;
rl2= rl+0.3;
sl = 20;

Hl = 140;
Hh = 20;
Hd = 10;


module halter1(anggap)
{
	minkowski(){
		union(){
			difference(){
				cylinder(r=Sr+1,h=h);
				translate([0,0,-1])cylinder(r=Sr,h=h+2);
				translate([-Sr-3,0,-1])cube([3*Sr,3*Sr,h+2]);
				rotate([0,0,-anggap])translate([-Sr-3,0,-1])cube([3*Sr,3*Sr,h+2]);
			}
			
			translate([-Sr-Kr-1,0,0])
			rotate([0,0,0])
			intersection(){
				difference(){
					cylinder(r=Kr+1,h=h);
					translate([0,0,-1])cylinder(r=Kr,h=h+2);
				}
				translate([0,0,-1])cube([3*(Kr+1),3*(Kr+1),h+2]);
			}
		}
		cylinder(r=d,h=1);
	}
}

xp = Sr*cos(anggap1-45);
yp = -d+Sr*sin(anggap1-45);

sk = 3;

difference(){
union(){

translate([-22,-lh,-hu-hh]) rotate([0,-angsl,90])translate([-Sr-b,0,0]){
difference(){
	union(){
		translate([0,0,0]) rotate([0,0,-45])mirror([0,1,0]) halter1(anggap1);
	
		translate([-Sr-Kr-d/2,Kr+d/2,0]){
			difference(){
			cylinder(r=3*d,h=h+1);
			translate([0,-4*d,-1])cube([4*d,4*d,h+3]);
			rotate([0,0,45]) translate([0,-4*d,-1])cube([4*d,4*d,h+2]);
	
			}
		}
	}
	scale([1.02,1.1,1.1])translate([0,0,-0.1]) halter1(anggap1);

}
difference(){
	translate([xp,yp,0]) cube([b-xp+Sr-2,2*d,h+1]);
	translate([sl,2*d+1+yp,rl/2+h/2-1/2]) rotate([90,0,0]) cylinder(r=rl2,h=2*d+2);
}
}


color([1,0,0]){
difference(){
	union(){
		translate([-bh/2,-lh-b+bh/2,-hu-hh]) cube([bh,lh+rkma2+b-bh/2,hh]);
		translate([0,-lh-b+bh/2,-hu-hh]) cylinder(r=bh/2,h=hh);
		translate([0,rkma2,-hu-hh]) cylinder(r=bh/2,h=hh);
	}
	translate([0,rkmi2,-hu-hh]) cylinder(r=rmmi,h=hh);
	translate([0,-rkmi2,-hu-hh]) cylinder(r=rmmi,h=hh);
}
translate([d-bh/2,-lh,-hu-hh]) rotate([0,-angsl,90])translate([-Sr-b,0,0]){
	difference(){
		union(){
			translate([Sr,d-d2*2,0])cube([b,2*d2,h+1]);
			halter1(0);
		}
		translate([sl,d+1,rl/2+h/2-1/2]) rotate([90,0,0]) cylinder(r=rl,h=2*d2+2);
	}
}
}

}

translate([0,0,-hu-hh*3]) cylinder(r=lh+Sr+bb,h=hh*2);
translate([d-bh/2,-lh,-hu-hh]) rotate([0,-angsl,90]) translate([sl-Sr-b,-d-d2,rl/2+h/2-1/2]) rotate([90,0,0]) cylinder(r=rls,h=bh+2);

}



module rundeecke(r,h,ang=0)
{
	rotate([0,0,ang]) translate([-r,-r,-0.01])
	difference(){
		cube([r+0.01,r+0.01,h+0.02]);
		cylinder(r=r,h=h+0.02);
	}
}

%union(){
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
}

