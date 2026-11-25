:- module(course_catalog, [
    student/1,
    lecturer/1,
    course/3,
    teaches_course/2,
    takes_course/2,
    student_score/3,
    course_department/2,
    student_department/2,
    classmate/2,
    grade_point/2,
    student_grade/3,
    weighted_average/2
]).

/** <module> A compact course database for relational queries.

Each recorded score belongs to an enrollment. Scores are integers from
0 to 100. Grade points use the five-band scale in grade_band/3.
*/

:- use_module(library(lists), [sum_list/2]).

%! student(?Student:atom) is nondet.
%  Student is a learner in this example database.
student(ian).
student(sheena).
student(collins).

%! lecturer(?Lecturer:atom) is nondet.
%  Lecturer teaches at least one example course.
lecturer(rose).
lecturer(nakibuule).
lecturer(kizito).

%! course(?Code:atom, ?Title:atom, ?Credits:integer) is nondet.
%  Code identifies a course with Title and credit value Credits.
course(csc1200, logic_programming, 3).
course(csc2200, operating_systems, 4).
course(bis1206, systems_analysis_and_design, 3).

%! teaches_course(?Lecturer:atom, ?Code:atom) is nondet.
%  Lecturer teaches the course identified by Code.
teaches_course(rose, csc1200).
teaches_course(nakibuule, csc2200).
teaches_course(kizito, bis1206).

%! takes_course(?Student:atom, ?Code:atom) is nondet.
%  Student is enrolled in the course identified by Code.
takes_course(ian, csc1200).
takes_course(ian, csc2200).
takes_course(sheena, csc1200).
takes_course(sheena, bis1206).
takes_course(collins, csc2200).

%! student_score(?Student:atom, ?Code:atom, ?Score:integer) is nondet.
%  Student has a recorded score in Code.
student_score(ian, csc1200, 90).
student_score(ian, csc2200, 75).
student_score(sheena, csc1200, 62).
student_score(sheena, bis1206, 82).
student_score(collins, csc2200, 45).

%! course_department(?Code:atom, ?Department:atom) is nondet.
%  Code belongs to Department.
course_department(csc1200, computer_science).
course_department(csc2200, computer_science).
course_department(bis1206, information_systems).

%! student_department(?Student:atom, ?Department:atom) is nondet.
%  Student takes a course in Department. Multiple courses can give
%  repeated answers; use setof/3 to collect distinct departments.
student_department(Student, Department) :-
    takes_course(Student, Code),
    course_department(Code, Department).


%! classmate(?Student:atom, ?Other:atom) is nondet.
%  Student and Other are different students sharing a course.
classmate(Student, Other) :-
    takes_course(Student, Code),
    takes_course(Other, Code),
    dif(Student, Other).


% grade_band(Minimum, Maximum, GradePoint).
grade_band(80, 100, 5).
grade_band(70, 79, 4).
grade_band(60, 69, 3).
grade_band(50, 59, 2).
grade_band(0, 49, 1).

%! grade_point(?Score:integer, ?Point:integer) is nondet.
%  Relate an integer score from 0 to 100 to a grade point from 1 to 5.
%  With Score unbound, enumerate the finite score domain.
grade_point(Score, Point) :-
    grade_band(Minimum, Maximum, Point),
    between(Minimum, Maximum, Score).


%! student_grade(?Student:atom, ?Code:atom, ?Point:integer) is nondet.
%  Point is the grade point for a recorded score.
student_grade(Student, Code, Point) :-
    student_score(Student, Code, Score),
    grade_point(Score, Point).


%! weighted_average(+Student:atom, -Average:float) is semidet.
%  Average is the credit-weighted mean of recorded grade points.
%  Fails if Student has no recorded scores.
weighted_average(Student, Average) :-
    student(Student),
    findall(Weighted-Credits,
            ( student_grade(Student, Code, Point),
              course(Code, _, Credits),
              Weighted is Point * Credits
            ),
            Pairs),
    Pairs \= [],
    findall(Weighted, member(Weighted-_, Pairs), WeightedValues),
    findall(Credits, member(_-Credits, Pairs), CreditValues),
    sum_list(WeightedValues, TotalWeighted),
    sum_list(CreditValues, TotalCredits),
    ComputedAverage is TotalWeighted / TotalCredits,
    Average = ComputedAverage.
