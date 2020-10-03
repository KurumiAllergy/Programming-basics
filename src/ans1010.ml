(* #use "ans85.ml";; *)
(* #use "ans99.ml";; *)
(*駅名リストを受け取ったらその駅の漢字表記を文字列で返す*)
(*romaji_to_kanji : String -> ekimei_t list -> String*)
let rec romaji_to_kanji romaji_name ekimei_list = match ekimei_list with
  [] -> ""
  | {kanji = kj;kana = kn;romaji = ro;shozoku = sho} :: rest -> 
    if romaji_name = ro then kj else romaji_to_kanji romaji_name rest

(*test*)
let test1 = romaji_to_kanji "myogadani" global_ekimei_list = "茗荷谷"
let test2 = romaji_to_kanji "ikebukuro" global_ekimei_list = "池袋"
let test3 = romaji_to_kanji "kasumigaseki" global_ekimei_list = "霞ヶ関"