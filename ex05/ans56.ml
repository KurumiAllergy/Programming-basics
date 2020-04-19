(*a^2+bx+cの係数a,b,cを与えられると判別式の値を返す*)
(*hanbetsushiki : float -> float -> float -> float*)
let hanbetsushiki a b c = b *. b -. 4.0 *. a *. c

(*判別式の値を与えられると解の個数を返す*)
(*kai_no_kosuu : float -> int*)
let kai_no_kosuu d = if d > 0.0 then 2 else 
                        if d = 0.0 then 1 else
                            if d < 0.0 then 0 else 0

(*解の個数xを与えられたら虚数解であるかどうか判別する*)
let kyosuukai x = if x = 0 then "虚数解を持つ" else "虚数解を持たない"

(*test*)
let test1 = kyosuukai (kai_no_kosuu (hanbetsushiki 1.0 5.0 4.0)) = "虚数解を持たない"
let test2 = kyosuukai (kai_no_kosuu (hanbetsushiki 2.0 (-4.0) 2.0)) = "虚数解を持たない"
let test3 = kyosuukai (kai_no_kosuu (hanbetsushiki 1.0 2.0 4.0)) = "虚数解を持つ"