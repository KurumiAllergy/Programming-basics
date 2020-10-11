(* 整数を受け取るとその二乗から一を引いた数を返す *)
(* int -> int *)
fun x -> x * x - 1

(* test *)
let test1 = (fun x -> x * x - 1) 5 = 24
let test2 = (fun x -> x * x - 1) 3 = 8
let test3 = (fun x -> x * x - 1) 0 = -1