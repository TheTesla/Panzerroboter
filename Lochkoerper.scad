Nx = 40;
Ny = 1;
Nz = 3;
Xoff = -0.5;
Yoff = -0.5;
Zoff = -0.5;
r = 1.5;
Dx = 5.0;
Dy = 5.0;
Dz = 5.0;
$fn = 30;
difference(){
	translate([-Dx*Nx/2, -Dy*Ny/2, -Dz*Nz/2]){
		cube([Dx*Nx,Dy*Ny,Dz*Nz],0);
	}
	{
		for(yi = [1:Ny]){
			for(xi = [1:Nx]){
				translate([(Xoff+(xi-Nx/2))*Dx,(Yoff+(yi-Ny/2))*Dy,-Dz*Nz/2]){
					cylinder(Dz*Nz+1,r,r,0);
				}
			}
		}
	
		rotate([-90,0,0]){
			for(zi = [1:Nz]){
				for(xi = [1:Nx]){
					translate([(Xoff+(xi-Nx/2))*Dx,(Zoff+(zi-Nz/2))*Dz,-Dy*Ny/2]){
						cylinder(Dy*Ny+1,r,r,0);
					}
				}
			}
		}
		rotate([0,-90,0]){
			for(zi = [1:Nz]){
				for(yi = [1:Ny]){
					translate([(Zoff+(zi-Nz/2))*Dz,(Yoff+(yi-Ny/2))*Dy,-Dx*Nx/2]){
						cylinder(Dx*Nx+1,r,r,0);
					}
				}
			}
		}
	}

};
