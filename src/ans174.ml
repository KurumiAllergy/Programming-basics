(* #use "ans172.ml";; *)
(* #use "ans173.ml";; *)

(* year_t型の値を受け取ったらseiza_t型の星座を返す *)
(* seiza : year_t -> seiza_t *)
let seiza year = match year with
    January (hi) -> if hi <= 19 then Capricorus else Aquarius 
  | February (hi) -> if hi <= 18 then Aquarius else Pisces 
  | March (hi) -> if hi <= 20 then Pisces else Aries 
  | April (hi) -> if hi <= 19 then Aries else Taurus 
  | May (hi) -> if hi <= 20 then Taurus else Gemini 
  | June (hi) -> if hi <= 21 then Gemini else Cancer 
  | July (hi) -> if hi <= 22 then Cancer else Leo 
  | August (hi) -> if hi <= 22 then Leo else Virgo 
  | September (hi) -> if hi <= 22 then Virgo else Libra 
  | October (hi) -> if hi <= 23 then Libra else Scorpius 
  | November (hi) -> if hi <= 21 then Scorpius else Sagittarius 
  | December (hi) -> if hi <= 21 then Sagittarius else Capricorus 

(* test *)
let test1 = seiza (January(1)) = Capricorus
let test2 = seiza (November(25)) = Sagittarius
let test3 = seiza (July(10)) = Cancer