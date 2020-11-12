(* #use "ans87.ml" ;;  *)
(* #use "ans910.ml" ;; *)
(* #use "ans1011.ml" ;; *)
(* #use "ans121.ml" ;;  *)

(* 必要な処理を行った後、未確定の駅のリストvを返す *)
(* koushin -> eki_t list -> ekikan_t list -> eki_t list *)
let koushin p v ekikan = 
  List.map (fun q -> match (p, q) with 
    ({namae = pn; saitan_kyori = ps; temae_list = pt}, {namae = qn; saitan_kyori = qs; temae_list = qt}) -> 
      let kyori = get_ekikan_kyori pn qn ekikan in 
        if kyori = infinity 
          then q 
          else if ps +. kyori < qs 
            then {namae = qn; saitan_kyori = ps +. kyori; temae_list = qn :: pt} 
            else q) 
        v

(* 駅のリストと駅間のリストを受け取ったら最短距離と最短経路が正しく入ったリストを返す *)
(* dijkstra_main : eki_t list -> ekikan_t list -> eki_t list *)
let rec dijkstra_main eki_t ekikan_t = match eki_t with
  [] -> []
  | first :: rest -> let (saitan, nokori) = saitan_wo_bunri (first :: rest) in
                     let eki_t2 = koushin saitan nokori ekikan_t in
                     saitan :: dijkstra_main eki_t2 ekikan_t

(* 駅の例 *) 
let eki1 = {namae="池袋"; saitan_kyori = infinity; temae_list = []} 
let eki2 = {namae="新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]} 
let eki3 = {namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]} 
let eki4 = {namae="後楽園"; saitan_kyori = infinity; temae_list = []} 
 
(* 駅リストの例 *) 
let lst = [eki1; eki2; eki3; eki4] 
 
(* テスト *) 
let test1 = dijkstra_main [] global_ekikan_list = [] 
let test2 = dijkstra_main lst global_ekikan_list = 
  [{namae = "茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]}; 
   {namae = "新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]}; 
   {namae = "後楽園"; saitan_kyori = 1.8; temae_list = ["後楽園"; "茗荷谷"]}; 
   {namae = "池袋"; saitan_kyori = 3.; temae_list = ["池袋"; "新大塚"; "茗荷谷"]}] 