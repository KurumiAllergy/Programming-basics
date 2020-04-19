(*a^2+bx+cの係数a,b,cを与えられると判別式の値を返す*)
(*hanbetsushiki : float -> float -> float -> float*)
let hanbetsushiki a b c = b *. b -. 4.0 *. a *. c

(*test*)
let test1 = hanbetsushiki 1.0 5.0 4.0 = 9.0
let test2 = hanbetsushiki 2.0 (-4.0) 2.0 = 0.0
let test3 = hanbetsushiki 1.0 2.0 4.0 = -12.0