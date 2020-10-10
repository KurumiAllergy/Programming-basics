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

(* 血液型がA型か調べる *)
(* is_A : gakusei_t -> bool *)
let is_A gakusei = match gakusei with
| {namae = na; tensuu = ten; seiseki = sei} -> sei = "A" 

(* A型の人数を返す *)
(* count_A : gakusei_t list -> int *)
let count_A lst = List.length (List.filter is_A lst)

(* test *)
let test1 = count_A lst1 = 0
let test1 = count_A lst2 = 0
let test1 = count_A lst3 = 1
let test1 = count_A lst4 = 2