% Fakta

laki_laki(david).
laki_laki(jack).
laki_laki(john).
laki_laki(ray).
laki_laki(peter).
perempuan(amy).
perempuan(karen).
perempuan(liza).
perempuan(susan).
perempuan(mary).
orangtua(david, liza).
orangtua(david, john).
orangtua(amy, liza).
orangtua(amy, john).
orangtua(jack, susanaan).
orangtua(jack, ray).
orangtua(keren, susan).
orangtua(keren, susan).
orangtua(john, peter).
orangtua(john, mary).
orangtua(susan, peter).
orangtua(susan, mary).

% Aturan

anak(X, Y) :- orangtua(Y, X).
anakwanita(X, Y) :- orangtua(Y, X), perempuan(X).
anakpria(X, Y) :- orangtua(Y, X), laki_laki(X).
saudara(X, Y) :- orangtua(Z, X), orangtua(Z, Y), X \= Y.
kakek(X, Z) :- orangtua(X, Y), orangtua(Y, Z), laki_laki(X).
nenek(X, Z) :- orangtua(X, Y), orangtua(Y, Z), perempuan(X).
cucu(X, Z) :- orangtua(Z, Y), orangtua(Y, X).
cicit(X, Z) :- orangtua(Y, X), orangtua(Z, Y), laki_laki(X).
sepupu(X, Y) :- orangtua(A, X), orangtua(B, Y), saudara(A, B), X \= Y.
