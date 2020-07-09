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

let lst1 = []
let lst2 = [person1]
let lst3 = [person2]
let lst4 = [person1;person2;person3]
let lst5 = [person2;person1;person1]

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
let test1 = ketsueki_shukei lst1 = (0,0,0,0)
let test2 = ketsueki_shukei lst2 = (1,0,0,0)
let test3 = ketsueki_shukei lst3 = (0,0,1,0)
let test4 = ketsueki_shukei lst4 = (1,1,1,0)
let test5 = ketsueki_shukei lst5 = (2,0,1,0)


