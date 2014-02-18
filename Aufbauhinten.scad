
$fn = 50;


lblp = 2;

hi = 38.5 *1;
bi = 55.5;
li = 66 + lblp;

lmlp = 44 + lblp;
rlm = 4.5;
rlms = 1.7;
amlm = -2.7;

d = 3 *1;
dm = 15;

hgf = 9 * 1;
hlm = 17.5;
bgfi = 25;

lglp = 16 + lmlp;
agl = 42;
rlgs = 1.7;
rlg = 4;

lgnp = lglp - 24;
gnr = 1.5;
lgnh = 3;

lanp = [lgnp - 17.5, lgnp + 1, lgnp + 1 + 10, lglp - 1.5];
lan  = [10, 8, 8, 8];
ban = [3, 3, 3, 3]; 

la = lanp[0]+lan[0]/2;
ha = hgf + 8;

la2 = lgnp;
ha2 = hgf;

lllp = lanp[0] - 5;
bllp = 5;
hll = 20;
rll = 1.5;

ahbl = 84;
hhbl = 22;
rhbl = 1.5;
rahbl = 4;

lslp = lanp[0]-6;
rsl = 19.85/2;
angsl = 13;


difference(){
	union(){
		translate([0,bi/2-bgfi/2,0]) cube([li,bgfi,hgf]);
		translate([0,0,hgf]) cube([li,bi,hi]);
		translate([0,bi/2-(ahbl+2*rahbl)/2,hhbl+hgf]) cube([2*rahbl, ahbl+2*rahbl, hi-hhbl]);
	}
	translate([lmlp,bi/2+amlm,-1]) cylinder(r=rlm, h=hi+hgf+2);
	
	translate([lglp,bi/2+agl/2,d+hgf]) cylinder(r=rlg, h=hi+hgf+2);
	translate([lglp,bi/2+agl/2,-1]) cylinder(r=rlgs, h=hi+hgf+2);
	translate([lglp,bi/2-agl/2,d+hgf]) cylinder(r=rlg, h=hi+hgf+2);
	translate([lglp,bi/2-agl/2,-1]) cylinder(r=rlgs, h=hi+hgf+2);

	translate([lgnp,bi/2+agl/2,0]) cylinder(r=gnr, h=hgf+lgnh);
	translate([lgnp,bi/2-agl/2,0]) cylinder(r=gnr, h=hgf+lgnh);

	for(i=[0:3]){
		translate([lanp[i]-lan[i]/2,-1,-1]) cube([lan[i],ban[i]+1,hi+hgf+2]);
		translate([lanp[i]-lan[i]/2,bi-ban[i],-1]) cube([lan[i],ban[i]+1,hi+hgf+2]);
	}

	translate([-1,-1,-1]) cube([la+1,bi+2,ha]);
	translate([-1,-1,-1]) cube([la2+1,bi+2,ha2+1]);
	translate([lllp,bi-bllp,-1]) #cylinder(r=rll, h=hll+hgf+1);

	translate([rahbl,bi/2-(ahbl+2*rahbl)/2+rahbl,-1])# cylinder(r=rhbl,h=hhbl+hgf+hll+1);
	translate([rahbl,bi/2+(ahbl+2*rahbl)/2-rahbl,-1])# cylinder(r=rhbl,h=hhbl+hgf+hll+1);
	rotate([0,angsl,0]) translate([lslp,bi/2,-1]) #cylinder(r=rsl,h=2*(hi+hgf+2)+1000);
}

difference(){
	translate([lmlp,bi/2+amlm,hlm]) cylinder(r=rlm+1, h=dm);
	translate([lmlp,bi/2+amlm,-1]) cylinder(r=rlms, h=hi+hgf+2);
}