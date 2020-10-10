(* 偶数かどうか判定 *)
(* mod2_0 : int -> bool *)
let mod2_0 x = x mod 2 = 0

(* 関数evenをfilterで定義する *)
(* even : int list -> int list *)
let even lst = List.filter mod2_0 lst

(*test*) 
let test1 = even [] = []
let test2 = even [1; 2; 3] = [2]
let test3 = even [2; 4; 6; 8] = [2; 4; 6; 8]