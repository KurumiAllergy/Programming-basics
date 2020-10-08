(* 関数をふたつ受け取ったら合成した関数を返す *)
(* compose : ('a -> 'b) -> ('c -> 'a) -> 'c -> 'b *)
let compose f1 f2 = let f y = f1 (f2 y) in f 

(* 受けった値に3を足す *)
(* add3 : int -> int *)
let add3 x = x + 3

(* 受け取った値に2を掛ける *)
(* time2 : int -> int *)
let time2 x = x * 2

(* test *)
let test1 = (compose time2 add3) 4 = 14 
