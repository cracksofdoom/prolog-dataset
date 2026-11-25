:- begin_tests(family).

:- use_module('../teaching/family').

test(grandchildren, [all(Child == [dora, eli])]) :-
    grandparent(ada, Child).

test(ancestors_forward, [set(Person == [ben, cleo, dora, eli, finn])]) :-
    ancestor(ada, Person).

test(ancestor_bound) :-
    once(ancestor(ada, finn)).

test(no_self_ancestor, [fail]) :-
    ancestor(ada, ada).

:- end_tests(family).


:- begin_tests(courses).

:- use_module('../teaching/courses').

test(departments, [true(Departments == [computer_science,
                                       information_systems])]) :-
    setof(Department, student_department(sheena, Department), Departments).

test(classmates, [set(Other == [collins, sheena])]) :-
    classmate(ian, Other).

test(no_self_classmate, [fail]) :-
    classmate(ian, ian).

test(grade_boundary, [all(Point == [4])]) :-
    grade_point(79, Point).

test(grade_reverse, [all(Score == [80,81,82,83,84,85,86,87,88,89,
                                  90,91,92,93,94,95,96,97,98,99,100])]) :-
    grade_point(Score, 5).

test(grade_invalid, [fail]) :-
    grade_point(101, _).

test(student_grade_bound) :-
    student_grade(ian, csc1200, 5).

test(student_grade_wrong, [fail]) :-
    student_grade(ian, csc1200, 4).

test(weighted_average, [true(Average =:= 31 / 7)]) :-
    weighted_average(ian, Average).

:- end_tests(courses).


:- begin_tests(constraints).

:- use_module('../teaching/constraints').

test(all_schedules, [all(A-B == [1-2, 1-3, 2-3])]) :-
    course_pair(A, B).

test(bound_schedule) :-
    course_pair(1, 3).

test(invalid_schedule, [fail]) :-
    course_pair(3, 1).

:- end_tests(constraints).
