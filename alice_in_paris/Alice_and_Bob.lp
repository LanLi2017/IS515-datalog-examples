% Extensional Database = Set of Facts: 
% The FACTS (aka "triple") in the knowledge graph: 
e("ML",exhibited_at,"LOU").
e("B",friend_of,"Alice").
e("B",interested_in,"ML").
e("Alice",isa,"Person").
e("B",isa,"Person").
e("ET",located_in,"Paris").
e("LOU",located_in,"Paris").
e("Alice",visited,"ET").
e("B",was_born_on,"DOB").

% Some RULES (query definitions):
    
has_out_edge(X) :- e(X,_,_).
has_in_edge(X) :- e(_,_,X).

% The vertices of the graph:
v(X) :- has_out_edge(X).
v(X) :- has_in_edge(X).

parent(X,F) :-  father(X, F).
parent(X,M) :- mother(X,M).

% The labels of the graph:
label(L) :- e(_,L,_).

% The sources, sinks, inner nodes of the graph:
source(X) :- has_out_edge(X), not has_in_edge(X).
sink(X) :- has_in_edge(X), not has_out_edge(X).

inner(X) :- v(X), not source(X), not sink(X).

#show source/1.
#show sink/1.
#show inner/1.
