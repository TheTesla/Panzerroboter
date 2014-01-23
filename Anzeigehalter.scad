

Dl = 55;
Db = 11;
Dh = 48;

Nl = 70;
Nb = 20;
Nh = 10;
NWr = 10;
NWb = 17;

d = 1.5;

Wb = 2.0;
Wb2 = 12;
Wr = 5;

Ab = 19;

r = 1.7;

lx = 7;
ly = 7;

$fn = 50;

module frame1(l, b, h, Wb, Wb2, Wr, d)
{
	difference(){
		cube([l+2*d,b+2*d,h+2*d]);
		translate([d,d,d])#cube([l,b,h]);
	
		rotate([90,0,0])
		translate([Wb+Wr+d,Wb2+Wr+d,-4*d-b]){
			#minkowski(){
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

module frame2(l, b, h, Wl, Wb, Wr, d, rl, xl, yl)
{
	difference(){
		cube([l+2*d,b+2*d,h+2*d]);
		translate([d,d,d]) cube([l,b,h+4*d]);
	
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

difference(){
	union(){
		frame1(Dl, Db, Dh, Wb, Wb2, Wr, d);
		difference(){
			translate([(Dl-Nl)/2,Db+d,0]) frame2(Nl, Nb, Nh, NWb, Wb, NWr, d, 1.7,5.5+d,15+d);
			translate([(Dl-Nl)/2-d,+Db+Nb/2+3*d,-d]) cube([Nl+4*d,Nb+2*d,Nh+4*d]);
		}
	}
	translate([Dl/2-Ab/2+d,Db,-d]) #cube([Ab,3*d+Nb,max(Nh,Dh)+5*d]);
	translate([Dl/2-Ab/2,Db+d*2,-d*2]) #cube([Nl,3*d+Nb,max(Nh,Dh)+5*d]);

	translate([Dl+2*d,Db,-d*2]) #cube([Ab,3*d+Nb,max(Nh,Dh)+5*d]);
	translate([Dl/2-Ab/2+d,Db+d,-d]) rotate([0,0,60]) #cube([Ab,3*d+Nb*2,max(Nh,Dh)+5*d]);
	translate([Dl/2-Nl/2-d,Db+d+lx,ly]) rotate([0,90,0]) #cylinder(r=r, h=3*d);


}
