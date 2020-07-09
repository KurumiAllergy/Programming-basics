type person_t = {
    name : string;
    shintyo : float;
    taiju : float;
    tanjo : int;
    hi : int;
    ketsueki : string;
}

let person1 = 
  {name = "浅井"; 
   shintyo = 1.72; 
   taiju = 58.5; 
   tanjo = 9; 
   hi = 17; 
   ketsueki = "A" 
} 
 
let person2 = { 
  name = "宮原"; 
  shintyo = 1.63; 
  taiju = 55.0; 
  tanjo = 6; 
  hi = 30; 
  ketsueki = "B" 
} 
 
let person3 = { 
  name = "中村"; 
  shintyo = 1.68; 
  taiju = 63.0; 
  tanjo = 6; 
  hi = 6; 
  ketsueki = "O" 
} 

let lst1 = [person1]
let lst2 = [person2]
let lst3 = [person1;person2;person3]
let lst4 = [person2;person1;person1]

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