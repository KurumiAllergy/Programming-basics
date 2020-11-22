(* #use "ans87.ml";;   *)
(* #use "ans910.ml";;  *)
(* #use "ans1710.ml";; *)
(* #use "ans1712.ml";; *)

(* ekikan_tree_t型の木とekikan_t list型の駅間のリストを受け取ったら駅間を全て挿入した木を返す *)
(* inserts_ekikan : ekikan_tree_t -> ekikan_t list -> ekikan_tree_t *)
let inserts_ekikan ekikan_tree ekikan_list = 
    List.fold_left insert_ekikan ekikan_tree ekikan_list 

(* test *)
  let test1 = inserts_ekikan Empty [ekikan1; ekikan2; ekikan3] = 
    Node (Node (Empty, "後楽園", [("茗荷谷", 1.8)], Empty), 
    "新大塚", [("茗荷谷", 1.2); ("池袋", 1.8)], 
          Node (Empty, 
          "池袋", [("新大塚", 1.8)], 
          Node (Empty, 
          "茗荷谷", [("後楽園", 1.8); ("新大塚", 1.2)], 
          Empty))) 
   