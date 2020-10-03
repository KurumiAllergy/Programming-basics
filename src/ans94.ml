(*目的 : 整数のリストを受け取ったらそのリストの長さを返す*)
(*length : int list -> int*)
let rec length lst = match lst with
    [] -> 0
    | first :: rest -> 1 + length rest

(*test*)
let test1 = length[] = 0
let test1 = length[4] = 1
let test1 = length[2; 4; 6; 7; 9; 3] = 6