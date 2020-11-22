(* #use "ans87.ml";;   *)
(* #use "ans910.ml";;  *)
(* #use "ans1710.ml";; *)
(* #use "ans1711.ml";; *)
(* #use "ans1712.ml";; *)
(* #use "ans1713.ml";; *)

(* 駅名2つとekikan_tree_t型の木を受け取ったらその2駅間の距離を返す *)
(* get_ekikan_kyori : string -> string -> ekikan_tree_t -> float *)
let rec get_ekikan_kyori ekimei1 ekimei2 ekikan_tree = match ekikan_tree with
    Empty -> infinity
  | Node(left, eki, lst, right) -> 
    if ekimei1 < eki
      then get_ekikan_kyori ekimei1 ekimei2 left
    else if ekimei1 > eki
      then get_ekikan_kyori ekimei1 ekimei2 right
    else assoc ekimei2 lst
    
(* test *)
let global_ekikan_tree = inserts_ekikan Empty global_ekikan_list 
let test1 = get_ekikan_kyori "茗荷谷" "新大塚" global_ekikan_tree = 1.2 
let test2 = get_ekikan_kyori "茗荷谷" "池袋" global_ekikan_tree = infinity 
let test3 = get_ekikan_kyori "東京" "大手町" global_ekikan_tree = 0.6 