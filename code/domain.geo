Point(1) = {0, 0, 0, 1E-2};
Point(2) = {-1, 0, 0, 1E-1};
Point(3) = {-1, 1, 0, 1E-1};
Point(4) = {1, 1, 0, 1E-1};
Point(5) = {1, -1, 0, 1E-1};
Point(6) = {0, -1, 0, 1E-1};

Line(1) = {6, 1};
Line(2) = {1, 2};
Line(3) = {2, 3};
Line(4) = {3, 4};
Line(5) = {4, 5};
Line(6) = {5, 6};
Line Loop(7) = {3, 4, 5, 6, 1, 2};
Plane Surface(8) = {7};
Physical Line(1) = {1, 2}; // Dirichlet 
Physical Line(2) = {6, 5, 4, 3}; // Neumann
Physical Surface(11) = {8};
