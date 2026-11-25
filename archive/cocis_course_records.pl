:- use_module(library(lists), [sum_list/2]).

student(ian).
student(sharif).
student(collins).
student(jjuuko).
student(sheena).
student(charlotte).
student(alan).
student(resty).
student(james).
student(peter).
student(griffin).
student(stewie).
student('brian-griffin').
student(balijawa).
student(kabanda).
student(mumbere).
student(timothy).
student(noowe).
student(bena).
student('mumbere-collins').
student('kabanda-sharif').
student('noowe-charlotte').
student(jesse).
student(duke).
student(brian).

lecturer(rose).
lecturer(nakibuule).
lecturer(kizito).
lecturer(joseph).
lecturer(paddy).
lecturer('bit-wire').
lecturer(robert).
lecturer(john).
lecturer('rose-nakibuule').
lecturer('paddy-assimwe').
lecturer('joseph-semwogere').
lecturer('john-kizito').
lecturer('joseph-lwomwa').

takes_course(ian, csc1200).
takes_course(ian, csc2200).
takes_course(ian, csc2209).
takes_course(ian, csc2207).
takes_course(ian, csc2210).
takes_course(ian, bis1206).

takes_course(sheena, csc1200).
takes_course(sheena, csc2200).
takes_course(sheena, csc2209).
takes_course(sheena, csc2207).
takes_course(sheena, csc2210).
takes_course(sheena, bis1206).

takes_course(jesse, csc1200).
takes_course(jesse, csc2200).
takes_course(jesse, csc2209).
takes_course(jesse, csc2207).
takes_course(jesse, csc2210).
takes_course(jesse, bis1206).

takes_course(sharif, csc1200).
takes_course(sharif, csc2200).
takes_course(sharif, csc2209).
takes_course(sharif, csc2207).
takes_course(sharif, csc2210).
takes_course(sharif, bis1206).

takes_course('kabanda-sharif', csc1200).
takes_course('kabanda-sharif', csc2200).
takes_course('kabanda-sharif', csc2209).
takes_course('kabanda-sharif', csc2207).
takes_course('kabanda-sharif', csc2210).
takes_course('kabanda-sharif', bis1206).

takes_course(collins, csc1200).
takes_course(collins, csc2200).
takes_course(collins, csc2209).
takes_course(collins, csc2207).
takes_course(collins, csc2210).
takes_course(collins, bis1206).

takes_course('mumbere-collins', csc1200).
takes_course('mumbere-collins', csc2200).
takes_course('mumbere-collins', csc2209).
takes_course('mumbere-collins', csc2207).
takes_course('mumbere-collins', csc2210).
takes_course('mumbere-collins', bis1206).

takes_course(duke, csc1200).
takes_course(duke, csc2200).
takes_course(duke, csc2209).
takes_course(duke, csc2207).
takes_course(duke, csc2210).
takes_course(duke, bis1206).

takes_course(timothy, csc1200).
takes_course(timothy, csc2200).
takes_course(timothy, csc2209).
takes_course(timothy, csc2207).
takes_course(timothy, csc2210).
takes_course(timothy, bis1206).

takes_course(bena, csc1200).
takes_course(bena, csc2200).
takes_course(bena, csc2209).
takes_course(bena, csc2207).
takes_course(bena, csc2210).
takes_course(bena, bis1206).

takes_course(noowe, csc1200).
takes_course(noowe, csc2200).
takes_course(noowe, csc2209).
takes_course(noowe, csc2207).
takes_course(noowe, csc2210).
takes_course(noowe, bis1206).

takes_course(jjuuko, csc1200).
takes_course(jjuuko, csc2200).
takes_course(jjuuko, csc2209).
takes_course(jjuuko, csc2207).
takes_course(jjuuko, csc2210).
takes_course(jjuuko, bis1206).

takes_course(brian, csc1200).
takes_course(brian, csc2200).
takes_course(brian, csc2209).
takes_course(brian, csc2207).
takes_course(brian, csc2210).
takes_course(brian, bis1206).

takes_course(resty, csc1200).
takes_course(resty, csc2200).
takes_course(resty, csc2209).
takes_course(resty, csc2207).
takes_course(resty, csc2210).
takes_course(resty, bis1206).

takes_course(peter, csc1200).
takes_course(peter, csc2200).
takes_course(peter, csc2209).
takes_course(peter, csc2207).
takes_course(peter, csc2210).
takes_course(peter, bis1206).

takes_course(griffin, csc1200).
takes_course(griffin, csc2200).
takes_course(griffin, csc2209).
takes_course(griffin, csc2207).
takes_course(griffin, csc2210).
takes_course(griffin, bis1206).

takes_course(james, csc1200).
takes_course(james, csc2200).
takes_course(james, csc2209).
takes_course(james, csc2207).
takes_course(james, csc2210).
takes_course(james, bis1206).

takes_course(stewie, csc1200).
takes_course(stewie, csc2200).
takes_course(stewie, csc2209).
takes_course(stewie, csc2207).
takes_course(stewie, csc2210).
takes_course(stewie, bis1206).
takes_course(charlotte, csc1200).
takes_course(charlotte, csc2200).
takes_course(charlotte, csc2209).
takes_course(charlotte, csc2207).
takes_course(charlotte, csc2210).
takes_course(charlotte, bis1206).
takes_course(alan, csc1200).
takes_course(alan, csc2200).
takes_course(alan, csc2209).
takes_course(alan, csc2207).
takes_course(alan, csc2210).
takes_course(alan, bis1206).
takes_course('brian-griffin', csc1200).
takes_course('brian-griffin', csc2200).
takes_course('brian-griffin', csc2209).
takes_course('brian-griffin', csc2207).
takes_course('brian-griffin', csc2210).
takes_course('brian-griffin', bis1206).
takes_course(balijawa, csc1200).
takes_course(balijawa, csc2200).
takes_course(balijawa, csc2209).
takes_course(balijawa, csc2207).
takes_course(balijawa, csc2210).
takes_course(balijawa, bis1206).
takes_course(kabanda, csc1200).
takes_course(kabanda, csc2200).
takes_course(kabanda, csc2209).
takes_course(kabanda, csc2207).
takes_course(kabanda, csc2210).
takes_course(kabanda, bis1206).
takes_course(mumbere, csc1200).
takes_course(mumbere, csc2200).
takes_course(mumbere, csc2209).
takes_course(mumbere, csc2207).
takes_course(mumbere, csc2210).
takes_course(mumbere, bis1206).
takes_course('noowe-charlotte', csc1200).
takes_course('noowe-charlotte', csc2200).
takes_course('noowe-charlotte', csc2209).
takes_course('noowe-charlotte', csc2207).
takes_course('noowe-charlotte', csc2210).
takes_course('noowe-charlotte', bis1206).

teaches_course(rose, csc1200).
teaches_course(nakibuule, csc2200).
teaches_course(kizito, csc2209).
teaches_course(joseph, csc2207).
teaches_course(paddy, csc2210).
teaches_course('bit-wire', bis1206).
teaches_course(robert, csc1200).
teaches_course(john, csc2200).
teaches_course('rose-nakibuule', csc2209).
teaches_course('paddy-assimwe', csc2207).
teaches_course('joseph-semwogere', csc2210).
teaches_course('john-kizito', bis1206).
teaches_course('joseph-lwomwa', csc1200).

course(csc1200, logic_programming, 3).
course(csc2200, operating_systems, 4).
course(csc2209, systems_prgramming, 3).
course(csc2207, research_methodology, 3).
course(csc2210, automata_complexity_and_computability, 3).
course(bis1206, systems_analysis_and_design, 3).

student_score(ian, csc1200, 90).
student_score(ian, csc2200, 75).
student_score(ian, csc2209, 62).
student_score(ian, csc2207, 72).
student_score(ian, csc2210, 50).
student_score(ian, bis1206, 56).

student_score(sharif, csc1200, 50).
student_score(sharif, csc2200, 75).
student_score(sharif, csc2209, 82).
student_score(sharif, csc2207, 67).
student_score(sharif, csc2210, 60).
student_score(sharif, bis1206, 88).

student_score(jesse, csc1200, 87).
student_score(jesse, csc2200, 90).
student_score(jesse, csc2209, 65).
student_score(jesse, csc2207, 88).
student_score(jesse, csc2210, 65).
student_score(jesse, bis1206, 50).

student_score('kabanda-sharif', csc1200, 87).
student_score('kabanda-sharif', csc2200, 90).
student_score('kabanda-sharif', csc2209, 65).
student_score('kabanda-sharif', csc2207, 88).
student_score('kabanda-sharif', csc2210, 65).
student_score('kabanda-sharif', bis1206, 50).

student_score('mumbere-collins', csc1200, 89).
student_score('mumbere-collins', csc2200, 89).
student_score('mumbere-collins', csc2209, 89).
student_score('mumbere-collins', csc2207, 89).
student_score('mumbere-collins', csc2210, 89).
student_score('mumbere-collins', bis1206, 89).

student_score(noowe, csc1200, 87).
student_score(noowe, csc2200, 90).
student_score(noowe, csc2209, 65).
student_score(noowe, csc2207, 88).
student_score(noowe, csc2210, 65).
student_score(noowe, bis1206, 50).

student_score(jjuuko, csc1200, 45).
student_score(jjuuko, csc2200, 78).
student_score(jjuuko, csc2209, 66).
student_score(jjuuko, csc2207, 90).
student_score(jjuuko, csc2210, 67).
student_score(jjuuko, bis1206, 50).

student_score(resty, csc1200, 87).
student_score(resty, csc2200, 90).
student_score(resty, csc2209, 65).
student_score(resty, csc2207, 88).
student_score(resty, csc2210, 65).
student_score(resty, bis1206, 50).

student_score(sheena, csc1200, 90).
student_score(sheena, csc2200, 75).
student_score(sheena, csc2209, 62).
student_score(sheena, csc2207, 72).
student_score(sheena, csc2210, 50).
student_score(sheena, bis1206, 56).

student_score(charlotte, csc1200, 90).
student_score(charlotte, csc2200, 75).
student_score(charlotte, csc2209, 62).
student_score(charlotte, csc2207, 72).
student_score(charlotte, csc2210, 50).
student_score(charlotte, bis1206, 56).

student_score(bena, csc1200, 87).
student_score(bena, csc2200, 90).
student_score(bena, csc2209, 65).
student_score(bena, csc2207, 88).
student_score(bena, csc2210, 65).
student_score(bena, bis1206, 50).

student_score(brian, csc1200, 87).
student_score(brian, csc2200, 90).
student_score(brian, csc2209, 65).
student_score(brian, csc2207, 88).
student_score(brian, csc2210, 65).
student_score(brian, bis1206, 50).

student_score(alan, csc1200, 87).
student_score(alan, csc2200, 90).
student_score(alan, csc2209, 65).
student_score(alan, csc2207, 88).
student_score(alan, csc2210, 65).
student_score(alan, bis1206, 50).

student_score(peter, csc1200, 87).
student_score(peter, csc2200, 90).
student_score(peter, csc2209, 65).
student_score(peter, csc2207, 88).
student_score(peter, csc2210, 65).
student_score(peter, bis1206, 50).

student_score(stewie, csc1200, 87).
student_score(stewie, csc2200, 90).
student_score(stewie, csc2209, 65).
student_score(stewie, csc2207, 88).
student_score(stewie, csc2210, 65).
student_score(stewie, bis1206, 50).

student_score('brian-griffin', csc1200, 87).
student_score('brian-griffin', csc2200, 90).
student_score('brian-griffin', csc2209, 65).
student_score('brian-griffin', csc2207, 88).
student_score('brian-griffin', csc2210, 65).
student_score('brian-griffin', bis1206, 50).

student_score(james, csc1200, 87).
student_score(james, csc2200, 90).
student_score(james, csc2209, 65).
student_score(james, csc2207, 88).
student_score(james, csc2210, 65).
student_score(james, bis1206, 50).

student_score(timothy, csc1200, 87).
student_score(timothy, csc2200, 90).
student_score(timothy, csc2209, 65).
student_score(timothy, csc2207, 88).
student_score(timothy, csc2210, 65).
student_score(timothy, bis1206, 50).

student_score(balijawa, csc1200, 87).
student_score(balijawa, csc2200, 90).
student_score(balijawa, csc2209, 65).
student_score(balijawa, csc2207, 88).
student_score(balijawa, csc2210, 65).
student_score(balijawa, bis1206, 50).

student_score(kabanda, csc1200, 87).
student_score(kabanda, csc2200, 90).
student_score(kabanda, csc2209, 65).
student_score(kabanda, csc2207, 88).
student_score(kabanda, csc2210, 65).
student_score(kabanda, bis1206, 50).

student_score(mumbere, csc1200, 87).
student_score(mumbere, csc2200, 90).
student_score(mumbere, csc2209, 65).
student_score(mumbere, csc2207, 88).
student_score(mumbere, csc2210, 65).
student_score(mumbere, bis1206, 50).

student_score(collins, csc1200, 45).
student_score(collins, csc2200, 78).
student_score(collins, csc2209, 66).
student_score(collins, csc2207, 90).
student_score(collins, csc2210, 67).
student_score(collins, bis1206, 50).

student_score('noowe-charlotte', csc1200, 87).
student_score('noowe-charlotte', csc2200, 90).
student_score('noowe-charlotte', csc2209, 65).
student_score('noowe-charlotte', csc2207, 88).
student_score('noowe-charlotte', csc2210, 65).
student_score('noowe-charlotte', bis1206, 50).

course_belongs_to_department(csc1200, computer_science_department).
course_belongs_to_department(csc2200, computer_science_department).
course_belongs_to_department(csc2209, computer_science_department).
course_belongs_to_department(csc2207, computer_science_department).
course_belongs_to_department(csc2210, computer_science_department).
course_belongs_to_department(bis1206, information_systems_department).

student_belongs(Student, Department) :- student(Student), takes_course(Student, Course), course_belongs_to_department(Course, Department).

member_of_department(Lecturer, Department) :- lecturer(Lecturer), teaches_course(Lecturer, Course), course_belongs_to_department(Course, Department).

belong_to_same_department(S, L) :- student_belongs(S, D), member_of_department(L, D).

belong_to_two_departments(L, X, Y) :- member_of_department(L, X), member_of_department(L, Y), dif(X, Y).

% Grade points use the recorded score, with 80/70/60/50 as boundaries.
get_student_grade(Student, Code, Grade) :-
    student_score(Student, Code, Score),
    between(0, 100, Score),
    ( Score >= 80 -> Grade = 5
    ; Score >= 70 -> Grade = 4
    ; Score >= 60 -> Grade = 3
    ; Score >= 50 -> Grade = 2
    ; Grade = 1
    ).

% Credit-weighted average of recorded grades; fails without matched scores.
compute_student_GP(Student, Average) :-
    student(Student),
    findall(Weighted-Credits,
            ( get_student_grade(Student, Code, Grade),
              takes_course(Student, Code),
              course(Code, _, Credits),
              Weighted is Grade * Credits
            ), Pairs),
    Pairs = [_|_],
    findall(W, member(W-_, Pairs), WeightedValues),
    findall(C, member(_-C, Pairs), CreditValues),
    sum_list(WeightedValues, TotalWeighted),
    sum_list(CreditValues, TotalCredits),
    Average is TotalWeighted / TotalCredits.
