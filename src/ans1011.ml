(* #use "ans87.ml" ;; *)
(* #use "ans910.ml" ;; *)
(*漢字の駅名２つと駅間リストを受け取ると、その２駅間の距離を返す。*)
(*get_ekikan_kyori : String -> String -> ekikan_t list -> float*)
let rec get_ekikan_kyori eki1 eki2 lst = match lst with
    [] -> infinity
    |{kiten = kit; shuten = shu; keiyu = kei; kyori = kyo; jikan = jik} :: rest -> 
        if (kit = eki1 && shu = eki2) || (shu = eki1 && kit = eki2) then kyo else get_ekikan_kyori eki1 eki2 rest

(*test*)
let test1 = get_ekikan_kyori "茗荷谷" "新大塚" global_ekikan_list = 1.2
let test2 = get_ekikan_kyori "茗荷谷" "池袋" global_ekikan_list = infinity
let test3 = get_ekikan_kyori "東京" "大手町" global_ekikan_list = 0.6