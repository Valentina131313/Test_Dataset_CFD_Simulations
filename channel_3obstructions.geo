//+
SetFactory("OpenCASCADE");

Point(1) = {0, 0, 0, 0.00001};

Point(2) = {0.001, 0, 0, 0.00001};

Point(3) = {0.001, 0.0002, 0, 0.00001};
//+
Point(4) = {0, 0.0002, 0, 0.00001};
//+

//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {1, 4};

Line loop(1)={1,2,3,4};
Plane Surface(1)= {1};
Extrude {0, 0, 0.0002} {
  Surface{1}; 
}
Physical Volume(1) = {1};


//obstruction1
Point(9) = {0.00047, 0, 0.000046, 0.00001};
Point(10) = {0.00047, 0.00004, 0.000046, 0.00001};
Point(11)={0.00053,0.00004,0.000046, 0.00001};
Point(12)={0.00053,0,0.000046, 0.00001};


//+
Line(13) = {9, 10};
//+
Line(14) = {10, 11};
//+
Line(15) = {11, 12};
//+
Line(16) = {9, 12};


Line loop(9)={13,14,15,16};
Plane Surface(9) = {9};
Extrude {0, 0, 0.00002} {
  Surface{9}; 
}
Physical Volume(2) = {9};

//obstruction2
Point(17) = {0.00047, 0, 0.00009, 0.00001};
//+
Point(18) = {0.00047, 0.00004, 0.00009, 0.00001};
Point(19)={0.00053,0.00004,0.00009, 0.00001};
Point(20)={0.00053,0,0.00009, 0.00001};


//+
Line(25) = {17, 18};
//+
Line(26) = {18, 19};
//+
Line(27) = {19, 20};
//+
Line(28) = {17, 20};

Line loop(18) = {25,26,27,28};
Plane Surface(18) = {18};
Extrude {0, 0, 0.00002} {
  Surface{18}; 
}
Physical Volume(3) = {18};

//obstruction3
Point(25) = {0.00047, 0, 0.000134, 0.00001};
//+
Point(26) = {0.00047, 0.00004, 0.000134, 0.00001};
Point(27)={0.00053,0.00004, 0.000134, 0.00001};
Point(28)={0.00053,0, 0.000134, 0.00001};

//+
Line(37) = {25, 26};
//+
Line(38) = {26, 27};
//+
Line(39) = {27, 28};
//+
Line(40) = {25, 28};

Line loop(27) = {37,38,39,40};
Plane Surface(27) = {27};
Extrude {0, 0, 0.00002} {
  Surface{27}; 
}
Physical Volume(4) = {27};

//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Volume{4}; Delete; }
//+
Physical Surface(5) = {1};
//+
Physical Surface(6) = {6};
//+
Physical Surface(7) = {5, 3, 4, 2};

Physical Surface(9) = {14, 11, 13, 20, 12, 9, 19, 7, 10, 8, 16, 15, 18, 21, 17};
