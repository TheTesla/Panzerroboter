h = 50;
b = 128;
l = 88;

lvhp = [5,5,5,34,34,0,0,0,0,0];
lvlp = [6.5,7+10,7+10,7+10+52,7+10+52,-7,6,6,l-6,l-6];
lvbmd = [0,-18.5,12.0,67/2,-67/2,0,b/2-6,6-b/2,b/2-15,15-b/2];
lvra = [10/2,10/2,10/2,10/2,10/2,1,1.5,1.5,1.5,1.5];
lvri = [1.5,1.5,1.5,1.5,1.5,10,1.5,1.5,1.5,1.5];

svlp = 7+10+52-8/2-2;
svang = 45;
ssbmd = 54/2;
ssbang = 30;

br = 37;
blp = l;
bb = (b - 110)/2;
bhp = 22.5;

hlp = 7+10+52;
hbmd = 93/2;
hr = 10.29/2;
hanga = 90-(180 -(90-13))/2;
hangb = atan(27/300);
echo(hangb);

$fn = 50;

difference(){
	cube([l,b,h]);
		//translate([hlp,b/2-hbmd,-1]) rotate([-hangb,-hanga,0]) cylinder(r=hr+5,h=h*2);
		//#cube([100,100,30]);
	for(i=[0:9]){
		translate([lvlp[i],b/2+lvbmd[i],-1]){
			cylinder(h=h+2,r=lvri[i]);
			cylinder(h=lvhp[i]+1,r=lvra[i]);
		}
	}
	translate([svlp,-1,0]) rotate([0,90-svang,0])# cube([l,b+2,h*2]);
	translate([-1,b/2+ssbmd,0]) rotate([ssbang-90,0,0]) cube([l+2,b,h*2]);
	translate([-1,b/2-ssbmd,0]) rotate([-ssbang+180,0,0]) cube([l+2,b,h*2]);
	translate([blp,bb,bhp]) rotate([90,0,0]) cylinder(r=br,h=bb+1);
	translate([blp,b+1,bhp]) rotate([90,0,0]) cylinder(r=br,h=bb+1);
	translate([hlp,b/2-hbmd,-1]) rotate([-hangb,-hanga,0]) cylinder(r=hr,h=h*2);
	translate([hlp,b/2+hbmd,-1]) rotate([hangb,-hanga,0]) cylinder(r=hr,h=h*2);
}


