let bmi shintyo taiju = taiju /. (shintyo *. shintyo) ;;
let result = bmi 1.8 71.28 ;;

Printf.printf "%f" result ;;

(* ans45
-> val bmi : float -> float -> float = <fun>
*)