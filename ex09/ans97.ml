(*人の情報(名前, 身長, 体重, 月, 日, 血液型)を表す型*)
type person_t = {
    name : string;      (*名前*)
    shintyo : float;    (*身長*)
    taiju : float;      (*体重*)
    tsuki : int;        (*誕生月*)
    hi : int;           (*誕生日*)
    ketsueki : string;  (*血液型*)
}

(*目的 : person_t型のリストを受けとったら血液型がA型の人の人数を返す*)
(*count_ketsueki_A : person_t list -> int*)
let rec count_ketsueki_A lst = match lst with
    [] -> 0
    | ({name = n; shintyo = shi; taiju = tai; tsuki = tsu; hi = h; ketsueki = ketsu}) :: rest
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
  tsuki = 6; 
  hi = 30; 
  ketsueki = "B" 
}] = 0

let test3 = count_ketsueki_A 
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
}] = 1

let test4 = count_ketsueki_A 
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
}] = 2