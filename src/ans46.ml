(* 目的 : 鶴の数に2を掛けた足の数を返す *)
(* tsuru_no_ashi : int -> int *)
let tsuru_no_ashi tsuru = tsuru * 2

(* test *)
let test1 = tsuru_no_ashi 0 = 0
let test2 = tsuru_no_ashi 1 = 2
let test3 = tsuru_no_ashi 5 = 10

(* 目的 : 亀の数に4を掛けた足の数を返す *)
(* tsuru_no_ashi : int -> int *)
let kame_no_ashi kame = kame * 4

(* test *)
let test1 = kame_no_ashi 0 = 0
let test2 = kame_no_ashi 1 = 4
let test3 = kame_no_ashi 5 = 20

(* 目的 : 鶴の数と亀の数を与えられたら足の数の合計を返す *)
(* tsurukame_no_ashi : int -> int -> int *)
let tsurukame_no_ashi tsuru kame = tsuru_no_ashi tsuru + kame_no_ashi kame

(* test *)
let test1 = tsurukame_no_ashi 0 0 = 0
let test1 = tsurukame_no_ashi 1 1 = 6
let test1 = tsurukame_no_ashi 5 3 = 22

(* 目的 : 鶴と亀の数の合計と足の数の合計を与えられたら鶴の数を返す *)
(* 方針 : まず全て亀だと仮定して足の合計を求める。仮定した場合の合計と与えられた合計の差が鶴の足の合計であり２で割ることにより鶴の数を求める *)
(* tsurukame : int -> int -> int *)
let tsurukame tsuru_kame tsuru_kame_ashi = (kame_no_ashi tsuru_kame - tsuru_kame_ashi) / 2

(* test *)
let test1 = tsurukame 0 0 = 0
let test2 = tsurukame 1 4 = 0
let test3 = tsurukame 1 2 = 1