Nx = 5;
Ny = 1;
Nz = 1;
Xoff = -0.5;
Yoff = -0.5;
Zoff = -0.5;
r = 1.2;
rl =1.5;
Dx = 5.0;
Dy = 5.0;
Dz = 5.0;
$fn = 50;
d = 3;
hm = 20;
dm = 2.5;
rlm = 1.5;

mirror([0,1,0]){

difference(){
	union(){
		translate([-Dx*Nx/2, -Dy*Ny/2, -Dz*Nz/2]){
			translate([0,0,-d]) cube([Dx*Nx,Dy*Ny+d,d]);
			translate([Dx,Dy*Ny+d,-d]) cube([Dx*(Nx-1),hm,d]);
			translate([Dx*(Nx+1)/2,Dy*Ny+d+hm,-d])	cylinder(r=Dx*(Nx-1)/2,h=d+dm);
			translate([0,Dy*Ny,0]) cube([Dx*Nx,d,Dz*Nz]);
		}

		for(yi = [1:Ny]){
			for(xi = [2:Nx]){
				translate([(Xoff+(xi-Nx/2))*Dx,(Yoff+(yi-Ny/2))*Dy,-Dz*Nz/2]){
					cylinder(Dz*Nz,r,r,0);
				}
			}
		}

	
	}

		rotate([-90,0,0]){
			for(zi = [1:Nz]){
				for(xi = [1:Nx]){
					translate([(Xoff+(xi-Nx/2))*Dx,(Zoff+(zi-Nz/2))*Dz,-Dy*Ny/2+Dy-1]){
						#cylinder(d+2,rl,rl,0);
					}
				}
			}
		}
	translate([Dx*(Nx+1)/2-Dx*Nx/2,Dy*Ny+d+hm-Dy*Ny/2,-d-Dz*Nz/2-1])	#cylinder(r=rlm,h=d+dm+2);

	translate([(Xoff+(1-Nx/2))*Dx,(Yoff+(1-Ny/2))*Dy,-Dz*Nz]){
		#cylinder(d+1,rl,rl,0);
	}

};
}
