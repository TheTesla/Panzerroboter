
inner_dx = 25.0;
inner_dy = 9.0;
outer_dx = inner_dx + 7.0;
outer_dy = inner_dy + 7.0;
bezel_dz = 1.2;
sleeve_wall = 0.7;
sleeve_dx = inner_dx + 2 * sleeve_wall;
sleeve_dy = inner_dy + 2 * sleeve_wall;
sleeve_dz = 1.8;

bezel_r1 = 3;
bezel_r2 = 2;

$fa = 1;
$fs = 1;


small = 0.1;

module sleeve()
{
  translate([-sleeve_wall,-sleeve_wall,-sleeve_dz])
  {
    cube([sleeve_dx,sleeve_dy,sleeve_dz]);
  }
}

module negative()
{
  translate([0,0,-sleeve_dz-small]) {
    cube([inner_dx, inner_dy, sleeve_dz+bezel_dz+2*small]);
  }
}

module bezel()
{
  translate([-(outer_dx-inner_dx-bezel_r2*2)/2,-(outer_dy-inner_dy-bezel_r2*2)/2,0]) 
  {
    minkowski()
    {
      cube([outer_dx-bezel_r2*2, outer_dy-bezel_r2*2, small]);
      cylinder(r1=bezel_r1,r2=bezel_r2,h=bezel_dz-small);
    }
  }
}


difference()
{ 
  union()
  {
    sleeve();
    bezel();
  }
  negative();
}
