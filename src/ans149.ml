(* #use "ans83.ml";; *)
(* persion_t型のリストを受け取り名前フィールドを取り出す*)
(* person_t -> string *)
fun person -> match person with
  {name = na; shintyo = sh; taiju = ti; tanjo = ta;hi = h;ketsueki = ke} -> na

(* test *)
let test1 = (fun person -> match person with
{name = na; shintyo = sh; taiju = ti; tanjo = ta;hi = h;ketsueki = ke} -> na) person1 = "浅井"

let test2 = (fun person -> match person with
{name = na; shintyo = sh; taiju = ti; tanjo = ta;hi = h;ketsueki = ke} -> na) person2 = "宮原"

let test3 = (fun person -> match person with
{name = na; shintyo = sh; taiju = ti; tanjo = ta;hi = h;ketsueki = ke} -> na) person3 = "中村"