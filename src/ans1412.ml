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

(* ekimei_t型のリストを作成し、起点を受け取り初期化されたリストを返す *)
(* make_initial_eki_list : ekimei_t list -> string -> eki_t list *)
let make_initial_eki_list lst kiten = 
  List.map (fun ({namae = kj; saitan_kyori = sai; temae_list = tem} as first) -> 
            if kj = kiten 
              then {namae = kj; saitan_kyori = 0.; temae_list = [kj]} 
              else first) 
            (List.map (fun {kanji = kj; kana = ka; romaji = rm ; shozoku = sh} ->
              {namae = kj; saitan_kyori = infinity; temae_list = []}) 
              lst)

(* test *)
let test3 = make_initial_eki_list [] "茗荷谷" = [] 
let test4 = make_initial_eki_list ekimei_list "茗荷谷" = [ 
{namae="池袋"; saitan_kyori = infinity; temae_list = []}; 
{namae="新大塚"; saitan_kyori = infinity; temae_list = []}; 
{namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]}; 
{namae="後楽園"; saitan_kyori = infinity; temae_list = []}; 
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []}; 
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []} 
] 