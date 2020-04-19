(*目的 : 時間を受け取ると午前か午後か判定する*)
(*jikan : int -> string*)
let jikan x = 
    if x <= 12 then "午前" else "午後"

(*test*)
let test1 = jikan 5 = "午前"
let test2 = jikan 20 = "午後"
let test3 = jikan 12 = "午前"