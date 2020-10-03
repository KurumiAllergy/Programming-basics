(*a^2+bx+cの係数a,b,cを与えられると判別式の値を返す*)
(*hanbetsushiki : float -> float -> float -> float*)
let hanbetsushiki a b c = b *. b -. 4.0 *. a *. c

(*判別式の値を与えられると解の個数を返す*)
(*kai_no_kosuu : float -> int*)
let kai_no_kosuu d = if d > 0.0 then 2 else 
                        if d = 0.0 then 1 else
                            if d < 0.0 then 0 else 0

(*test*)
let test1 = kai_no_kosuu (hanbetsushiki 1.0 5.0 4.0) = 2
let test2 = kai_no_kosuu (hanbetsushiki 2.0 (-4.0) 2.0) = 1
let test3 = kai_no_kosuu (hanbetsushiki 1.0 2.0 4.0) = 0