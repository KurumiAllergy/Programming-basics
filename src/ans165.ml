(* #use "ans85.ml";;    *)
(* #use "ans87.ml" ;;   *)
(* #use "ans99.ml";;    *)
(* #use "ans910.ml" ;;  *)
(* #use "ans1010.ml" ;; *)
(* #use "ans1011.ml" ;; *)
(* #use "ans121.ml" ;;  *)
(* #use "ans155.ml" ;;  *)
(* #use "ans164.ml" ;;  *)

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

(* 駅リストから終点のレコードを探す *)
(* find : string -> eki_t list -> eki_t *)
let rec find shuten eki_list = match eki_list with
  [] -> {namae = ""; saitan_kyori = infinity; temae_list = []}
  | ({namae = na; saitan_kyori = sa; temae_list = te} as first):: rest -> 
    if na = shuten then first else find shuten rest

(* 始点と終点の駅名を受け取ったら最短路を返す *)
(* dijkstra : string -> string -> eki_t *)
let dijkstra shiten shuten = 
  let shiten = romaji_to_kanji shiten global_ekimei_list in
  let shuten = romaji_to_kanji shuten global_ekimei_list in
  let eki_list = make_initial_eki_list global_ekimei_list shiten in
  let eki_list2 = dijkstra_main eki_list global_ekikan_list in
  find shuten eki_list2

(* テスト *) 
let test1 = dijkstra "shibuya" "gokokuji" = 
  {namae = "護国寺"; saitan_kyori = 9.8; 
   temae_list = 
     ["護国寺"; "江戸川橋"; "飯田橋"; "市ヶ谷"; "麹町"; "永田町"; 
      "青山一丁目"; "表参道"; "渋谷"]} 
let test2 = dijkstra "myogadani" "meguro" = 
  {namae = "目黒"; saitan_kyori = 12.7000000000000028; 
   temae_list = 
     ["目黒"; "白金台"; "白金高輪"; "麻布十番"; "六本木一丁目"; "溜池山王"; 
      "永田町"; "麹町"; "市ヶ谷"; "飯田橋"; "後楽園"; "茗荷谷"]} 