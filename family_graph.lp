% Facts
e("BL",father,"AL").
e("BL",mother,"IL").
e("HL", parent,"AL").

% e("BL",brother,"HL").

% Rules: deriving new relations bassed on existing relations:
e(X,parent,Y) :- e(X, father, Y).
e(X,parent,Y) :- e(X, mother, Y).

e(X,sibling,Y) :- e(X, parent, P), e(Y,parent,P), X!=Y.
