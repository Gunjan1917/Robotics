world {}

#setting the table frame
table (world){
    shape:ssBox, Q:<t(0 0.6 0.6)>, size:[4. 6. .1 .02], color:[1. 0.99 0.94]
    contact:1, logical:{ }
    friction:.1
}

Prefix: "L_"
Include: 'panda_moveGripper.g'

Prefix!

Edit L_panda_link0 (table) { Q:<t(.0 -1.1 .1) d(90 0 0 1)> }

#setting the right camera
r_camera(world){
    Q:<t(0.5 -0.5 2.0) d(-90 0 0 1)>,
    shape:marker, size:[.1],
    focalLength:0.895, width:640, height:360, zRange:[.5 100]
}

#setting the left camera
l_camera(world){
    Q:<t(-0.5 -0.5 2.0) d(90 0 0 1)>,
    shape:marker, size:[.1],
    focalLength:0.895, width:640, height:360, zRange:[.5 100]
}

#setting camera for the cart
cart_camera(world){
    Q:<t(0.0 0.8 1.0) d(90 1 0 0)>,
    shape:marker, size:[.1],
    focalLength:0.895, width:640, height:360, zRange:[.5 100]
}

#shelf set as mesh
body shelf { X=<T t(1.5 3.5 0.2) d(-120 0 0 1)> fixed }
shape(shelf){ type=ssBox color=[0.6 0.298 0] rel=<T t(0.4  .55 1.)> size=[.6 .1 1. .02] contact } 
shape(shelf){ type=ssBox color=[0.6 0.298 0] rel=<T t(0.4 -.55 1.)> size=[.6 .1 1. .02] contact }
shape(shelf){ type=ssBox color=[0.6 0.298 0] rel=<T t(0.4 0  .5)> size=[.6 1. .1 .02] contact }
shape(shelf){ type=ssBox color=[0.6 0.298 0] rel=<T t(0.4 0 1.)> size=[.6 1. .1 .02] contact }
shape(shelf){ type=ssBox color=[0.6 0.298 0] rel=<T t(0.4 0 1.5)> size=[.6 1. .1 .02] contact }

#objects on the shelf as meshes
vc8m { mesh:'vc8m.arr' X:<1.7 3.1 1.38 1 0 0 0> class:"GlassRound" meshscale: 2. color=[1 0 0] contact}
vc8m { mesh:'vc8m.arr' X:<1.4 3.28 1.38 1 0 0 0> class:"GlassRound" meshscale: 2. color=[0 1 1]}
vc8m { mesh:'vc8m.arr' X:<1.1 3.45 1.38 1 0 0 0> class:"GlassRound" meshscale: 2. color=[1 0 1]}
E0kQ { mesh:'E0kQ.arr' X:<1.1 3.4 0.8 1 0 0 0> class:"BowlLarge" meshscale: 1.5 color=[1 1 0] }
yRnc { mesh:'yRnc.arr' X:<1.4 3.2 0.8 1 0 0 0> class:"CupEspresso" meshscale: 3. color=[0 0 0] }
74bn { mesh:'74bn.arr' X:<1.6 3.1 0.9 1 0 0 0> class:"GlassRedwine" meshscale: 2. color=[1 1 1]}

frameName {
X:<t(1.2 2.5 0.6) d(135 0 0 1) d(0 0 1 0) d(90 1 0 0)>,
mesh:'/home/gunjan/git/robotics-course/scenarios/human1.obj',  #mesh file for human being
 meshscale: 0.008 #make it a bit smaller
 color=[1 0.85 0.67]
}

#objects on the shelf
lb1 	{  shape:ssBox, size:[0.1, 0.1, 0.1, .02], color:[0.0 0.0 1.0], mass:1.0 X:<t(-0.7 -0.9 1.355)>, contact, friction:.9} 
lr1 	{  shape:ssBox, size:[0.15, 0.1, 0.1, .02], color:[1.0 0.0 0.0], mass:1.0 X:<t(-0.7 -0.74 1.355)>, contact,friction:.9} 
lg1 	{  shape:capsule, size:[0.05, 0.06, 0.04], color:[0.0 1.0 0.0], mass:1.0 X:<t(-0.7 -0.6 1.38) d(90 0 1 0)>, contact,friction:.9} 
lg2 	{  shape:capsule, size:[0.05, 0.06, 0.04], color:[0.0 1.0 0.0], mass:1.0 X:<t(-0.7 -0.45 1.38) d(90 0 1 0)>, contact,friction:.9} 
lr2 	{  shape:ssBox, size:[0.15, 0.1, 0.1, .02], color:[1.0 0.0 0.0], mass:1.0 X:<t(-0.7 -0.30 1.355)>, contact,friction:.9} 
rg1 	{  shape:capsule, size:[0.05, 0.06, 0.04], color:[0.0 1.0 0.0], mass:1.0 X:<t(0.7 -0.9 1.38) d(90 0 1 0)>, contact,friction:.9} 
rb1 	{  shape:ssBox, size:[0.1, 0.1, 0.1, .02], color:[0.0 0.0 1.0], mass:1.0 X:<t(0.7 -0.74 1.355)>, contact,friction:.9} 
rr1 	{  shape:ssBox, size:[0.15, 0.1, 0.1, .02], color:[1.0 0.0 0.0], mass:1.0 X:<t(0.7 -0.6 1.355)>, contact,friction:.9}  
rb2 	{  shape:ssBox, size:[0.1, 0.1, 0.1, .02], color:[0.0 0.0 1.0], mass:1.0 X:<t(0.7 -0.47 1.355)>, contact,friction:.9} 
rb3 	{  shape:ssBox, size:[0.1, 0.1, 0.1, .02], color:[0.0 0.0 1.0], mass:1.0 X:<t(0.7 -0.32 1.355)>, contact,friction:.9} 
cart 	{  shape:ssBox, size:[1., 1., .2, .02], color:[0.7529 0.7529 0.7529], mass:1.0 X:<t(0.0 0.25 1.0)>, contact:1, friction:.9}









