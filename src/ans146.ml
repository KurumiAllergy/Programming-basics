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

(* 学生リストlstのうち成績がseiseki0の人数を数える *)
(* count : gakusei_t lst -> int*)
let count lst seiseki0 =
  (* gakusei_tのseisekiがseiseki0か判定 *)
  (* is_seiseki0 : gakusei_t -> bool *)
  let is_seiseki0 gakusei = match gakusei with
    {namae = na; tensuu = ten; seiseki = se} -> se = seiseki0 in
      List.length (List.filter is_seiseki0 lst)

(* test *)
let test1 = count lst1 "A" = 0
let test2 = count lst2 "B" = 1
let test3 = count lst3 "A" = 1
let test4 = count lst4 "A" = 2