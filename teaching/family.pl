:- module(family, [parent/2, grandparent/2, ancestor/2]).

/** <module> A small family tree for facts, rules, and recursion.

The parent graph is acyclic. Names are atoms; the facts are fictional.
*/

%! parent(?Parent:atom, ?Child:atom) is nondet.
%  Parent is a direct parent of Child.
parent(ada, ben).
parent(ada, cleo).
parent(ben, dora).
parent(cleo, eli).
parent(dora, finn).


%! grandparent(?Grandparent:atom, ?Grandchild:atom) is nondet.
%  Grandparent is two parent links away from Grandchild.
grandparent(Grandparent, Grandchild) :-
    parent(Grandparent, Parent),
    parent(Parent, Grandchild).


%! ancestor(?Ancestor:atom, ?Descendant:atom) is nondet.
%  Ancestor is one or more parent links from Descendant.
ancestor(Ancestor, Descendant) :-
    parent(Ancestor, Descendant).

ancestor(Ancestor, Descendant) :-
    parent(Ancestor, Child),
    ancestor(Child, Descendant).
