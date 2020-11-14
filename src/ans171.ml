(* 年号を表す型 *)
type nengou_t = Meiji of int  (* 明治 *)
              | Taisho of int (* 大正 *)
              | Showa of int  (* 昭和 *)
              | Heisei of int (* 平成 *)
              | Reiwa of int  (* 令和 *)

(* 年号を受け取ったら西暦年を返す *)
(* to_seireki : nengou_t -> int *)
let to_seireki nengou = match nengou with
    Meiji (n) -> n + 1867
  | Taisho (n) -> n + 1911
  | Showa (n) -> n + 1925
  | Heisei (n) -> n + 1988
  | Reiwa (n) -> n + 2018

(* 誕生年と現在の年を受け取ったら年齢を返す *)
(* nenrei : nengou_t -> int *)
let nenrei tanjou genzai = to_seireki genzai - to_seireki tanjou

(* test *)
let test1 = nenrei (Heisei(13)) (Reiwa(2)) = 19
let test2 = nenrei (Showa(14)) (Reiwa(2)) = 81