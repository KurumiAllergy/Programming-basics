(* fとinitを受け取ったらリストの要素を左から順にfを施し込む *)
(* fold_left : ('a -> 'b -> 'a) -> 'a -> 'b list -> 'a  *)
let rec fold_left f init lst = match lst with
  [] -> init
  | first :: rest -> fold_left f (f init first) rest

let test1 = fold_left (+) 0 [1;2;3;4;5] = 15
let test2 = fold_left (-) 5 [1;3] = 1
let test3 = fold_left (-) 10 [] = 10