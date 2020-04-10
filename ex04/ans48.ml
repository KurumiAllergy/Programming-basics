(*鶴と亀の数の合計と足の数の合計を与えられたら鶴の数を返す*)
(*tsurukame : int -> int -> int*)
let tsurukame tsurukame_sum ashi_sum = (tsurukame_sum * 4 - ashi_sum ) / 2

(*test*)
let test1 = tsurukame 2 6 = 1
let test2 = tsurukame 10 32 = 4
let test3 = tsurukame 25 80 = 10
