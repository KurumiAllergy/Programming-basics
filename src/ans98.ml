(* #use "ans83.ml";; *)
(*目的 : person_t型のリストから乙女座の人の名前のみからなるリストを作成*)
(*otomeza : person_t list -> string list*)
let rec otomeza lst = match lst with
    [] -> []
    | ({name = n; shintyo = shi; taiju = tai; tanjo = tan; hi = h; ketsueki = ketsu}) :: rest
        -> if tan = 8 then if 23 <= h && h <= 31 then n :: otomeza rest else otomeza rest
            else if tan = 9 then if 1 <= h && h <= 23 then n :: otomeza rest else otomeza rest
            else otomeza rest

(*test*)
let test1 = otomeza [] = []

let test2 = otomeza
[{ 
  name = "田中"; 
  shintyo = 1.63; 
  taiju = 55.0; 
  tanjo = 8; 
  hi = 30; 
  ketsueki = "B" 
}] = ["田中"]

let test3 = otomeza 
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
}] = ["浅井"]

let test4 = otomeza 
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
}] = ["浅井"; "浅井"]