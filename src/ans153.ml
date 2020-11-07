(* 2以上n以下の素数のリストを返す *)
(* sieve : int list -> int list *)
let rec sieve lst = match lst with
  [] -> []
  | first :: rest -> first :: sieve (List.filter(fun x -> x mod first <> 0) rest)

(* test *)
let test1 = sieve [2;3;4;5;6;7;8;9;10] = [2;3;5;7]
let test2 = sieve[2] = [2]

(* nを受け取ったら2以上n以下の整数のリストを作成 *)
let take_list n = let rec loop i = if i <= n then i :: loop(i + 1) else [] in loop 2

(* test *)
let test3 = take_list 5 = [2;3;4;5]
let test4 = take_list 1 = []

(* 自然数を受け取ったらそれ以下のリストを返す *)
(* prime : int -> int list *)
let prime n = sieve (take_list n)

(* test *)
let test5 = prime 5 = [2;3;5]
let test6 = prime 1 = []