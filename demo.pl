% #!/usr/bin/swipl -f -q
% :- initialization main.
% main :-
%     current_prolog_flag(argv, Argv),
%     # format("Hello World! We've received argv: ~w\n", [Argv]).
%     format("Hello World!\n", [Argv]).
%     halt(0).

    loves('迦穆朗格','Ukio').
    loves('Ecway','shimberly').
    loves(shimberly,ecway).
    loves(kimberley,shimberly).
    loves(ukio,炤雷).
    lovers(X,Y):-loves(X,Y),loves(Y,X).
    belongs_to('I','you').
    belongs_to('我','集体').
    belongs_to('我','广西医科大学').
    belongs_to('我','天地').
    belongs_to('心理学','医学').
