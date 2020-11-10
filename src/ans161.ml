(* 整数のリストを受け取ったらそれまでの数の合計からなるリストを返す *)
(* sum_list : int list -> int list *)
let sum_list lst = 
  (* 先頭の要素からの合計を計算する *)
  (* total0はこれまでの要素の合計 *)
  (* total : int -> int *)
    let rec total lst total0 = match lst with
      [] -> []
      | first :: rest -> first + total0 :: total rest (first + total0)
in total lst 0

(* test *)
let test1 = sum_list [3;2;1;4] = [3;5;6;10]
let test2 = sum_list [0;1] = [0;1]