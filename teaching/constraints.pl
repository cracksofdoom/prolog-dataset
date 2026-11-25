:- module(constraints, [course_pair/2]).

/** <module> A small finite-domain scheduling example.

Slots are numbered 1 to 3. Two courses must use different slots;
logic programming is scheduled before operating systems.
*/

:- use_module(library(clpfd)).

%! course_pair(?LogicSlot:integer, ?OperatingSystemsSlot:integer) is nondet.
%  Enumerate valid slots for the two courses. Bound slots also work.
course_pair(LogicSlot, OperatingSystemsSlot) :-
    [LogicSlot, OperatingSystemsSlot] ins 1..3,
    LogicSlot #< OperatingSystemsSlot,
    label([LogicSlot, OperatingSystemsSlot]).
