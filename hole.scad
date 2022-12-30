/**
 * H высота
 * D диаметр
 */
module hole3d(H=3, D=3){
	r=D/2;
    x=r*sqrt(2);
    rotate([0, 0, 45])
        cube([x, x, H], center=true);

    difference(){
        cylinder(H, r, r, $fn=100, center=true);
        translate([-r,0,0])
            cube([D,D,H], center=true);
    }
}

// hole3d();
