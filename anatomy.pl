connect('左心房','左心室').
connect('右心房','右心室').
place(X) :- connect(X,_).
place(X) :- connect(_,X).
