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
let lst0 = []
let lst1 = [person1]
let lst2 = [person2]
let lst3 = [person1;person2;person3]
let lst4 = [person2;person1;person1]

