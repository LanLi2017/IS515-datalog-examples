% Extensional Database = Set of Facts: 
% The FACTS (aka "triple") in the knowledge graph: 
e("Mona Lisa",exhibited_at,"Louvre").
e("Bob",friend_of,"Alice").
e("Bob",interested_in,"Mona Lisa").
e("Alice",isa,"Person").
e("Bob",isa,"Person").
e("Eiffel Tower",located_in,"Paris").
e("Louvre",located_in,"Paris").
e("Alice",visited,"Eiffel Tower").
e("Bob",was_born_on,"1990-07-14").

% Q1: Who is a person?
q1(X) :- e(X, isa, "Person").

% Q2: Who is interested in something that's exhibited at a venue in Paris?
q2(X) :- e(X, interested_in, I), e(I, exhibited_at, V), e(V, located_in, "Paris").

% Q3: As Q2, but show intermediate nodes:
q3(X, I, V) :- e(X, interested_in, I), e(I, exhibited_at, V), e(V, located_in, "Paris").

% Q4: All about Alice: What's in the 1-neighborhood of Alice?
q4("Alice", R, Y) :- e("Alice", R, Y).
q4(X, R, "Alice") :- e(X, R, "Alice").

#show q1/1.
#show q2/1.
#show q3/3.
#show q4/3.
