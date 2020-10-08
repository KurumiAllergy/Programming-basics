(* 受け取った関数を2回適用する *)
(* twice : ('a -> 'a) -> 'a -> 'a *)
let twice f = let g y = f (f y) in g

(* teice関数を2回繰り返す *)
(* g : ('a -> 'a) -> 'a -> 'a*)
let g x = twice (twice x)

(* 1を足す *)
(* add1 : int -> int *)
let add1 x = x + 1

(* test *)
let test1 = (g add1) 3 = 7