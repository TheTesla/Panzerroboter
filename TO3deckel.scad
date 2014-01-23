

$fn = 50; 

sx = 77;
sy = 68;
sz = 5;

rc = 22/2;
hc = 20;

sm = 32;

rs = 2;
sr = 2.5;

rotate([180,0,0])
difference(){
	cube([sx,sy,sz]);
	translate([sx/2-sm/2,sy/2-sm/2, -0.1]){
		cylinder(r=rc, h=hc);
		rotate([0,0,-35]) TO3(1.5);
	}
	translate([sx/2+sm/2,sy/2-sm/2, -0.1]){
		cylinder(r=rc, h=hc);
		rotate([0,0,-35]) TO3(1.5);
	}
	translate([sx/2-sm/2,sy/2+sm/2, -0.1]){
		cylinder(r=rc, h=hc);
		rotate([0,0,-35]) TO3(1.5);
	}
	translate([sx/2+sm/2,sy/2+sm/2, -0.1]){
		cylinder(r=rc, h=hc);
		rotate([0,0,-35]) TO3(1.5);
	}
	translate([sr,sr,-0.1]) cylinder(r=rs, h=sz+1);
	translate([sx-sr,sy-sr,-0.1]) cylinder(r=rs, h=sz+1);
	translate([sx/2,sy/2,-0.1]) cylinder(r=rs, h=sz+1);
	translate([sr,sy/2,-0.1]) cylinder(r=rs, h=sz+1);
	translate([sx-sr,sy/2,-0.1]) cylinder(r=rs, h=sz+1);
	translate([sx-sr,sr,-0.1]) cylinder(r=rs, h=sz+1);
	translate([sr,sy-sr,-0.1]) cylinder(r=rs, h=sz+1);
	translate([sx/2,sr,-0.1]) cylinder(r=rs, h=sz+1);
	translate([sx/2,sy-sr,-0.1]) cylinder(r=rs, h=sz+1);

}



module TO3(h)
{
// All dimensions are in mm
width = 40.80;
depth = 27.30;
height = h;
mounting_hole_diameter = 3.00;
mounting_hole_to_mounting_hole_gap = 30.40;
lead_hole_diameter = 1.80;
lead_holes_to_mounting_hole_gap = 17.00;
lead_hole_to_lead_hole_gap = 11.00;
$fn=64;


// You should not have to change anything below this line
center_circle_r = depth/2;
mounting_hole_r = mounting_hole_diameter/2;
mounting_hole_offset_x = mounting_hole_to_mounting_hole_gap/2;
mounting_hole_hull_r = width/2 - mounting_hole_offset_x;
lead_hole_r = lead_hole_diameter/2;
lead_holes_x = mounting_hole_to_mounting_hole_gap/2 - lead_holes_to_mounting_hole_gap;
lead_hole_offset_y = lead_hole_to_lead_hole_gap/2;


difference() {
  hull() {
    translate([mounting_hole_offset_x, 0, 0]) cylinder(h=height, r=mounting_hole_hull_r);
    cylinder(h=height, r=center_circle_r);
    translate([-mounting_hole_offset_x, 0, 0]) cylinder(h=height, r=mounting_hole_hull_r);
  }

  // Mounting holes:
  translate([mounting_hole_offset_x, 0, -0.5]) cylinder(h=height+1, r=mounting_hole_r);
  translate([-mounting_hole_offset_x, 0, -0.5]) cylinder(h=height+1, r=mounting_hole_r);

  // Source and drain lead holes:
  translate([lead_holes_x, lead_hole_offset_y, -0.5]) cylinder(h=height+1, r=lead_hole_r);
  translate([lead_holes_x, -lead_hole_offset_y, -0.5]) cylinder(h=height+1, r=lead_hole_r);
}

}