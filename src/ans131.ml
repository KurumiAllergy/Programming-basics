(* #use "ans83.ml" ;; *)
(* person_t型のリストを受け取ったら指定された血液型の人数を返す *)
(* count_ketsueki : person_t -> String -> int *)
let rec count_ketsueki lst ketsueki0 = match lst with
  [] -> 0
  | {name = n; shintyo = shi; taiju = tai; tanjo = tsu; hi = h; ketsueki = ketsu} :: rest ->
    if ketsu = ketsueki0 then 1 + count_ketsueki rest ketsueki0
    else count_ketsueki rest ketsueki0

(* test *)
let lst0 = []
let lst1 = [person1]
let lst2 = [person2]
let lst3 = [person1;person2;person3]
let lst4 = [person2;person1;person1]

let test1 = count_ketsueki lst0 "A" = 0
let test2 = count_ketsueki lst3 "A" = 1
let test3 = count_ketsueki lst4 "B" = 1
let test4 = count_ketsueki lst4 "A" = 2