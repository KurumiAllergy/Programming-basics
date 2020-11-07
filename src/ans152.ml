(* m,nの最大公約数をユークリッドの互除法を使って求める m > n > 0*)
(* gcd : int -> int -> int *)
let rec gcd m n = if n = 0 then m else gcd n (m mod n)

(* test *)
let test1 = gcd 10 5 = 5
let test2 = gcd 144 12 = 12
let test3 = gcd 21 7 = 7