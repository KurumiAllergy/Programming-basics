(* 学生一人分のデータ *)
type gakusei_t = { 
  namae : string;       (* 名前 *) 
  tensuu : int;         (* 点数 *) 
  seiseki : string;     (* 成績 *) 
} 
 
(* gakusei_t list 型のデータの例 *) 
let lst1 = [] 
let lst2 = [{namae = "asai"; tensuu = 70; seiseki = "B"}] 
let lst3 = [{namae = "asai"; tensuu = 70; seiseki = "B"}; 
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}] 
let lst4 = [{namae = "yoshida"; tensuu = 80; seiseki = "A"}; 
            {namae = "asai"; tensuu = 70; seiseki = "B"}; 
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}]

(* リストの数字が偶数の要素だけ抽出 *)
(* even : int list -> int list *)
let even lst = List.filter (fun x -> x mod 2 = 0) lst

(*test*) 
let test1 = even [] = []
let test2 = even [1; 2; 3] = [2]
let test3 = even [2; 4; 6; 8] = [2; 4; 6; 8]

(* 成績がAの人数を調べる *)
(* count_A : gakusei_t list -> int *)
let count_A lst = 
    List.length 
      (List.filter (fun gakusei -> match gakusei with {namae = na; tensuu = te; seiseki = se} -> se = "A") lst)

(* test *)
let test4 = count_A lst1 = 0
let test5 = count_A lst2 = 0
let test6 = count_A lst3 = 1
let test7 = count_A lst4 = 2

(* 文字列のリストから、その中の要素を前から順に接合した文字列を返す *)
(* concat : String list -> String *)
let concat lst = 
    List.fold_right (fun first rest_result -> first ^ rest_result) lst ""

(* test *)
let test8 = concat [] = ""
let test9 = concat ["一"; "二"; "三"; "四"; "五"] = "一二三四五"
let test10 = concat ["本日"; "天気"; "晴朗"; "なれども"; "波高し"] = "本日天気晴朗なれども波高し"

(* gakusei_t型のリストを受け取り全員の得点合計を返す *)
(* gakusei_sum : gakusei_t list -> int *)
let gakusei_sum lst = 
    List.fold_right (fun first rest_result -> match first with
      {namae = na; tensuu = te; seiseki = se} -> te + rest_result) lst 0

(* test *)
let test11 = gakusei_sum lst1 = 0
let test12 = gakusei_sum lst2 = 70
let test13 = gakusei_sum lst3 = 155
let test14 = gakusei_sum lst4 = 235