(* #use "ans104.ml" ;; *)
(*gakusei_t型のリストを受け取ったら最高得点を取った人のレコードを返す*)
(*gakusei_max : gakusei_t -> list -> gakusei_t*)
let rec gakusei_max lst = match lst with
    [] -> {namae = ""; tensuu = min_int; seiseki = ""}
    | ({namae = na; tensuu = ten; seiseki = sei} as gakusei) :: rest -> 
        let max_rest = gakusei_max rest in 
            match max_rest with
            {namae = na_max; tensuu = ten_max; seiseki = sei_max} -> 
                if ten_max < ten then gakusei else max_rest

(*test*)
let test1 = gakusei_max lst1 = {namae = ""; tensuu = min_int; seiseki = ""}
let test2 = gakusei_max lst2 = gakusei2
let test3 = gakusei_max lst3 = gakusei3
let test4 = gakusei_max lst5 = gakusei1