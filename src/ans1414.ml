(* infix関数を用いて文字列のリストから、その中の要素を前から順に接合した文字列を返す *)
(* concat : String list -> String *)
let concat lst = List.fold_right (^) lst ""

(* test *)
let test1 = concat [] = ""
let test2 = concat ["一"; "二"; "三"; "四"; "五"] = "一二三四五"
let test3 = concat ["本日"; "天気"; "晴朗"; "なれども"; "波高し"] = "本日天気晴朗なれども波高し"