(*人の情報(名前, 身長, 体重, 月, 日, 血液型)を表す型*)
type person_t = {
    name : string;      (*名前*)
    shintyo : float;    (*身長*)
    taiju : float;      (*体重*)
    tsuki : int;        (*誕生月*)
    hi : int;           (*誕生日*)
    ketsueki : string;  (*血液型*)
}

(*目的 : person_t型のリストから乙女座の人の名前のみからなるリストを作成*)
(*otomeza : person_t list -> string list*)
let rec otomeza lst = match lst with
    [] -> []
    | ({name = n; shintyo = shi; taiju = tai; tsuki = tsu; hi = h; ketsueki = ketsu}) :: rest
        -> if tsu = 8 then if 23 <= h && h <= 31 then n :: otomeza rest else otomeza rest
            else if tsu = 9 then if 1 <= h && h <= 23 then n :: otomeza rest else otomeza rest
            else otomeza rest

(*test*)
let test1 = otomeza [] = []

let test2 = otomeza
[{ 
  name = "宮原"; 
  shintyo = 1.63; 
  taiju = 55.0; 
  tsuki = 6; 
  hi = 30; 
  ketsueki = "B" 
}] = []

let test3 = otomeza 
[{ 
   name = "浅井"; 
   shintyo = 1.72; 
   taiju = 58.5; 
   tsuki = 9; 
   hi = 17; 
   ketsueki = "A" 
};{ 
  name = "宮原"; 
  shintyo = 1.63; 
  taiju = 55.0; 
  tsuki = 6; 
  hi = 30; 
  ketsueki = "B" 
}] = ["浅井"]

let test4 = otomeza 
[{ 
   name = "浅井"; 
   shintyo = 1.72; 
   taiju = 58.5; 
   tsuki = 9; 
   hi = 17; 
   ketsueki = "A" 
};{
   name = "浅井"; 
   shintyo = 1.72; 
   taiju = 58.5; 
   tsuki = 9; 
   hi = 17; 
   ketsueki = "A" 
}] = ["浅井"; "浅井"]