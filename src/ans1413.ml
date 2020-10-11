(* #use "ans87.ml" ;; *)
(* #use "ans910.ml" ;; *)
(* #use "ans1011.ml" ;; *)
(* #use "ans121.ml" ;;  *)

(* 必要な処理を行った後、未確定の駅のリストvを返す *)
(* koushin -> eki_t list -> eki_t list *)
let koushin p v = 
          let f q = (fun p q -> match (p, q) with 
            ({namae = pn; saitan_kyori = ps; temae_list = pt}, {namae = qn; saitan_kyori = qs; temae_list = qt}) -> 
              let kyori = get_ekikan_kyori pn qn global_ekikan_list in 
                if kyori = infinity 
                  then q 
                  else if ps +. kyori < qs 
                    then {namae = qn; saitan_kyori = ps +. kyori; temae_list = qn :: pt} 
                    else q) p q in
                List.map f v

(* 駅の例 *) 
let eki1 = {namae="池袋"; saitan_kyori = infinity; temae_list = []} 
let eki2 = {namae="新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]} 
let eki3 = {namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]} 
let eki4 = {namae="後楽園"; saitan_kyori = infinity; temae_list = []} 

(* 駅リストの例 *) 
let lst = [eki1; eki2; eki3; eki4] 

let test1 = koushin eki2 [] = [] 
let test2 = koushin eki2 lst = 
 [{namae="池袋"; saitan_kyori = 3.0; temae_list = ["池袋"; "新大塚"; "茗荷谷"]}; 
  eki2; eki3; eki4] 