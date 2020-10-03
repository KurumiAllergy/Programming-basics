(* #use "ans83.ml" ;; *)
(*目的 : 各血液型の人が何人いるかを組みにして返す*)
(*ketsueki_shukei : person_t list -> int * int * int * int*)
let rec ketsueki_shukei lst = match lst with
  [] -> (0,0,0,0)
  | {name = n; shintyo = s; taiju = tai; tanjo = tan; hi = h; ketsueki = k} :: rest ->
    let (a,o,b,ab) = ketsueki_shukei rest in
    if k = "A" then (a+1,o,b,ab)
    else if k = "O" then (a,o+1,b,ab)
    else if k = "B" then (a,o,b+1,ab)
    else (a,o,b,ab)

(*目的 : 最も多かった血液型を返す*)
(*saita_ketsueki : person_t list -> String*)
let rec saita_ketsueki lst = match lst with
  [] -> ""
  | {name = n; shintyo = s; taiju = tai; tanjo = tan; hi = h; ketsueki = k} :: rest ->
  let (a,o,b,ab) = ketsueki_shukei lst in
  let saidai = max (max a o) (max b ab) in
  if saidai = a then "A"
  else if saidai = o then "O"
  else if saidai = b then "B"
  else "AB"

(*test*)
let test1 = saita_ketsueki lst1 = "A"
let test2 = saita_ketsueki lst2 = "B"
let test3 = saita_ketsueki lst3 = "A"
let test4 = saita_ketsueki lst4 = "A"