use <pibase.scad>

small = 0.1;

board_x = 85.0;
board_y = 56.0;

clearance = 1.0;
base_thickness = 1.0;
floor_thickness = 1.4;
base_x = board_x + base_thickness*2 + clearance*2;
base_y = 70.0;
base_z = 24.0;

board_dx = base_thickness + clearance;
board_dy = (base_y-board_y)/2;
board_dz = 4.0+2.0;

$fa = 1;
$fs = 1;
$fn = 20;

module base_volume()
{
  cube([base_x,base_y,base_z]);
}

module wall(length)
{
  cube([length, base_thickness, base_z]);
}

tab_x = 10.0;
tab_y = 10.0;
tab_r = 2;

module tab()
{
  translate([base_x/2-tab_x/2,-tab_y,0])
  difference() {
    cube([tab_x, tab_y, floor_thickness]);
    translate([tab_x/2,tab_y/2,-small])
    cylinder(r=tab_r,h=floor_thickness+2*small);
  }
}

module floor()
{
  width = 7.0;
  //tab();
  //translate([0,base_y+tab_y,0]) tab();
  difference() {
    cube([base_x, base_y, floor_thickness]);
    translate([width,width,-small]) {
      cube([base_x-width*2, base_y-width*2, floor_thickness+small*2]);
    }
  }
}

module walls()
{
  // wall(base_x);        

  // rotate([0,0,180]) {
  //  translate([-base_x,-base_y,0]) {
  //    wall(base_x);
  //  }
  //}

  rotate([0,0,90]) {
    translate([0,-base_x,0]) {
      wall(base_y);
    }
  }
  rotate([0,0,270]) {
    translate([-base_y,0,0]) {
      wall(base_y);
    }
  }
}

peg_or = 3.6;
peg_ir = peg_or-0.7;
peg_cap = 5;
peg_pilot_ir = 1;
peg_pilot = 1;

module peg()
{
  cylinder(h=5, r=peg_or);
}

module peg_negative()
{
  translate([0,0,-small]) {
    cylinder(h=base_z-peg_cap+small, r=peg_ir);
  }
  translate([0,0,base_z-peg_pilot]) {
    cylinder(h=peg_pilot+small, r=peg_pilot_ir);
  }
}

module pegs()
{
  translate([13,peg_or,0]) peg();
  translate([base_x-13,peg_or,0]) peg();
  translate([13,base_y-peg_or,0]) peg();
  translate([base_x-13,base_y-peg_or,0]) peg();
}

module pegs_negative()
{
  translate([0,peg_or-4.5,-1]) cylinder(h=base_z+2, r=10.5);
  translate([0,base_y-peg_or+4.5,-1]) cylinder(h=base_z+2, r=10.5);

  translate([13,peg_or,0]) peg_negative();
  translate([base_x-13,peg_or,0]) peg_negative();
  translate([13,base_y-peg_or,0]) peg_negative();
  translate([base_x-13,base_y-peg_or,0]) peg_negative();
}

module base()
{
  translate([board_dx,board_dy,board_dz]) pibase();
  floor();
  difference() 
  {
    walls();
    translate([board_dx,board_dy,board_dz]) board();
  }
}

difference() 
{
  union() 
  {
    translate([board_dx, board_dy, board_dz]) %board();
    base();
    //%base_volume();
    pegs();
  }
  pegs_negative();
}

