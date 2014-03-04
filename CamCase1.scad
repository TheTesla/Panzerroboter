

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



difference(){
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
	translate([0,-bb/2,-1])# cube([rc+1+d+rkma+rc,bb,hb+1]);
	difference(){
		translate([0,0,-1]) cylinder(r=rc,h=hc+2);
	
		translate([0,0,(hpkh+hpkv)/2]) rotate([0,-angk,0]) difference(){
			cylinder(hk,rk/cos(angk),rk/cos(angk));
		}
	}

}