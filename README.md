# Prolog and logic programming teaching datasets

A small, runnable introduction to **facts, rules, queries, recursion, backtracking, and constraints** in SWI-Prolog. The `lessons/` modules are the recommended starting point. The larger files in `archive/` are historical student datasets for later code review and data-cleaning exercises.

## Get started

1. Install [SWI-Prolog](https://www.swi-prolog.org/download/stable) and check that `swipl --version` works.
2. From the repository root, start the interactive interpreter:

   ```sh
   swipl
   ```

3. Load one module and enter a query. Type `;` for another answer, or press Return to stop. Type `halt.` to leave the interpreter.

   ```prolog
   ?- [lessons/course_catalog].
   true.

   ?- student(ian).
   true.

   ?- teaches_course(Who, csc1200).
   Who = rose.

   ?- setof(Code, takes_course(ian, Code), Codes).
   Codes = [csc1200, csc2200].
   ```

`[lessons/course_catalog].` is shorthand for consulting the file. Files loaded from different lessons are modules, so each lesson's public predicates are listed in its `:- module(...)` declaration. You can also use an explicit module prefix, such as `course_catalog:student(ian)`.

## Lesson path

| Lesson | File | Core ideas | Try this query |
| --- | --- | --- | --- |
| 1. Facts and unification | [`lessons/course_catalog.pl`](lessons/course_catalog.pl) | Atoms, variables, predicate arity, true/false | `course(Code, logic_programming, Credits).` |
| 2. Conjunction and joins | [`lessons/course_catalog.pl`](lessons/course_catalog.pl) | Shared variables, relational joins | `takes_course(ian, Code), teaches_course(Teacher, Code).` |
| 3. Rules and backtracking | [`lessons/course_catalog.pl`](lessons/course_catalog.pl) | Derived relations, multiple answers, `dif/2` | `classmate(ian, Other).` |
| 4. Recursion | [`lessons/family_tree.pl`](lessons/family_tree.pl) | Base case, recursive case, graph search | `ancestor(ada, Descendant).` |
| 5. Aggregation | [`lessons/course_catalog.pl`](lessons/course_catalog.pl) | `setof/3`, `findall/3`, weighted mean | `weighted_average(ian, Average).` |
| 6. Constraints | [`lessons/course_scheduling.pl`](lessons/course_scheduling.pl) | Finite domains, `#</2`, labeling | `course_pair(Logic, OperatingSystems).` |

The examples use small fictional records, so answers are easy to inspect. Each lesson file can be loaded on its own. In `course_catalog.pl`, `student_score(Student, Code, Score)` stores integer scores from 0 to 100; `grade_point(Score, Point)` maps 80–100 to 5, 70–79 to 4, 60–69 to 3, 50–59 to 2, and 0–49 to 1. `weighted_average/2` is the credit-weighted mean of **recorded** grade points, and fails for a student with no scores.

## A short classroom walkthrough

Load the course data with `?- [lessons/course_catalog].`, then ask:

```prolog
?- takes_course(sheena, Code).
Code = csc1200 ;
Code = bis1206.

?- takes_course(sheena, Code), course(Code, Title, Credits).
Code = csc1200,
Title = logic_programming,
Credits = 3 ;
Code = bis1206,
Title = systems_analysis_and_design,
Credits = 3.

?- student_grade(ian, csc1200, Point).
Point = 5.

?- grade_point(80, 5).
true.

?- setof(Department, student_department(ian, Department), Departments).
Departments = [computer_science].
```

The `;` in the displayed answers means “ask for another solution.” The exact prompt formatting may vary by SWI-Prolog version. A variable begins with an uppercase letter or underscore; lowercase names such as `ian` and `csc1200` are atoms. The number after a slash is a predicate's arity: `course/3` has three arguments. `student_department/2` can produce the same department through two courses, so `setof/3` collects a sorted list of distinct answers. A query that cannot be proved returns `false`; this is the closed-world behavior of these datasets, not proof that a real-world claim is false.

For recursion, load `?- [lessons/family_tree].` and compare `parent(ada, Child).` with `ancestor(ada, Descendant).` For constraints, load `?- [lessons/course_scheduling].` and try `course_pair(Logic, 3).`: the relation works with one slot already supplied.

## Student exercises

1. Find every course that both Ian and Sheena take. Write a query using two `takes_course/2` goals and one shared variable.
2. Find all lecturers teaching a course taken by Ian. Then collect unique lecturer names with `setof/3`.
3. Add one `parent/2` fact to `lessons/family_tree.pl`. Predict which `ancestor/2` answers change, reload with `make.`, and check.
4. Write a `teaches_student/2` rule in your own file using `teaches_course/2` and `takes_course/2`. Test it with both arguments bound and unbound.
5. Change the score for Ian's `csc2200` course. Predict his grade point and weighted average before querying them.
6. Extend `course_pair/2` to three courses using `library(clpfd)`. Give each slot a finite domain and require distinct slots.

Keep exercise answers in a separate file or branch so the reference examples stay useful. When a query has several valid answers, inspect all of them, not only the first.

## Tests and development

The examples have [PlUnit tests](tests/lesson_examples.plt) covering expected answers, failure cases, bound arguments, and reverse queries:

```sh
swipl -q -s tests/lesson_examples.plt -g run_tests -t halt
```

Inside SWI-Prolog, `make.` reloads edited files. To inspect a predicate, try `listing(course_catalog:student_department/2).` The [SWI-Prolog manual](https://www.swi-prolog.org/pldoc/doc_for?object=manual) and [The Power of Prolog](https://www.metalevel.at/prolog) are useful next references.

## Repository map and legacy data notes

| Path | Role |
| --- | --- |
| `lessons/` | Small, self-contained reference modules for lessons |
| `tests/lesson_examples.plt` | Runnable PlUnit checks for the reference modules |
| `archive/cocis_course_records.pl` | Original COCIS student and course dataset |
| `archive/mixed_examples_and_records.pl` | Mixed examples plus a variant of the course dataset |
| `archive/assignment_2/course_records.pl`, `archive/course_2/course_records.pl`, `archive/final_project/group_2_course_records.pl` | Historical assignment variants |

The legacy files are retained as source material, not as a single combined database. They repeat predicate names and contain inconsistencies useful for review exercises: names with hyphens such as `brian-griffin` are parsed as subtraction terms (quote them as `'brian-griffin'` if an atom is intended); identifiers like `15-211` are arithmetic terms, not course-code atoms; and some scores, enrollments, course codes, and hard-coded averages disagree. Consult one legacy file at a time in a fresh interpreter session. The clean teaching modules use simple atoms and internally consistent sample records.
