(*鶴の数を与えられたら足の本数を返す*)
(*tsuru_no_ashi : int -> int*)
let tsuru_no_ashi tsuru = tsuru * 2

(*test*)
let test1 = tsuru_no_ashi 1 = 2
let test2 = tsuru_no_ashi 5 = 10
let test3 = tsuru_no_ashi 20 = 40

(*亀の数を与えられたら足の本数を返す*)
(*kame_no_ashi : int -> int*)
let kame_no_ashi kame = kame * 4

(*test*)
let test4 = kame_no_ashi 3 = 12
let test5 = kame_no_ashi 10 = 40
let test6 = kame_no_ashi 30 = 120
