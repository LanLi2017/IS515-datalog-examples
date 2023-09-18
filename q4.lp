% Find a path with 3 edges and return the 2nd last vertex: 
ans1(X) :- e(GP,P), e(P,X), e(X,C).

% Find a vertex with (at least) two in-edges: 
ans2(X) :- e(Y1,X), e(Y2,X), Y1 != Y2.

#show ans1/1.
#show ans2/1.
