%% Question 2: 
%% A source node has no incoming edges. A sink node has no outgoing edges. What nodes in G are source nodes?
%% What nodes are sink nodes? What nodes are neither source, nor sink nodes?
%% Sources: 1
%% Sinks: 5
%% Inner: 2,3,4


%% Question 3: 
%% Write Datalog rules that compute the source nodes, sink nodes, and “other nodes”.
%% Hint: Use negation as needed and make sure that rules are safe.

% Variant 1: 
has_out_edge(X) :- e(X,Y).
has_in_edge(X) :- e(Y,X).

source(X) :- v(X), not has_in_edge(X).
sink(X) :- v(X), not has_out_edge(X).

inner(X) :- v(X), not source(X), not sink(X).

% Variant 2 (using anonymous variables) - inner/1 is the same.
source2(X) :- v(X), not e(_,X).
sink2(X) :- v(X), not e(X,_).

% Variant 3: unsafe
% source3(X) :- v(X), not e(Y,X).
% sink3(X) :- v(X), not e(X,Y).

% Variant 4: safe but semantically incorrect
source4(X) :- v(X), v(Y), not e(Y,X).
sink4(X) :- v(X), v(Y), not e(X,Y).

#show source/1.
#show sink/1.
#show inner/1.
