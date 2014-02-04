l_stab = 700;
d_stab = 10;

g_unten = 120;
h_unten = 350;

g_oben = 60;
h_oben = 175;

d_plate = 10;
d_wall = 5;

sc_r = 1.5;
sc_dx = 65;
sc_dy = 63;

phi = -asin( ((h_oben-h_unten)/2)/l_stab );
theta = -asin( ((g_oben-g_unten)/2)/l_stab );

echo(asin( ((h_oben-h_unten)/2)/l_stab ));

difference() {
	cube(size=[g_oben+d_stab+2*d_wall,h_oben+d_stab+2*d_wall,d_plate], center=true);
	translate([-g_oben/2,-h_oben/2,-d_plate])
	rotate([-phi,theta,0])
		cylinder(r=d_stab/2,h=l_stab);
	translate([g_oben/2,-h_oben/2,-d_plate])
	rotate([-phi,-theta,0])
		cylinder(r=d_stab/2,h=l_stab);
	translate([0,h_oben/2,-d_plate])
	rotate([phi,0,0])
		cylinder(r=d_stab/2,h=l_stab);

	cube(size=[g_oben-d_stab-2*d_wall,h_oben-2*d_stab-2*d_wall,d_plate], center=true);

	translate([-sc_dx/2,-sc_dy/2,-d_plate/2])
		cylinder(r=sc_r,h=d_plate);
	translate([sc_dx/2,-sc_dy/2,-d_plate/2])
		cylinder(r=sc_r,h=d_plate);
	translate([sc_dx/2,sc_dy/2,-d_plate/2])
		cylinder(r=sc_r,h=d_plate);
	translate([-sc_dx/2,sc_dy/2,-d_plate/2])
		cylinder(r=sc_r,h=d_plate);
}