h = 50;
b = 128;
l = 88;

lvhp = [5,5,5,34,34,0,0,0,0,0,28,28,30,30];
lvlp = [6.5,7+10,7+10,7+10+52,7+10+52,-7,6,6,l-6,l-6,l-20,l-20,6,6];
lvbmd = [0,-18.5,12.0,67/2,-67/2,0,b/2-6,6-b/2,b/2-15,15-b/2,20,-20,25,-25];
lvra = [10/2,10/2,10/2,10/2,10/2,1,3,3,3,3,1.5,1.5,1.5,1.5];
lvri = [1.5,1.5,1.5,1.5,1.5,10,1.7,1.7,1.7,1.7,1.5,1.5,1.5,1.5];

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

bst =10;
dst = 5;

pdt = 1.7*bst;

difference(){
	union(){
		hull(){
			translate([lvlp[7],b/2+lvbmd[7],h]) cylinder(r=bst/2,h=dst);
			translate([lvlp[9],b/2+lvbmd[9],h]) cylinder(r=bst/2,h=dst);
		}
		hull(){
			translate([lvlp[8],b/2+lvbmd[8],h]) cylinder(r=bst/2,h=dst);
			translate([lvlp[9],b/2+lvbmd[9],h]) cylinder(r=bst/2,h=dst);
		}
		hull(){
			translate([lvlp[6],b/2+lvbmd[6],h]) cylinder(r=bst/2,h=dst);
			translate([lvlp[8],b/2+lvbmd[8],h]) cylinder(r=bst/2,h=dst);
		}
		
		hull(){
			translate([lvlp[10],b/2+lvbmd[10],h+lvhp[10]]) cylinder(r=bst/2,h=dst);
			translate([lvlp[11],b/2+lvbmd[11],h+lvhp[11]]) cylinder(r=bst/2,h=dst);
		}
		
		hull(){
			translate([lvlp[12],b/2+lvbmd[12],h+lvhp[12]]) cylinder(r=bst/2,h=dst);
			translate([lvlp[13],b/2+lvbmd[13],h+lvhp[13]]) cylinder(r=bst/2,h=dst);
		}
		hull(){
			translate([lvlp[10],b/2+lvbmd[10],h+lvhp[10]]) cylinder(r=bst/2,h=dst);
			translate([lvlp[12],b/2+lvbmd[12],h+lvhp[12]]) cylinder(r=bst/2,h=dst);
		}
		hull(){
			translate([lvlp[11],b/2+lvbmd[11],h+lvhp[11]]) cylinder(r=bst/2,h=dst);
			translate([lvlp[13],b/2+lvbmd[13],h+lvhp[13]]) cylinder(r=bst/2,h=dst);
		}
		hull(){
			translate([lvlp[10],b/2+lvbmd[10],h+lvhp[10]]) cylinder(r=bst/2,h=dst);
			translate([lvlp[8],b/2+lvbmd[8],h]) cylinder(r=bst/2,h=dst);
		}
		hull(){
			translate([lvlp[11],b/2+lvbmd[11],h+lvhp[11]]) cylinder(r=bst/2,h=dst);
			translate([lvlp[9],b/2+lvbmd[9],h]) cylinder(r=bst/2,h=dst);
		}
		hull(){
			translate([lvlp[13],b/2+lvbmd[13],h+lvhp[13]]) cylinder(r=bst/2,h=dst);
			translate([lvlp[9],b/2+lvbmd[9],h]) cylinder(r=bst/2,h=dst);
		}
		hull(){
			translate([lvlp[12],b/2+lvbmd[12],h+lvhp[12]]) cylinder(r=bst/2,h=dst);
			translate([lvlp[8],b/2+lvbmd[8],h]) cylinder(r=bst/2,h=dst);
		}
		hull(){
			translate([lvlp[11],b/2+lvbmd[11],h+lvhp[11]]) cylinder(r=bst/2,h=dst);
			translate([lvlp[7]+pdt,b/2+lvbmd[7]+pdt*(lvbmd[7]-lvbmd[9])/(lvlp[7]-lvlp[9]),h]) cylinder(r=bst/2,h=dst);
		}
		hull(){
			translate([lvlp[10],b/2+lvbmd[10],h+lvhp[10]]) cylinder(r=bst/2,h=dst);
			translate([lvlp[6]+pdt,b/2+lvbmd[6]+pdt*(lvbmd[6]-lvbmd[8])/(lvlp[6]-lvlp[8]),h]) cylinder(r=bst/2,h=dst);
		}
	}
	translate([lvlp[6],b/2+lvbmd[6],h-1]) cylinder(r=lvri[6],h=dst*5+2);
	translate([lvlp[7],b/2+lvbmd[7],h-1]) cylinder(r=lvri[7],h=dst*5+2);
	translate([lvlp[8],b/2+lvbmd[8],h-1]) cylinder(r=lvri[8],h=dst*5+2);
	translate([lvlp[9],b/2+lvbmd[9],h-1]) cylinder(r=lvri[9],h=dst*5+2);

	translate([lvlp[6],b/2+lvbmd[6],h+dst]) cylinder(r=lvra[6],h=dst*5+2);
	translate([lvlp[7],b/2+lvbmd[7],h+dst]) cylinder(r=lvra[7],h=dst*5+2);
	translate([lvlp[8],b/2+lvbmd[8],h+dst]) cylinder(r=lvra[8],h=dst*5+2);
	translate([lvlp[9],b/2+lvbmd[9],h+dst]) cylinder(r=lvra[9],h=dst*5+2);

}

%difference(){
	cube([l,b,h]);
		//translate([hlp,b/2-hbmd,-1]) rotate([-hangb,-hanga,0]) cylinder(r=hr+5,h=h*2);
		//#cube([100,100,30]);
	for(i=[0:9]){
		translate([lvlp[i],b/2+lvbmd[i],-1]){
			cylinder(h=h+2,r=lvri[i]);
			cylinder(h=lvhp[i]+1,r=lvra[i]);
		}
	}
	translate([svlp,-1,0]) rotate([0,90-svang,0]) cube([l,b+2,h*2]);
	translate([-1,b/2+ssbmd,0]) rotate([ssbang-90,0,0]) cube([l+2,b,h*2]);
	translate([-1,b/2-ssbmd,0]) rotate([-ssbang+180,0,0]) cube([l+2,b,h*2]);
	translate([blp,bb,bhp]) rotate([90,0,0]) cylinder(r=br,h=bb+1);
	translate([blp,b+1,bhp]) rotate([90,0,0]) cylinder(r=br,h=bb+1);
	translate([hlp,b/2-hbmd,-1]) rotate([-hangb,-hanga,0]) #cylinder(r=hr,h=h*2+100);
	translate([hlp,b/2+hbmd,-1]) rotate([hangb,-hanga,0]) #cylinder(r=hr,h=h*2+100);
}


