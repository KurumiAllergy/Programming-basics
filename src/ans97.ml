(* #use "ans83.ml";; *)
(*目的 : person_t型のリストを受けとったら血液型がA型の人の人数を返す*)
(*count_ketsueki_A : person_t list -> int*)
let rec count_ketsueki_A lst = match lst with
    [] -> 0
    | ({name = n; shintyo = shi; taiju = tai; tanjo = tan; hi = h; ketsueki = ketsu}) :: rest
        -> if ketsu = "A" 
                then 1 + count_ketsueki_A rest
                    else count_ketsueki_A rest

(*test*)
let test1 = count_ketsueki_A [] = 0

let test2 = count_ketsueki_A 
[{ 
  name = "宮原"; 
  shintyo = 1.63; 
  taiju = 55.0; 
  tanjo = 6; 
  hi = 30; 
  ketsueki = "B" 
}] = 0

let test3 = count_ketsueki_A 
[{ 
   name = "浅井"; 
   shintyo = 1.72; 
   taiju = 58.5; 
   tanjo = 9; 
   hi = 17; 
   ketsueki = "A" 
};{ 
  name = "宮原"; 
  shintyo = 1.63; 
  taiju = 55.0; 
  tanjo = 6; 
  hi = 30; 
  ketsueki = "B" 
}] = 1

let test4 = count_ketsueki_A 
[{ 
   name = "浅井"; 
   shintyo = 1.72; 
   taiju = 58.5; 
   tanjo = 9; 
   hi = 17; 
   ketsueki = "A" 
};{
   name = "浅井"; 
   shintyo = 1.72; 
   taiju = 58.5; 
   tanjo = 9; 
   hi = 17; 
   ketsueki = "A" 
}] = 2