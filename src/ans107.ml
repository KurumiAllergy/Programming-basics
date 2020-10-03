
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

(*test*)
let test1 = ketsueki_shukei lst0 = (0,0,0,0)
let test2 = ketsueki_shukei lst1 = (1,0,0,0)
let test3 = ketsueki_shukei lst2 = (0,0,1,0)
let test4 = ketsueki_shukei lst3 = (1,1,1,0)
let test5 = ketsueki_shukei lst4 = (2,0,1,0)


