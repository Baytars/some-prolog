:- include("./anatomy.pl").
:- include("./demo.pl").
% import other source files, like more knowledge base.
:- initialization main.
% informs the interpreter which function to begin with, or rather, which function the entry is.

belongs_to('阿司匹林','解热镇痛药').
% knowledge base

main :-
    % swipl -q *.pl Arg_1 Arg_2 (Arg_3 ...)
    % Use -q flag to mute introduction of SWI-Prolog and make us see the output of our program directly.
    % There MUST be at least two arguments to prevent Initialization Failure when input more than one argument by accident.
    % Just to prevent falling into the hell of SWI-Prolog REPL.
    % Arguments apart from Arg_1 will be separated from Arg_1 and discarded later.
    current_prolog_flag(argv, Argv),
    % get parameters from command-line for query
    % Argv = [ Arg_1, Arg_2(, Arg3, ...) ]
    [ A | B ] = Argv,
    % Argv is known while A and B is not yet known.
    % After solving this equation, we got A = Arg_1, B = (the rest of the arguments).
    % This equals to splitting.
    loves(A,C),
    % A is known while C is not yet known.
    % After solving this equation successfully, we got the value of C.
    % Otherwise we got Initialization Failure, which got us in SWI-Prolog's REPL hell. Be careful!
    Couple = [A,C],
    % A and C is known while Couple is not yet known.
    % After solving this equation, we got the value of Couple, which is a list.
    % This is equal to combination.
    format("~w loves ~w", Couple), nl,
    % The function format() is able to print variable values in a list one by one, ONE BY ONE!, with only one parameter can be provided.
    % For a variable like Couple with data type of list, if you want to see more elements being printed, use multiple ~w like above.
    % If you want to see what B, with uncertain number of elements is, never use format(). Use write() to print all, e.g. write(B).
    % Otherwise, how many "~w"s there are in template string, how many elements are to be printed.
    % ~w stands for "Write (the next parameter)", which is the function of write().
    % Both format() and write() support the use of \n. Alternatively, you can use nl as above. nl stands for "new line".
    format("~i", B),
    % Well, there is one variable that has not been used and SWI-Prolog will inform us in command-line output with "Warning: Singleton variables: [B]".
    % That forces us to make full use of all variables we produced. But I wanted to discard B. What should I do to prevent that warning from polluting my output?
    % Use format("~i", B), which allegingly prints B but will show nothing (ignore) in command-line output. Both we and the SWI-Prolog linter can now rest.
    halt(0).
    % Never use "." until the end of the program, where "halt(0)." terminates this script. Before this, keep using comma ",".
    % OK, we can now query something from command-line using parameters without getting in SWI-Prolog REPL.
    % This is essential for us to integrate Linux Bash and Prolog.
    % Painful experience! I may know the reason why it didn't prevail.
    % It really confuses programmers who are accustomed to getting answer directly from function calculation instead of asking the computer questions like a fool.
    % Remember, strings beginning with capital letters is variables, and can be assigned values after writing down equations, not necessarily using equal signs "=".
