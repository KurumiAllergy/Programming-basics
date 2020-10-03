(*整数の昇順リスト(lst)と整数(n)を受け取ったら、nを昇順となるようにlstに挿入する*)
(*insert : int list -> int -> int list*)
let rec insert lst n = match lst with
    [] -> [n]
    | first :: rest -> if first < n then first :: insert rest n else n :: lst

(*test*)
let test1 = insert [1;2;3;5;6] 4 = [1;2;3;4;5;6]
let test2 = insert [] 1 = [1]
let test3 = insert [3] 2 = [2;3]
let test4 = insert [2] 3 = [2;3]