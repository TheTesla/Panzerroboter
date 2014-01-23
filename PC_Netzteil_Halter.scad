

Dl = 151;
Db = 20;
Dh = 20;

Nl = 151;
Nb = 20;
Nh = 20;
NWr = 3;
NWb = 12;

Nb2 = 40;

d = 1.5;

Wb = 5;
Wr = 3;

$fn = 10;

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

module frame3(l, b, h, Wl, Wb, Wr, d, rl, xl, yl)
{
	difference(){
		cube([l+2*d,b+2*d,h+2*d]);
		translate([d,d,d])cube([l,b,h+4*d]);
	
		rotate([90,0,0]){
			translate([Wb+Wr+d,Wb+Wr+d,-4*d-b]){
				minkowski(){
					cube([l-2*(Wb+Wr),max(l,b,h)+4*d+2*Wr,l+8*d]);
					cylinder(r=Wr,h=1);
				}
			}
		}
		rotate([0,-90,0]){
			translate([Wb+Wr+d,Wb+Wr+d,-4*d-l]){
				minkowski(){
					cube([max(l,b,h)+4*d+2*Wr,b-2*(Wb+Wr),l+8*d]);
					cylinder(r=Wr,h=1);
				}
			}
		}
		translate([Wl+Wr+d,Wb+Wr+d,-4*d]){
			minkowski(){
				cube([l-2*(Wl+Wr),b-2*(Wb+Wr),h+8*d]);
				cylinder(r=Wr,h=1);
			}

		}
		translate([xl,yl,-2*d])#cylinder(r=rl, h=4*d);
		translate([l+2*d-xl,yl,-2*d])#cylinder(r=rl, h=4*d);
	}
}

module frame4(l, b, h, Wl, Wb, Wr, d, rl, xl, yl,xl2,yl2)
{
	difference(){
		cube([l+2*d,b+2*d,h+2*d]);
		translate([d,d,d])cube([l,b,h+4*d]);
	
		rotate([90,0,0]){
			translate([Wb+Wr+d,Wb+Wr+d,-4*d-b]){
				minkowski(){
					cube([l-2*(Wb+Wr),max(l,b,h)+4*d+2*Wr,l+8*d]);
					cylinder(r=Wr,h=1);
				}
			}
		}
		rotate([0,-90,0]){
			translate([Wb+Wr+d,Wb+Wr+d,-4*d-l]){
				minkowski(){
					cube([max(l,b,h)+4*d+2*Wr,b-2*(Wb+Wr),l+8*d]);
					cylinder(r=Wr,h=1);
				}
			}
		}
		translate([Wl+Wr+d,Wb+Wr+d,-4*d]){
			minkowski(){
				cube([l-2*(Wb+Wr),b-2*(Wb+Wr),h+8*d]);
				cylinder(r=Wr,h=1);
			}

		}
		translate([xl,yl,-2*d])#cylinder(r=rl, h=4*d);
		translate([l+2*d-xl2,yl2,-2*d])#cylinder(r=rl, h=4*d);
	}
}

frame(Dl, Db, Dh, Wb, Wr, d);
difference(){
	translate([(Dl-Nl)/2,Db+d,0]) frame3(Nl, Nb, Nh, NWb, Wb, NWr, d, 1.7,6+d,5+d);
	translate([(Dl-Nl)/2-d,+Db+Nb/2+3*d,-d]) cube([Nl+4*d,Nb+2*d,Nh+4*d]);
}
mirror([0,1,0])
difference(){
	translate([0,-d,0]) frame4(Nl, Nb2, Nh, NWb, 8, NWr, d, 1.7,6+d,15+d, 30+d, 5+d);
	translate([(Dl-Nl)/2-d,Nb2/2+d,-d]) #cube([Nl+4*d,Nb2+2*d,Nh+4*d]);
}