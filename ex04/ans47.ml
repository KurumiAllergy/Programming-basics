(*鶴の数を与えられたら足の本数を返す*)
(*tsuru_no_ashi : int -> int*)
let tsuru_no_ashi tsuru = tsuru * 2

(*亀の数を与えられたら足の本数を返す*)
(*kame_no_ashi : int -> int*)
let kame_no_ashi kame = kame * 4

(*鶴と亀の数を与えられたら足の数の合計を返す*)
(*tsurukame_no_ashi : int -> int -> int*)
let tsurukame_no_ashi tsuru kame = tsuru_no_ashi tsuru + kame_no_ashi kame

(*test*)
let test1 = tsurukame_no_ashi 1 1 = 6
let test2 = tsurukame_no_ashi 3 5 = 26
let test3 = tsurukame_no_ashi 10 20 = 100
