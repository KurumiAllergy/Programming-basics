(* nから1までのリストを作る *)
(* enumerate : int -> int list *)
let rec enumerate n = if n = 0 then [] else n :: enumerate (n - 1) 

(* 1から受け取った自然数までの合計を返す *)
(* one_to_n : int -> int *)
let one_to_n m = List.fold_right (+) (enumerate m) 0

(* test *)
let test1 = one_to_n 5 = 15
let test2 = one_to_n 1 = 1
let test3 = one_to_n 3 = 6
