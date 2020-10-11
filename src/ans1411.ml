(* #use "ans85.ml" ;; *)
(* #use "ans121.ml" ;; *)
let ekimei_list = [ 
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}; 
{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"}; 
{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}; 
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"}; 
{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"}; 
{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"} 
] 

(*ekimei_t型のリストを受け取ったらeki_t型のリストを作成*)
(*make_eki_list : ekimei_t list -> eki_t list *)
let make_eki_list lst = 
  List.map (fun {kanji = kj; kana = ka; romaji = rm ; shozoku = sh} ->
              {namae = kj; saitan_kyori = infinity; temae_list = []}) 
              lst

(*test*)
let test1 = make_eki_list [] = [] 
let test2 = make_eki_list ekimei_list = [ 
{namae="池袋"; saitan_kyori = infinity; temae_list = []}; 
{namae="新大塚"; saitan_kyori = infinity; temae_list = []}; 
{namae="茗荷谷"; saitan_kyori = infinity; temae_list = []}; 
{namae="後楽園"; saitan_kyori = infinity; temae_list = []}; 
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []}; 
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []} 
] 

let eki_list = [ 
  {namae="池袋"; saitan_kyori = infinity; temae_list = []}; 
  {namae="新大塚"; saitan_kyori = infinity; temae_list = []}; 
  {namae="茗荷谷"; saitan_kyori = infinity; temae_list = []}; 
  {namae="後楽園"; saitan_kyori = infinity; temae_list = []}; 
  {namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []}; 
  {namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []} 
] 

(*eki_t型のリストと起点を受け取ったら初期化されたリストを返す*)
(*shokika : eki_t -> string -> eki_t list*)
let shokika lst kiten = 
  List.map (fun ({namae = kj; saitan_kyori = sai; temae_list = tem} as first) -> 
              if kj = kiten 
                then {namae = kj; saitan_kyori = 0.; temae_list = [kj]} 
                else first) 
              lst

(*test*)
let test3 = shokika [] "茗荷谷" = [] 
let test4 = shokika eki_list "茗荷谷" = [ 
{namae="池袋"; saitan_kyori = infinity; temae_list = []}; 
{namae="新大塚"; saitan_kyori = infinity; temae_list = []}; 
{namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]}; 
{namae="後楽園"; saitan_kyori = infinity; temae_list = []}; 
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []}; 
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []} 
] 