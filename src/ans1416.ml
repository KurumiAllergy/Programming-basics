(* nから1までのリストを作る *)
(* enumerate : int -> int list *)
let rec enumerate n = if n = 0 then [] else n :: enumerate (n - 1) 

(* 階乗を求める *)
(* fac : int -> int *)
let fac m = List.fold_right ( * ) (enumerate m) 1

(* test *)
let test1 = fac 3 = 6
let test2 = fac 10 = 3628800
let test3 = fac 5 = 120
