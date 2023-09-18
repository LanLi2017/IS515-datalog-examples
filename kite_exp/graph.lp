
% A Graph G, represented as a database instance I of edges e(From, To):
e(1,2).
e(1,3).
e(2,4).
e(3,4).
e(4,5).

% The vertices of the graph:
v(6).    
% In RA: V = \pi_1(E) U \pi_2(E), i.e., the union of the projections on the 1st and 2nd column, resp.
v(X) :- e(X,_).     
v(X) :- e(_,X).     
