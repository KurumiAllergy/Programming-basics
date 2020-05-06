(*人の情報(身長, 体重, 誕生日, 月, 日)を表す型*)
type person_t = {
    name : string;      (*名前*)
    shintyo : float;    (*身長*)
    taiju : float;      (*体重*)
    tsuki : int;        (*誕生月*)
    hi : int;           (*誕生日*)
    ketsueki : string;  (*血液型*)
}

(*目的 : person_t型のデータを受け取ったら名前と血液型の文字列を返す*)
(*ketsueki_hyoji : peroon_t -> string*)
let ketsueki_hyoji person = match person with
    {name = n; shintyo = shi; taiju = tai; tsuki = tsu; hi = h; ketsueki = ketsu} ->
        n ^ "さんの血液型は" ^ ketsu ^ "型です"

let person1 = 
  {name = "浅井"; 
   shintyo = 1.72; 
   taiju = 58.5; 
   tsuki = 9; 
   hi = 17; 
   ketsueki = "A" 
} 
 
let person2 = { 
  name = "宮原"; 
  shintyo = 1.63; 
  taiju = 55.0; 
  tsuki = 6; 
  hi = 30; 
  ketsueki = "B" 
} 
 
let person3 = { 
  name = "中村"; 
  shintyo = 1.68; 
  taiju = 63.0; 
  tsuki = 6; 
  hi = 6; 
  ketsueki = "O" 
} 

(*test*)
let test1 = ketsueki_hyoji person1 = "浅井さんの血液型はA型です"
let test2 = ketsueki_hyoji person2 = "宮原さんの血液型はB型です"
let test3 = ketsueki_hyoji person3 = "中村さんの血液型はO型です"