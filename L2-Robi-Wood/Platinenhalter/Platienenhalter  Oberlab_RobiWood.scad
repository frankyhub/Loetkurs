

include <ma_lib/constants.scad>
use <ma_lib/shapes.scad>

difference(){
 union() {
cuboid([57,25,10], fillet=5, 
edges=
EDGE_TOP_FR+
EDGE_TOP_RT+
EDGE_TOP_BK+
EDGE_FR_RT+
EDGE_BK_RT
,$fn=40);

translate([-10,0,0])

rotate([180,180,0])
cuboid([57,25,10], fillet=5, 
edges=
EDGE_TOP_FR+
EDGE_TOP_RT+
EDGE_TOP_BK+
EDGE_FR_RT+
EDGE_BK_RT
,$fn=40);
 }
//Aussparung 55 x 3 für RobiWood
translate([-32.5,2,-4]) 
cube(size = [55 ,3,10]);

}

translate([-19.5, -6,4])
linear_extrude(2)

text("Oberlab",  font = "Arial", size = 6);


