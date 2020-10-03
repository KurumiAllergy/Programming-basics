(* #use "ans85.ml" ;; *)
(* #use "ans99.ml" ;; *)
(* #use "ans87.ml" ;; *)
(* #use "ans910.ml" ;; *)
(*駅名リストを受け取ったらその駅の漢字表記を文字列で返す*)
(*romaji_to_kanji : String -> ekimei_t list -> String*)
let rec romaji_to_kanji romaji_name ekimei_list = match ekimei_list with
  [] -> ""
  | {kanji = kj;kana = kn;romaji = ro;shozoku = sho} :: rest -> 
    if romaji_name = ro then kj else romaji_to_kanji romaji_name rest

(*漢字の駅名２つと駅間リストを受け取ると、その２駅間の距離を返す。*)
(*get_ekikan_kyori : String -> String -> ekikan_t list -> float*)
let rec get_ekikan_kyori eki1 eki2 lst = match lst with
  [] -> infinity
  |{kiten = kit; shuten = shu; keiyu = kei; kyori = kyo; jikan = jik} :: rest -> 
    if (kit = eki1 && shu = eki2) || (shu = eki1 && kit = eki2) then kyo else get_ekikan_kyori eki1 eki2 rest

(*ローマ字の駅名を２つ受け取ったら、その間の距離を表示。繋がっていない場合は存在しないと表示*)
(*kyori_wo_hyoji : String -> String -> String*)
let rec kyori_wo_hyoji rom1 rom2 = let kan1 = romaji_to_kanji rom1 global_ekimei_list in
    if kan1 = "" then rom1 ^ " という駅は存在しません"
    else let kan2 = romaji_to_kanji rom2 global_ekimei_list in 
      if kan2 = "" then rom2 ^ " という駅は存在しません"
      else let kyori = get_ekikan_kyori kan1 kan2 global_ekikan_list in 
        if kyori = infinity then kan1 ^ "と" ^ kan2 ^ "はつながっていません"
        else kan1 ^ "から" ^ kan2 ^ "までは " ^ string_of_float kyori ^ " キロです"

(*test*)
let test1 = kyori_wo_hyoji "myougadani" "shinotsuka" 
	    = "myougadani という駅は存在しません" 
let test2 = kyori_wo_hyoji "myogadani" "shinotsuka" 
	    = "茗荷谷から新大塚までは 1.2 キロです" 
let test3 = kyori_wo_hyoji "myogadani" "ikebukuro" 
	    = "茗荷谷と池袋はつながっていません" 
let test4 = kyori_wo_hyoji "tokyo" "ootemachi" 
	    = "ootemachi という駅は存在しません" 
let test5 = kyori_wo_hyoji "tokyo" "otemachi" 
	    = "東京から大手町までは 0.6 キロです" 
