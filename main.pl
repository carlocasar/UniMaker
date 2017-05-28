:- use_module(library(lists)).
:-include(displaySol).
:-include(sample).

% :- initialization(use_module(library(lists))).

  
steps(0,Path,Path,_).
steps(K,Path,L,MyListLectures):-
  course(Name,Group,ListLectures),
  noSameCourseAndNoReapetedSolutions(Path,Name),  
  intersection(ListLectures,MyListLectures,ListIntersection), 
  ListIntersection = [],
  union(ListLectures,MyListLectures,L3), 
  K1 is K - 1,
  K1 >= 0,
  steps(K1,[[Name,Group]|Path],L,L3).
  
	
main:-
  numAsignatures(Num),
  steps(Num,[],Path,[]), 
  displaySchedule(Path),
  nl,
  fail.
	
noSameCourseAndNoReapetedSolutions([],_).
noSameCourseAndNoReapetedSolutions([NameFirst|_],Name):- checkElem(NameFirst,Name).
  
  
checkElem([NameFirst|_], Name):- Name @< NameFirst.
