type gakusei_t = { 
  namae : string;       (* 名前 *) 
  tensuu : int;         (* 点数 *) 
  seiseki : string;     (* 成績 *) 
} 

let gakusei1 = {namae="nakamura"; tensuu=90; seiseki="A"} 
let gakusei2 = {namae="miyahara"; tensuu=80; seiseki="A"} 
let gakusei3 = {namae="sato"; tensuu=75; seiseki="B"} 
let gakusei4 = {namae="idehara"; tensuu=70; seiseki="B"} 
let gakusei5 = {namae="tsubata"; tensuu=65; seiseki="C"} 
let gakusei6 = {namae="asai"; tensuu=60; seiseki="C"} 

let lst1 = [] 
let lst2 = [gakusei2] 
let lst3 = [gakusei3; gakusei4] 
let lst4 = [gakusei4; gakusei3] 
let lst5 = [gakusei4; gakusei1; gakusei6; gakusei5; gakusei2; gakusei3] 

(*gakusei_t型のリストを受け取ったら最高得点を取った人のレコードを返す*)
(*gakusei_max : gakusei_t -> list -> gakusei_t*)
let rec gakusei_max lst = match lst with
    [] -> {namae = ""; tensuu = min_int; seiseki = ""}
    | ({namae = na; tensuu = ten; seiseki = sei} as gakusei) :: rest -> 
        match gakusei_max rest with 
            {namae = na_max; tensuu = ten_max; seiseki = sei_max} -> 
                if ten_max < ten then gakusei else gakusei_max rest

(*test*)
let test1 = gakusei_max lst1 = {namae = ""; tensuu = min_int; seiseki = ""}
let test2 = gakusei_max lst2 = gakusei2
let test3 = gakusei_max lst3 = gakusei3
let test4 = gakusei_max lst5 = gakusei1#use "ans105.ml";;