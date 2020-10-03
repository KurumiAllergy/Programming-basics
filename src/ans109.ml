(*二つのリストを受け取ったら長さが同じか判定する*)
(*equal_lengh : 'a list -> 'a list -> bool *)
let rec equal_lengh lst1 lst2 = match (lst1,lst2) with
  ([], []) -> true
  | ([], first2 :: rest2) -> false
  | (first1 :: rest1, []) -> false
  | (first1 :: rest1, first2 :: rest2) -> equal_lengh rest1 rest2

(*test*)
let test1 = equal_lengh [] [] = true
let test2 = equal_lengh [] [1] = false
let test3 = equal_lengh [1] [] = false
let test4 = equal_lengh [1;3;4] [2;4;2] = true
let test5 = equal_lengh [1;2] [1;2;3] = false