-module(delete).
-export([delete_all/2]).
delete_all(X, []) -> [];
delete_all(X, [X|T]) -> delete_all(X, T);
delete_all(X, [Y|T]) -> [Y|delete_all(X, T)].
