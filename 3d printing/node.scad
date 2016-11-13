//include <./Icosahedron-solid.scad>
//$fa=0.1;
//$fs=0.1;

scale = 41;
pinPitch = 2.54;
numPins = 5;
numRows = 2;
headerHeight = 9;
fitGap = 0.5;

holeRadius = 4;

module reg_polygon(sides,radius)
{
  function dia(r) = sqrt(pow(r*2,2)/2);  //sqrt((r*2^2)/2) if only we had an exponention op
  if(sides<2) square([radius,0]);
  if(sides==3) triangle(radius);
  if(sides==4) square([dia(radius),dia(radius)],center=true);
  if(sides>4) circle(r=radius,$fn=sides);
}

module pentagon(radius)
{
  reg_polygon(5,radius);
}

module dodecahedron(height) 
{
    scale([height,height,height]) //scale by height parameter
    {
        intersection()
		  {
            //make a cube
            cube([2,2,1], center = true); 
            intersection_for(i=[0:4]) //loop i from 0 to 4, and intersect results
            { 
                //make a cube, rotate it 116.565 degrees around the X axis,
                //then 72*i around the Z axis
                rotate([0,0,72*i])
                rotate([116.565,0,0])
                cube([2,2,1], center = true); 
            }
        }
    }
}



//scale(scale) show_solid(solid_1);

difference() {
	 rotate([32, 0, 0]) {
	 	  minkowski() {
		  	   dodecahedron(54);
    	      //scale(scale) show_solid(solid_1);
		      sphere(4);
		  }
	 }
    translate([10,0,-1.5*scale])
        cube(scale*3, true);
    arduinoSpace();
    translate([scale - headerHeight, 0, 0])
        cube([headerHeight, numPins*pinPitch + fitGap, numRows*pinPitch + fitGap],true);
	 rotate([90,0,0])
	     cylinder(scale*2,holeRadius,holeRadius,true);
}

module arduinoSpace() {
    minkowski() {
        cube([48,26,10],true);
        sphere(5);
    }
}

/*rotate([0,0,180]) {
translate([-27,0,17]) {
rotate([0,-58,0]) {
color("blue") {
    minkowski() {
	     pentagon(0.75*25.4);
	     circle(0.0787402*25.4);
    }
}
}}}*/

/*translate([0,0,scale*0.77])
    rotate([0,0,0])
        color("gray")
            linear_extrude(1)
                circle(d=scale, true);
*/