/**
 * H высота
 * size [x,y]
 * T - толшина
 * D диаметр
 * T1 толшина
 *
 */

module connector(H=50, size=[40,25], T=3, D=40){
	r=D/2;
    T1=T;
	difference(){
		hull(){
			translate([0,0,0] ) cylinder(1,r+T1, $fn=100);
			translate([0,0,H] ) cube([size[0]+T*2,size[1]+T*2,1],true);
		}
		hull(){
			translate([0,0,0] ) cylinder(1,r, $fn=100);
			translate([0,0,H] ) cube([size[0], size[1],1],true);
		}
	}
}

// connector();
