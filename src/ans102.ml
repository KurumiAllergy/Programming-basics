(* #use "ans101.ml" ;; *)
(*整数のリストを受け取ったら昇順に整列して返す*)
(*ins_sort : int list -> int list*)
let rec ins_sort lst = match lst with
    [] -> []
    | first :: rest -> insert (ins_sort rest) first

(*test*)
let test1 = ins_sort [] = []
let test2 = ins_sort [0;1;2] = [0;1;2]
let test3 = ins_sort [5;2;9;6;4] = [2;4;5;6;9]
let test4 = ins_sort [9;8;7;6;5;4;3;2;1] = [1;2;3;4;5;6;7;8;9]