:- use_module(library(lists), [sum_list/2]).

character(achilles, iliad).
    male(achilles).
    male(telemachus).
    father(john, lily).
    father(ken, karen).
    father(ulysses, telemachus).
    mother(kathy, lily).
    mother(lily, bill).
    mother(penelope, telemachus).
    female(hellen).
    female(X) :- mother(X, _).
    son(X, Y) :- father(Y,X), male(X).
    son(X, Y) :- mother(Y,X), male(X).
    king(ulysses, ithaca, achaean).
    mylength([], 0).
    mylength([_ | L], N) :- mylength(L, N1), N is N1 + 1.

    child(X, Y) :- father(Y,X);mother(Y,X).
    directparent(X,Y) :- father(X,Y);mother(X,Y).
    grandparent(X, Y) :- directparent(X,Z), directparent(Z,Y).
    
    employee(20163,names(smith, john),address(35, pool_street,mukono), 30000,date_of_birth(30,9,1953)).
    employee(20164,names(rose, john),address(65, katanga_street,mukono), 35000,date_of_birth(12,1,1962)).
    employee(20165,names(ray, mary),address(135, hill_street,kampala), 40000,date_of_birth(1,1,1945)).
    employee(20166,names(black, jery),address(62, hill_street,kampala), 58000,date_of_birth(31,12,1938)).
    employee(20167,names(norman, robert),address(25, kalule_street,wakiso), 45000, date_of_birth(30,9,1929)).
    
    owns(wallace, book).
    owns(wendolene, book).
    owns(wallace, perfume).
    owns(wendolene, russell_the_sheep).
    owns(wallace, book(perfume,suesskind)).
    owns(wendolene, book(russell_the_sheep, scotton)).
    owns(gromit, book(wuthering_heights, author(emily,bronte))).
    owns(gromit, book(wuthering_heights, author(emily,bronte), 3129)).
    
    likes(wallace, toast).
    likes(wallace, cheese).
    likes(gromit, cheese).
    likes(gromit, cake).
    likes(wendolene, sheep).
    
    pop(usa,313).
    pop(italy,61).
    pop(uk,63).
    area(usa,9.826).
    area(italy,0.301).
    area(uk,0.243).
    
    density(X,Y) :- pop(X,P) , area(X,A), Y is P/A.
    is_in(X, [H|_]) :- X = H.
    is_in(X, [_|T]) :- is_in(X,T).
    prefix(S1, S2) :- atom(S1), atom(S2),name(S1,L1),name(S2,L2),append(L1, _,L2).


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

takes_course('brian-griffin', csc1200).
takes_course('brian-griffin', csc2200).
takes_course('brian-griffin', csc2209).
takes_course('brian-griffin', csc2207).
takes_course('brian-griffin', csc2210).
takes_course('brian-griffin', bis1206).
takes_course(alan, csc1200).
takes_course(alan, csc2200).
takes_course(alan, csc2209).
takes_course(alan, csc2207).
takes_course(alan, csc2210).
takes_course(alan, bis1206).
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

course(csc1200, logic_programming, 3, X) :- teaches_course(X, csc1200).
course(csc2200, operating_systems, 4, X) :- teaches_course(X, csc2200).
course(csc2209, systems_prgramming, 3, X) :- teaches_course(X, csc2209).
course(csc2207, research_methodology, 3, X) :- teaches_course(X, csc2207).
course(csc2210, automata_complexity_and_computability, 3, X) :- teaches_course(X, csc2210).
course(bis1206, systems_analysis_and_design, 3, X) :- teaches_course(X, bis1206).

student_score(ian, csc1200, 90).
student_score(ian, csc2200, 90).
student_score(ian, csc2209, 90).
student_score(ian, csc2207, 90).
student_score(ian, csc2210, 90).
student_score(ian, bis1206, 90).

student_score(jesse, csc1200, 90).
student_score(jesse, csc2200, 90).
student_score(jesse, csc2209, 90).
student_score(jesse, csc2207, 90).
student_score(jesse, csc2210, 90).
student_score(jesse, bis1206, 90).

student_score('kabanda-sharif', csc1200, 90).
student_score('kabanda-sharif', csc2200, 90).
student_score('kabanda-sharif', csc2209, 90).
student_score('kabanda-sharif', csc2207, 90).
student_score('kabanda-sharif', csc2210, 90).
student_score('kabanda-sharif', bis1206, 90).

student_score('mumbere-collins', csc1200, 89).
student_score('mumbere-collins', csc2200, 89).
student_score('mumbere-collins', csc2209, 89).
student_score('mumbere-collins', csc2207, 89).
student_score('mumbere-collins', csc2210, 89).
student_score('mumbere-collins', bis1206, 89).

student_score(noowe, csc1200, 90).
student_score(noowe, csc2200, 90).
student_score(noowe, csc2209, 90).
student_score(noowe, csc2207, 90).
student_score(noowe, csc2210, 90).
student_score(noowe, bis1206, 90).

student_score(jjuuko, csc1200, 90).
student_score(jjuuko, csc2200, 90).
student_score(jjuuko, csc2209, 90).
student_score(jjuuko, csc2207, 90).
student_score(jjuuko, csc2210, 90).
student_score(jjuuko, bis1206, 90).

student_score(resty, csc1200, 90).
student_score(resty, csc2200, 90).
student_score(resty, csc2209, 90).
student_score(resty, csc2207, 90).
student_score(resty, csc2210, 90).
student_score(resty, bis1206, 90).


student_score(sheena, csc1200, 90).
student_score(sheena, csc2200, 90).
student_score(sheena, csc2209, 90).
student_score(sheena, csc2207, 90).
student_score(sheena, csc2210, 90).
student_score(sheena, bis1206, 90).

student_score(bena, csc1200, 90).
student_score(bena, csc2200, 90).
student_score(bena, csc2209, 90).
student_score(bena, csc2207, 90).
student_score(bena, csc2210, 90).
student_score(bena, bis1206, 90).

student_score(brian, csc1200, 90).
student_score(brian, csc2200, 90).
student_score(brian, csc2209, 90).
student_score(brian, csc2207, 90).
student_score(brian, csc2210, 90).
student_score(brian, bis1206, 90).

student_score(alan, csc1200, 90).
student_score(alan, csc2200, 90).
student_score(alan, csc2209, 90).
student_score(alan, csc2207, 90).
student_score(alan, csc2210, 90).
student_score(alan, bis1206, 90).

student_score(peter, csc1200, 90).
student_score(peter, csc2200, 90).
student_score(peter, csc2209, 90).
student_score(peter, csc2207, 90).
student_score(peter, csc2210, 90).
student_score(peter, bis1206, 90).

student_score(stewie, csc1200, 90).
student_score(stewie, csc2200, 90).
student_score(stewie, csc2209, 90).
student_score(stewie, csc2207, 90).
student_score(stewie, csc2210, 90).
student_score(stewie, bis1206, 90).

student_score('brian-griffin', csc1200, 90).
student_score('brian-griffin', csc2200, 90).
student_score('brian-griffin', csc2209, 90).
student_score('brian-griffin', csc2207, 90).
student_score('brian-griffin', csc2210, 90).
student_score('brian-griffin', bis1206, 90).

student_score(james, csc1200, 90).
student_score(james, csc2200, 90).
student_score(james, csc2209, 90).
student_score(james, csc2207, 90).
student_score(james, csc2210, 90).
student_score(james, bis1206, 90).

student_score(timothy, csc1200, 90).
student_score(timothy, csc2200, 90).
student_score(timothy, csc2209, 90).
student_score(timothy, csc2207, 90).
student_score(timothy, csc2210, 90).
student_score(timothy, bis1206, 90).

student_score(balijawa, csc1200, 90).
student_score(balijawa, csc2200, 90).
student_score(balijawa, csc2209, 90).
student_score(balijawa, csc2207, 90).
student_score(balijawa, csc2210, 90).
student_score(balijawa, bis1206, 90).

student_score(kabanda, csc1200, 90).
student_score(kabanda, csc2200, 90).
student_score(kabanda, csc2209, 90).
student_score(kabanda, csc2207, 90).
student_score(kabanda, csc2210, 90).
student_score(kabanda, bis1206, 90).

student_score(mumbere, csc1200, 90).
student_score(mumbere, csc2200, 90).
student_score(mumbere, csc2209, 90).
student_score(mumbere, csc2207, 90).
student_score(mumbere, csc2210, 90).
student_score(mumbere, bis1206, 90).

student_score(collins, csc1200, 90).
student_score(collins, csc2200, 90).
student_score(collins, csc2209, 90).
student_score(collins, csc2207, 90).
student_score(collins, csc2210, 90).
student_score(collins, bis1206, 90).

student_score('noowe-charlotte', csc1200, 90).
student_score('noowe-charlotte', csc2200, 60).
student_score('noowe-charlotte', csc2209, 80).
student_score('noowe-charlotte', csc2207, 50).
student_score('noowe-charlotte', csc2210, 70).
student_score('noowe-charlotte', bis1206, 76).

course_belongs_to_department(csc1200, computer_science_department).
course_belongs_to_department(csc2200, computer_science_department).
course_belongs_to_department(csc2209, computer_science_department).
course_belongs_to_department(csc2207, computer_science_department).
course_belongs_to_department(csc2210, computer_science_department).
course_belongs_to_department(bis1206, information_systems_department).

student_belongs_to_department(X, Y) :- student(X), takes_course(X, Z), course_belongs_to_department(Z, Y).

member_of_department(X, Y) :- lecturer(X), teaches_course(X, Z), course_belongs_to_department(Z, Y).

% Compute the credit-weighted average from recorded, enrolled courses.
get_student_grade(Student, Code, Grade) :-
    student_score(Student, Code, Score),
    score_grade(Score, Grade).

score_grade(Score, Grade) :-
    between(0, 100, Score),
    ( Score >= 80 -> Grade = 5
    ; Score >= 70 -> Grade = 4
    ; Score >= 60 -> Grade = 3
    ; Score >= 50 -> Grade = 2
    ; Grade = 1
    ).

compute_student_GP(Student, Average) :-
    student(Student),
    findall(Weighted-Credits,
            ( student_score(Student, Code, Score),
              takes_course(Student, Code),
              once(course(Code, _, Credits, _)),
              score_grade(Score, Grade),
              Weighted is Grade * Credits
            ), Pairs),
    Pairs = [_|_],
    findall(W, member(W-_, Pairs), WeightedValues),
    findall(C, member(_-C, Pairs), CreditValues),
    sum_list(WeightedValues, TotalWeighted),
    sum_list(CreditValues, TotalCredits),
    Average is TotalWeighted / TotalCredits.
