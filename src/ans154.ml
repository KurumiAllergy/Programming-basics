(* #use "ans87.ml" ;; *)
(* #use "ans910.ml" ;; *)
(* #use "ans1011.ml" ;; *)
(* #use "ans121.ml" ;;  *)

(* 最短距離最小の駅と最短距離最小の駅以外からなるリストの組を返す *)
(* saitan_wo_bunri : eki_t list -> eki_t list -> eki_t list *)
let rec saitan_wo_bunri eki_lst = match eki_lst with
  [] -> ({namae=""; saitan_kyori = infinity; temae_list = []},[])
  | first :: rest -> 
    let (p, v) = saitan_wo_bunri rest in
      match (first, p) with
        ({namae = fn; saitan_kyori = fs; temae_list = ft},{namae = sn; saitan_kyori = ss; temae_list = st}) ->
          if sn = "" then (first, v) 
          else if fs < ss then (first, p :: v)
          else (p,first :: v)

(* 駅の例 *) 
let eki1 = {namae="池袋"; saitan_kyori = infinity; temae_list = []} 
let eki2 = {namae="新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]} 
let eki3 = {namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]} 
let eki4 = {namae="後楽園"; saitan_kyori = infinity; temae_list = []} 

(* 駅リストの例 *) 
let lst = [eki1; eki2; eki3; eki4] 

(* test *)
let test1 = saitan_wo_bunri lst 