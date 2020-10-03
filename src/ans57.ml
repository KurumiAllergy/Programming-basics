(*身長(m)と体重(kg)を与えられたらBMIを計算して返す*)
(*bmi : float -> float*)
let bmi shintyo taiju = taiju /. (shintyo *. shintyo) ;;

(*BMIを与えられると体型を返す*)
(*taikei : float -> string*)
let taikei x = if x < 18.5 then "やせ" else 
                    if 18.5 <= x && x < 25.0 then "標準" else
                        if 25.0 <= x && x < 30.0 then "肥満" else
                            if 30.0 < x then "高度肥満" else "無し"

(*test*)
let test1 = taikei (bmi 1.8 50.0) = "やせ" 
let test2 = taikei (bmi 1.8 70.0) = "標準"
let test3 = taikei (bmi 1.8 85.0) = "肥満"
let test4 = taikei (bmi 1.8 150.0) = "高度肥満"