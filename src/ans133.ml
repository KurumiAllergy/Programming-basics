(* f1 : 'a -> 'a 型を持つ関数 *)
let f1 x = x

(* f2 : 'a -> 'b -> 'a *)
let f2 x y = x

(* f3 : 'a -> 'b -> 'b *)
let f3 x y = y

(* f4 : 'a -> ('a -> 'b) -> b *)
let f4 x y = y x

(* f5 : ('a -> 'b) -> ('b -> 'c) -> 'a -> 'c *)
let f5 x y z = y (x z)