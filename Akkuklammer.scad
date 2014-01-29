l = 10;
b = 20;
sb = 15;
h = 10;
sh= 3.2;

difference(){
	cube([l,b,h]);
	translate([-1,-1,h/2-sh/2]) cube([l+2,sb-1,sh]);
}