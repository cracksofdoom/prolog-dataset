:- getenv('ARCHIVE_FILE', File), load_files(File).

:- begin_tests(archive_records).

test(recorded_scores_have_courses_and_enrollments) :-
    forall(student_score(Student, Code, _),
           ( student(Student),
             takes_course(Student, Code),
             ( current_predicate(course/4) -> course(Code, _, _, _)
             ; course(Code, _, _) )
           )).

test(grade_boundaries) :-
    get_student_grade(ian, csc1200, 5),
    get_student_grade(ian, csc2210, Expected),
    ( current_predicate(course/4) -> Expected = 5 ; Expected = 2 ).

test(weighted_average) :-
    compute_student_GP(ian, Average),
    ( current_predicate(course/4) -> Average =:= 5
    ; Average =:= 64/19 ).

test(mixed_weighted_average,
     [condition(current_predicate(course/4))]) :-
    compute_student_GP('noowe-charlotte', Average),
    Average =:= 72/19.

test(quoted_names) :-
    student('brian-griffin').

test(distinct_departments, [condition(current_predicate(belong_to_two_departments/3))]) :-
    \+ belong_to_two_departments(rose, X, X).

:- end_tests(archive_records).
