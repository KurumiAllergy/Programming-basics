(* #use "ans83.ml" ;; *)

let lst0 = []
let lst1 = [person1]
let lst2 = [person2]
let lst3 = [person1;person2;person3]
let lst4 = [person2;person1;person1]

(* person_t型のリストを受け取ったら人の名前のリストを返す *)
(* person_namae : person_t -> String *)
let name_return person = match person with
  {name = n; shintyo = shi; taiju = tai; tanjo = tsu; hi = h; ketsueki = ketsu} -> n

(* test *)
let test1 = name_return person1 = "浅井"
let test2 = name_return person2 = "宮原"

(* リスト要素にname_return関数を適用する *)
(* person_namae : person_t list -> string list*)
let person_namae lst = List.map name_return lst

(* test *)
let test3 = person_namae lst0 = []
let test4 = person_namae lst1 = ["浅井"]
let test5 = person_namae lst3 = ["浅井";"宮原";"中村"]
let test6 = person_namae lst4 = ["宮原";"浅井";"浅井"]