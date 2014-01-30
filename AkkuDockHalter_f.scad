

Db = 9.0;
Dh = 10;

Nl = 141;
Nb = 20;
Nh = 19;
NWr = 3;
NWb = 19;

d = 1.5;

Dl = 116 - 2*d;


Wb = 3;
Wr = 0.9;

$fn = 50;

module frame(l, b, h, Wb, Wr, d)
{
	difference(){
		cube([l+2*d,b+2*d,h+2*d]);
		translate([d,d,d])cube([l,b,h+4*d]);
	
		rotate([90,0,0])
		translate([Wb+Wr+d,Wb+Wr+d,-4*d-b]){
			minkowski(){
				cube([l-2*(Wb+Wr),max(l,b,h)+4*d+2*Wr,l+8*d]);
				cylinder(r=Wr,h=1);
			}
		}
	
		rotate([0,-90,0])
		translate([Wb+Wr+d,Wb+Wr+d,-4*d-l]){
			minkowski(){
				cube([max(l,b,h)+4*d+2*Wr,b-2*(Wb+Wr),l+8*d]);
				cylinder(r=Wr,h=1);
			}
		}
	
		translate([Wb+Wr+d,Wb+Wr+d,-4*d]){
			minkowski(){
				cube([l-2*(Wb+Wr),b-2*(Wb+Wr),h+8*d]);
				cylinder(r=Wr,h=1);
			}
		}
	}
}

module frame_asym(l, b, h, Wb, Wr, d, HWb)
{
	difference(){
		cube([l+2*d,b+2*d,h+2*d]);
		translate([d,d,d])cube([l,b,h+4*d]);
	
		rotate([90,0,0])
		translate([Wb+Wr+d,Wb+Wr+d,-4*d-b]){
						//translate([-10,18,6])rotate([0,90,0]) #cylinder(r=1.5,h=15);
			#minkowski(){
				cube([l-2*(Wb+Wr),max(l,b,h)+4*d+2*Wr,l+8*d]);
				cylinder(r=Wr,h=1);
			}

		}
	
		rotate([0,-90,0])
		translate([Wb+Wr+d+HWb,Wb*2+Wr+d,-4*d-l]){
			#minkowski(){
				cube([max(l,b,h)+4*d+2*Wr,b-2*(Wb+Wr),l+8*d]);
				cylinder(r=Wr,h=1);
			}
		}
	
		translate([Wb+Wr+d,Wb+Wr+d,-4*d]){
			minkowski(){
				cube([l-2*(Wb+Wr),b-2*(Wb+Wr),h+8*d]);
				cylinder(r=Wr,h=1);
			}
		}
	}
}

module frame2(l, b, h, Wl, Wb, Wr, d, rl, xl, yl)
{
	difference(){
		cube([l+2*d,b+2*d,h+2*d]);
		translate([d,d,d])cube([l,b,h+4*d]);
	
		rotate([90,0,0]){
			translate([Wl+Wr+d,Wb+Wr+d,-4*d-b]){
				minkowski(){
					cube([l-2*(Wl+Wr),max(l,b,h)+4*d+2*Wr,l+8*d]);
					cylinder(r=Wr,h=1);
				}
			}
			translate([xl,yl,-2*d])cylinder(r=rl, h=3*d);
			translate([l+2*d-xl,yl,-2*d])cylinder(r=rl, h=3*d);
		}
		rotate([0,-90,0]){
			translate([Wb+Wr+d,Wb+Wr+d,-4*d-l]){
				minkowski(){
					cube([max(l,b,h)+4*d+2*Wr,b-2*(Wb+Wr),l+8*d]);
					cylinder(r=Wr,h=1);
				}
			}
		}
		translate([Wb+Wr+d,Wb+Wr+d,-4*d]){
			minkowski(){
				cube([l-2*(Wb+Wr),b-2*(Wb+Wr),h+8*d]);
				cylinder(r=Wr,h=1);
			}
		}
	}
}

module frame2_mh(l, b, h, Wl, Wb, Wr, d, rl, xl, yl, xl2, yl2)
{
	difference(){
		cube([l+2*d,b+2*d,h+2*d]);
		translate([d,d,d])cube([l,b,h+4*d]);
	
		rotate([90,0,0]){
			translate([Wl+Wr+d,Wb+Wr+d,-4*d-b]){
				minkowski(){
					cube([l-2*(Wl+Wr),max(l,b,h)+4*d+2*Wr,l+8*d]);
					cylinder(r=Wr,h=1);
				}
			}
			translate([xl,yl,-2*d])cylinder(r=rl, h=3*d);
			translate([l+2*d-xl2,yl2,-2*d])cylinder(r=rl, h=3*d);
		}
		rotate([0,-90,0]){
			translate([Wb+Wr+d,Wb+Wr+d,-4*d-l]){
				minkowski(){
					cube([max(l,b,h)+4*d+2*Wr,b-2*(Wb+Wr),l+8*d]);
					cylinder(r=Wr,h=1);
				}
			}
		}
		translate([Wb+Wr+d,Wb+Wr+d,-4*d]){
			minkowski(){
				cube([l-2*(Wb+Wr),b-2*(Wb+Wr),h+8*d]);
				cylinder(r=Wr,h=1);
			}
		}
	}
}

frame_asym(Dl, Db, Dh, Wb, Wr, d, 1);
difference(){
	translate([(Dl-Nl)/2,Db+d,0]) frame2_mh(Nl, Nb, Nh, NWb, Wb, NWr, d, 1.7,5.5+d,15+d,5.5+d,10+d);
	translate([(Dl-Nl)/2-d,+Db+Nb/2+3*d,-d]) cube([Nl+4*d,Nb+2*d,Nh+4*d]);
}