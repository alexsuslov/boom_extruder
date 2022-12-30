/**
 * H высота
 * size [x,y] размер
 * T толщина
 * D диаметр отверстий
 */

module noise( H=15, size=[40, 25], T=3, D=2) {
    t=T*2;
    dX=size[0]/4;
    difference(){
        // корпус
        linear_extrude(H){
            difference(){
                square([size[0]+t,size[1]+t],true);
                square(size,true);
            }
        }
        // отверстия
        translate([0,0,H/2]){
            rotate([0,90,0]){
                cylinder(size[0]+t+1,d=3,center = true, $fn=4);
            }
        }

        translate([dX, 0, H/2]){
            rotate([90,0,0]){
                cylinder(size[1]+t+1,d=3,center = true, $fn=4);
            }
        }

        translate([-dX, 0, H/2]){
            rotate([90,0,0]){
                cylinder(size[1]+t+1,d=3,center = true, $fn=4);
            }
        }
    }
}

// noise();
