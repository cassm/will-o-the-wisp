$fs=0.02;
$fa=0.02;

module triangle(radius)
{
  o=radius/2;		//equivalent to radius*sin(30)
  a=radius*sqrt(3)/2;	//equivalent to radius*cos(30)
  polygon(points=[[-a,-o],[0,radius],[a,-o]],paths=[[0,1,2]]);
}

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

module guiding_lines(radius, width) {
	for(i = [0:4]) {
		rotate([0,0,72*i]) {
			translate ([width/-2, 0]) {
				square([width,radius]);
			}
		}
	}
}

/*minkowski() {
	pentagon(0.75);
	circle(0.0787402);
}*/

guiding_lines (0.75*0.8, 0.19685);

