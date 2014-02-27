Nx = 1;
Ny = 4;
Nz = 1;
Xoff = -0.5;
Yoff = -0.5;
Zoff = -0.5;
r = 1.5;
rs = 1.2;
Dx = 5.0;
Dy = 5.0;
Dz = 5.0;
$fn = 50;

Platte(Dx, Dy, Dz, r, Nx, Ny, Nz, Xoff, Yoff, Zoff, 0, 1, 1);

translate([Dx*(Nx+1)/2,0,0]) Platte_i(Dx, Dy, Dz, rs, 1, Ny, Nz, Xoff, Yoff, Zoff, 1, 0, 0);
translate([-Dx*(Nx+1)/2,0,0]) Platte_i(Dx, Dy, Dz, rs, 1, Ny, Nz, Xoff, Yoff, Zoff, 1, 0, 0);

//translate([-Dx*(1+Nx/2)-0.35,-Dy*Ny/2,-Dz*Nz/2]) cube([0.7,Dy*Ny,Dz*Nz/2]);
//translate([+Dx*(1+Nx/2)-0.35,-Dy*Ny/2,-Dz*Nz/2]) cube([0.7,Dy*Ny,Dz*Nz/2]);

translate([Dx*Nx/2,Dy*Ny/2-0.35,Dz*Nz/2-0.35]) cube([Dx*1,0.7,2]);
translate([Dx*Nx/2,-Dy*Ny/2-0.35,Dz*Nz/2-0.35]) cube([Dx*1,0.7,2]);
translate([Dx*Nx/2,Dy*Ny/2-0.35,-Dz*Nz/2-2+0.35]) cube([Dx*1,0.7,2]);
translate([Dx*Nx/2,-Dy*Ny/2-0.35,-Dz*Nz/2-2+0.35]) cube([Dx*1,0.7,2]);

// Function Definitions

module Platte_i(Dx, Dy, Dz, r, Nx, Ny, Nz, Xoff=-0.5, Yoff=-0.5, Zoff=-0.5, Xen = 1, Yen = 1, Zen = 1)
{
	if(Zen){
		for(yi = [1:Ny]){
			for(xi = [1:Nx]){
				translate([(Xoff+(xi-Nx/2))*Dx,(Yoff+(yi-Ny/2))*Dy,-Dz*Nz/2]){
					cylinder(Dz*Nz,r,r,0);
				}
			}
		}
	}
	if(Yen){
		rotate([-90,0,0]){
			for(zi = [1:Nz]){
				for(xi = [1:Nx]){
					translate([(Xoff+(xi-Nx/2))*Dx,(Zoff+(zi-Nz/2))*Dz,-Dy*Ny/2]){
						cylinder(Dy*Ny,r,r,0);
					}
				}
			}
		}
	}
	if(Xen){
		rotate([0,-90,0]){
			for(zi = [1:Nz]){
				for(yi = [1:Ny]){
					translate([(Zoff+(zi-Nz/2))*Dz,(Yoff+(yi-Ny/2))*Dy,-Dx*Nx/2]){
						cylinder(Dx*Nx,r,r,0);
					}
				}
			}
		}
	}
}

module Platte(Dx, Dy, Dz, r, Nx, Ny, Nz, Xoff=-0.5, Yoff=-0.5, Zoff=-0.5, Xen = 1, Yen = 1, Zen = 1)
{
	difference(){
		translate([-Dx*Nx/2, -Dy*Ny/2, -Dz*Nz/2]){
			cube([Dx*Nx,Dy*Ny,Dz*Nz],0);
		}
		Platte_i(Dx, Dy, Dz, r, Nx, Ny, Nz, Xoff, Yoff, Zoff, Xen, Yen, Zen);	
	}
}