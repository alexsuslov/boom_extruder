/** Хомут
D - diametr
H - Hight
T - thick
S - split
D1 - diam vint
*/

module homut1(D=46, H=10, T=3, S=3, D1=3){
    r=D/2;
    r1=D1/2;
    zazor=D+T;

        difference(){
            difference(){
                scale([1,1,H]){
                    difference(){
                        difference(){
                            cylinder(1, r+T,r+T, $fn=100);
                            cylinder(1, r+0.6, r, $fn=100);
                        }
                        translate([-S/2, 0, 0]){
                          cube([S, r+T, 1]);
                        }
                    }

                    uhoH=D1+T*3;
                    translate([S/2,r+1,0]){
                        cube([T, uhoH, 1]);
                    }
                    translate([-S*1.5,r+1,0]){
                        cube([T, uhoH, 1]);
                    }
                }
                // отверстие
                translate([S/2, r+(T+D1)+2, H/2]){
                    rotate([0,90,0]){
                        cylinder(H,r1, r1, $fn=4, center=true);
                    }
                }
            }
            /**
            %translate([0,36,1]){
                rotate([45,0,0]){
                    cube([r,r,r], center=true);
                }
            }*/

        /** %translate([-zazor/2-1,0,0])
            cube([D+T*2,r+T+5,0.8]);
            */
        }
}

homut1();
