(* #use "ans104.ml" ;; *)
(*gakusei_t型のリストを受け取ったら正しい位置にgakuseiを挿入する*)
(*gakusei_insert : gakusei_t list -> gakusei_t -> gakusei_t list*)
let rec gakusei_insert lst n = match lst with
    [] -> [n]
    | ({namae = na; tensuu = ten; seiseki = sei} as gakusei) :: rest -> 
        match n with
        {namae = na2; tensuu = ten2; seiseki = sei2} ->
            if ten < ten2 then gakusei :: gakusei_insert rest n else n :: lst

(* テスト *) 
let test1 = gakusei_insert [] gakusei2 = [gakusei2] 
let test2 = gakusei_insert [gakusei4] gakusei3 = [gakusei4; gakusei3] 
let test3 = gakusei_insert [gakusei3] gakusei4 = [gakusei4; gakusei3] 
let test4 = gakusei_insert [gakusei6; gakusei5; gakusei3; gakusei2; gakusei1] 
			   gakusei4 
	    = [gakusei6; gakusei5; gakusei4; gakusei3; gakusei2; gakusei1] 

(*gakusei_t型のリストを受け取ったらtensuuを点数の順に並べる*)
(*gakusei_sort : gakutei_t list -> gakusei_t list*)
let rec gakusei_sort lst = match lst with
    [] -> []
    | first :: rest -> gakusei_insert (gakusei_sort rest) first

    (* テスト *) 
let test5 = gakusei_sort lst1 = [] 
let test6 = gakusei_sort lst2 = [gakusei2] 
let test7 = gakusei_sort lst3 = [gakusei4; gakusei3] 
let test8 = gakusei_sort lst4 = [gakusei4; gakusei3] 
let test9 = gakusei_sort lst5 
	    = [gakusei6; gakusei5; gakusei4; gakusei3; gakusei2; gakusei1] 