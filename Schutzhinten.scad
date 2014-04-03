
$fn = 50;


lblp = 2;

hi = 38.5 *1;
bi = 55.5;
li = 66 + lblp;

lmlp = 44 + lblp;
rlm = 4.5;
rlms = 1.5;
amlm = -2.7;

d = 3 *1;
dm = 15;

hgf = 9 * 1;
hlm = 17.5;
bgfi = 25;

lglp = 16 + lmlp;
agl = 42;
rlgs = 2.1;
rlg = 4;

lgnp = lglp - 24;
gnr = 2.5;
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


xmhl = lglp;
xmha = 19;
xmhr = 1.5;
xmht = 15;

xmhl2 = lmlp;
xmha2 = 30;
xmhr2 = 1.5;
xmht2 = 15;

bs = 10;
ds = 5;
bsh= 98;
hsh = 12;
lpsh= -15;
rsh= 3;

bsm= 131;
hsm = 12;
lpsm= 40+lpsh;
rsm= 3;

bsv= 131;
hsv = 12;
lpsv= 40+lpsm;
rsv= 3;

bsm2= 131;
hsm2 = 57-ds;
lpsm2= 40+lpsh;
rsm2= 3;

bsv2= 131;
hsv2 = 57-ds;
lpsv2= 40+lpsm;
rsv2= 3;
risl = 1.5;
rasl = 3.1;

translate([0,0,hi+hgf]){
	difference(){
		union(){
			hull(){
				translate([rahbl+lpsh+rsh,bi/2-bsh/2+rsh,hsh]) cylinder(r=rsh,h=ds);
				translate([rahbl+lpsh+rsh,bi/2+bsh/2-rsh,hsh]) cylinder(r=rsh,h=ds);
				translate([rahbl,bi/2-(ahbl+2*rahbl)/2+rahbl,0]) cylinder(r=bs/2,h=ds);
				translate([rahbl,bi/2+(ahbl+2*rahbl)/2-rahbl,0]) cylinder(r=bs/2,h=ds);
			}
			hull(){
				translate([rahbl+lpsh+rsh,bi/2-bsh/2+rsh,hsh]) cylinder(r=rsh,h=ds);
				translate([rahbl+lpsm+rsm,bi/2-bsm/2+rsm,hsm]) cylinder(r=rsm,h=ds);
				translate([rahbl,bi/2-(ahbl+2*rahbl)/2+rahbl,0]) cylinder(r=bs/2,h=ds);
			}
			hull(){
				translate([rahbl+lpsh+rsh,bi/2+bsh/2-rsh,hsh]) cylinder(r=rsh,h=ds);
				translate([rahbl+lpsm+rsm,bi/2+bsm/2-rsm,hsm]) cylinder(r=rsm,h=ds);
				translate([rahbl,bi/2+(ahbl+2*rahbl)/2-rahbl,0]) cylinder(r=bs/2,h=ds);
			}
			hull(){
				translate([rahbl+lpsm+rsm,bi/2-bsm/2+rsm,hsm]) cylinder(r=rsm,h=ds);
				translate([rahbl+lpsv+rsv,bi/2-bsv/2+rsv,hsv]) cylinder(r=rsv,h=ds);
			}
			hull(){
				translate([rahbl+lpsm+rsm,bi/2+bsm/2-rsm,hsm]) cylinder(r=rsm,h=ds);
				translate([rahbl+lpsv+rsv,bi/2+bsv/2-rsv,hsv]) cylinder(r=rsv,h=ds);
			}
			hull(){
				translate([rahbl+lpsh+rsh,bi/2-bsh/2+rsh,hsh]) cylinder(r=rsh,h=ds);
				translate([rahbl+lpsm2+rsm2,bi/2-bsm2/2+rsm2,hsm2]) cylinder(r=rsm2,h=ds);
			}
			hull(){
				translate([rahbl+lpsh+rsh,bi/2+bsh/2-rsh,hsh]) cylinder(r=rsh,h=ds);
				translate([rahbl+lpsm2+rsm2,bi/2+bsm2/2-rsm2,hsm2]) cylinder(r=rsm2,h=ds);
			}
			hull(){
				translate([rahbl+lpsh+rsh,bi/2+bsh/2-rsh,hsh]) cylinder(r=rsh,h=ds);
				translate([rahbl+lpsm2+rsm2,bi/2-bsm2/2+rsm2,hsm2]) cylinder(r=rsm2,h=ds);
			}
			hull(){
				translate([rahbl+lpsh+rsh,bi/2-bsh/2+rsh,hsh]) cylinder(r=rsh,h=ds);
				translate([rahbl+lpsm2+rsm2,bi/2+bsm2/2-rsm2,hsm2]) cylinder(r=rsm2,h=ds);
			}
			hull(){
				translate([rahbl+lpsm+rsm,bi/2-bsm/2+rsm,hsm]) cylinder(r=rsm,h=ds);
				translate([rahbl+lpsm2+rsm2,bi/2-bsm2/2+rsm2,hsm2]) cylinder(r=rsm2,h=ds);
			}
			hull(){
				translate([rahbl+lpsm+rsm,bi/2+bsm/2-rsm,hsm]) cylinder(r=rsm,h=ds);
				translate([rahbl+lpsm2+rsm2,bi/2+bsm2/2-rsm2,hsm2]) cylinder(r=rsm2,h=ds);
			}
			hull(){
				translate([rahbl+lpsm2+rsm2,bi/2-bsm2/2+rsm2,hsm2]) cylinder(r=rsm2,h=ds);
				translate([rahbl+lpsv2+rsv2,bi/2-bsv2/2+rsv2,hsv2]) cylinder(r=rsv2,h=ds);
			}
			hull(){
				translate([rahbl+lpsm2+rsm2,bi/2+bsm2/2-rsm2,hsm2]) cylinder(r=rsm2,h=ds);
				translate([rahbl+lpsv2+rsv2,bi/2+bsv2/2-rsv2,hsv2]) cylinder(r=rsv2,h=ds);
			}
			hull(){
				translate([rahbl+lpsv+rsv,bi/2-bsv/2+rsv,hsv]) cylinder(r=rsv,h=ds);
				translate([rahbl+lpsv2+rsv2,bi/2-bsv2/2+rsv2,hsv2]) cylinder(r=rsv2,h=ds);
			}
			hull(){
				translate([rahbl+lpsv+rsv,bi/2+bsv/2-rsv,hsv]) cylinder(r=rsv,h=ds);
				translate([rahbl+lpsv2+rsv2,bi/2+bsv2/2-rsv2,hsv2]) cylinder(r=rsv2,h=ds);
			}
			hull(){
				translate([rahbl+lpsm+rsm,bi/2-bsm/2+rsm,hsm]) cylinder(r=rsm,h=ds);
				translate([rahbl+lpsv2+rsv2,bi/2-bsv2/2+rsv2,hsv2]) cylinder(r=rsv2,h=ds);
			}
			hull(){
				translate([rahbl+lpsm+rsm,bi/2+bsm/2-rsm,hsm]) cylinder(r=rsm,h=ds);
				translate([rahbl+lpsv2+rsv2,bi/2+bsv2/2-rsv2,hsv2]) cylinder(r=rsv2,h=ds);
			}
			hull(){
				translate([rahbl+lpsm2+rsm2,bi/2-bsm2/2+rsm2,hsm2]) cylinder(r=rsm2,h=ds);
				translate([rahbl+lpsv+rsv,bi/2-bsv/2+rsv,hsv]) cylinder(r=rsv,h=ds);
			}
			hull(){
				translate([rahbl+lpsm2+rsm2,bi/2+bsm2/2-rsm2,hsm2]) cylinder(r=rsm2,h=ds);
				translate([rahbl+lpsv+rsv,bi/2+bsv/2-rsv,hsv]) cylinder(r=rsv,h=ds);
			}
			hull(){
				translate([xmhl,bi/2+xmha/2,0]) cylinder(r=bs/2,h=ds);
				translate([xmhl,bi/2-xmha/2,0]) cylinder(r=bs/2,h=ds);
				translate([xmhl,bi/2,0]) cylinder(r=bs/2,h=ds);
				translate([xmhl2,bi/2+xmha2/2,0]) cylinder(r=bs/2,h=ds);
				translate([xmhl2,bi/2-xmha2/2,0]) cylinder(r=bs/2,h=ds);	
			}
			hull(){
				translate([xmhl,bi/2-xmha/2,0]) cylinder(r=bs/2,h=ds);
				translate([rahbl,bi/2-(ahbl+2*rahbl)/2+rahbl,0]) cylinder(r=bs/2,h=ds);
				translate([rahbl+lpsm+rsm,bi/2-bsm/2+rsm,hsm]) cylinder(r=rsm,h=ds);
			}
		}
	
	
		translate([rahbl,bi/2-(ahbl+2*rahbl)/2+rahbl,0]) cylinder(r=risl,h=ds+1);
		translate([rahbl,bi/2+(ahbl+2*rahbl)/2-rahbl,0]) cylinder(r=risl,h=ds+1);
	
		translate([xmhl,bi/2+xmha/2,0]) cylinder(r=risl,h=ds+1);
		translate([xmhl,bi/2-xmha/2,0]) cylinder(r=risl,h=ds+1);
		translate([xmhl,bi/2,0]) cylinder(r=risl,h=ds+1);
	
		translate([xmhl2,bi/2+xmha2/2,0]) cylinder(r=risl,h=ds+1);
		translate([xmhl2,bi/2-xmha2/2,0]) cylinder(r=risl,h=ds+1);


		translate([rahbl,bi/2-(ahbl+2*rahbl)/2+rahbl,ds]) cylinder(r=rasl,h=10*ds+1);
		translate([rahbl,bi/2+(ahbl+2*rahbl)/2-rahbl,ds]) cylinder(r=rasl,h=10*ds+1);
	
		translate([xmhl,bi/2+xmha/2,ds]) cylinder(r=rasl,h=10*ds+1);
		translate([xmhl,bi/2-xmha/2,ds]) cylinder(r=rasl,h=10*ds+1);
		translate([xmhl,bi/2,ds]) cylinder(r=rasl,h=2*ds+1);
	
		translate([xmhl2,bi/2+xmha2/2,ds]) cylinder(r=rasl,h=10*ds+1);
		translate([xmhl2,bi/2-xmha2/2,ds]) cylinder(r=rasl,h=10*ds+1);


	}	

}

%difference(){
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
	translate([lllp,bi-bllp,-1]) cylinder(r=rll, h=hll+hgf+1);

	translate([rahbl,bi/2-(ahbl+2*rahbl)/2+rahbl,-1]) cylinder(r=rhbl,h=hhbl+hgf+hll+1);
	translate([rahbl,bi/2+(ahbl+2*rahbl)/2-rahbl,-1]) cylinder(r=rhbl,h=hhbl+hgf+hll+1);
	rotate([0,angsl,0]) translate([lslp,bi/2,-1]) #cylinder(r=rsl,h=2*(hi+hgf+2)+1000);

	translate([xmhl,bi/2+xmha/2,hi+hgf-xmht]) cylinder(r=xmhr,h=xmht+1);
	translate([xmhl,bi/2-xmha/2,hi+hgf-xmht]) cylinder(r=xmhr,h=xmht+1);
	translate([xmhl,bi/2,hi+hgf-xmht]) cylinder(r=xmhr,h=xmht+1);

	translate([xmhl2,bi/2+xmha2/2,hi+hgf-xmht2]) cylinder(r=xmhr2,h=xmht2+1);
	translate([xmhl2,bi/2-xmha2/2,hi+hgf-xmht2]) cylinder(r=xmhr2,h=xmht2+1);

}

%difference(){
	translate([lmlp,bi/2+amlm,hlm]) cylinder(r=rlm+1, h=dm);
	translate([lmlp,bi/2+amlm,-1]) cylinder(r=rlms, h=hi+hgf+2);
}