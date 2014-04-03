

rc = 60/2;
rc2= 83/2;
bb = 74;
d = 3;

$fn = 50;

hu = 5;


echo(rc, d);
rkma2 = 0;
rkmi2 = rkma2 +3.5;

angsl = -13;
lh = rc+d+10;
hh = 15;
bh = 20;


h = 50;
Kr = 7/2;

b = 20;

anggap1 = 85;

d2 = d+5;

Sr = 20/2+d;

rl = 2;
rl2= rl+0.3;
sl = 22;





llm = 139;
bsm = 10;
hsx = 50;

rsm = 2;
hpsm = [40,40,25,25,10,10];
lpsm = [35,llm-35,35,llm-35,35,llm-35];
n = 6;

hm = 25;

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

translate([-25,-lh,-hu-hh+bb*sin(angsl)]) rotate([0,-angsl,90])translate([-Sr-b,0,0]){
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
	}
	translate([d-bh/2,-lh,-hu-hh + bb*sin(angsl)]) rotate([0,-angsl,90])translate([-Sr-b,0,0]) translate([sl,d+1,rl/2+h/2-1/2]) rotate([90,0,0]) cylinder(r=rl,h=sl);
}
translate([d-bh/2,-lh,-hu-hh + bb*sin(angsl)]) rotate([0,-angsl,90])translate([-Sr-b,0,0]){
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
translate([0,0,hm-hu-hh]) cylinder(r=lh+Sr+bb,h=hh*2);

}





translate([0,0,-hu-hh+hsx])
difference(){
	translate([-llm/2,0,-hsx])cube([llm,bsm,+hsx],center=false);
	for(i=[0:n-1]){
		translate([-llm/2+lpsm[i],bsm+1,-hsx+hpsm[i]]) rotate([90,0,0])# cylinder(h=bsm+2,r=rsm);
	}
}



echo(rkmi2);
